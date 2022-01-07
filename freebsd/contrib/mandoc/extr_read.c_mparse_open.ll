; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mparse_open(%struct.mparse* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mparse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mparse* %0, %struct.mparse** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 46)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.mparse*, %struct.mparse** %4, align 8
  %23 = getelementptr inbounds %struct.mparse, %struct.mparse* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.mparse*, %struct.mparse** %4, align 8
  %32 = getelementptr inbounds %struct.mparse, %struct.mparse* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @mandoc_asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = call i32 @open(i8* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* @errno, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.mparse*, %struct.mparse** %4, align 8
  %49 = getelementptr inbounds %struct.mparse, %struct.mparse* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %30
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
