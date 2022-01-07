; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_trimdomain-nodomain_test.c_testit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_trimdomain-nodomain_test.c_testit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not ok %d - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"# %s -> %s (expected %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ok %d - %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testit(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  br label %17

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  br label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  %32 = call i32 @trimdomain(i8* %21, i32 %31)
  %33 = load i32, i32* @tests, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @tests, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load i32, i32* @tests, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  br label %51

47:                                               ; preds = %30
  %48 = load i32, i32* @tests, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @trimdomain(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
