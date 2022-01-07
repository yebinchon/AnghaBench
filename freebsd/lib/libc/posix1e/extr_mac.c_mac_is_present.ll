; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_is_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_is_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c".=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"security.mac.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".enabled\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"security.mac\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_is_present(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcspn(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %56

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 13, %23
  %25 = add i64 %24, 9
  %26 = trunc i64 %25 to i32
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %56

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcat(i8* %34, i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 5, i64* %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %41 = call i32 @sysctlnametomib(i8* %39, i32* %40, i64* %5)
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  br label %47

44:                                               ; preds = %1
  store i64 3, i64* %5, align 8
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %46 = call i32 @sysctlnametomib(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %45, i64* %5)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @errno, align 4
  switch i32 %51, label %53 [
    i32 128, label %52
    i32 129, label %52
  ]

52:                                               ; preds = %50, %50
  store i32 0, i32* %2, align 4
  br label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %52, %30, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
