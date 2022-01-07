; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_check_utility_compat.c_check_utility_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_check_utility_compat.c_check_utility_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@_ENV_UTIL_COMPAT = common dso_local global i32 0, align 4
@_PATH_UTIL_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_utility_compat(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @_ENV_UTIL_COMPAT, align 4
  %15 = call i8* @getenv(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %6, align 8
  %19 = trunc i64 %11 to i32
  %20 = call i32 @strlcpy(i8* %13, i8* %18, i32 %19)
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @_PATH_UTIL_COMPAT, align 4
  %23 = sub i64 %11, 1
  %24 = trunc i64 %23 to i32
  %25 = call i32 @readlink(i32 %22, i8* %13, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %13, i64 %30
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %28, %17
  %33 = getelementptr inbounds i8, i8* %13, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

38:                                               ; preds = %32
  store i8* %13, i8** %7, align 8
  br label %39

39:                                               ; preds = %48, %38
  %40 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

48:                                               ; preds = %42
  br label %39

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %47, %37, %27
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @readlink(i32, i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
