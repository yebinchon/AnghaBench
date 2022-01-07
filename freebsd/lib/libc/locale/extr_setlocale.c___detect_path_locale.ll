; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c___detect_path_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c___detect_path_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PathLocale = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"PATH_LOCALE\00", align 1
@ENCODING_LEN = common dso_local global i64 0, align 8
@CATEGORY_LEN = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_PATH_LOCALE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__detect_path_locale() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32*, i32** @_PathLocale, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %45

5:                                                ; preds = %0
  %6 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = call i32 (...) @issetugid()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* @ENCODING_LEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 1
  %19 = load i64, i64* @CATEGORY_LEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @PATH_MAX, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %24, i32* %1, align 4
  br label %46

25:                                               ; preds = %12
  %26 = load i8*, i8** %2, align 8
  %27 = call i32* @strdup(i8* %26)
  store i32* %27, i32** @_PathLocale, align 8
  %28 = load i32*, i32** @_PathLocale, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sext i32 %34 to i64
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @errno, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i64 [ %35, %33 ], [ %37, %36 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %1, align 4
  br label %46

41:                                               ; preds = %25
  br label %44

42:                                               ; preds = %9, %5
  %43 = load i32*, i32** @_PATH_LOCALE, align 8
  store i32* %43, i32** @_PathLocale, align 8
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44, %0
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %38, %23
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @issetugid(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
