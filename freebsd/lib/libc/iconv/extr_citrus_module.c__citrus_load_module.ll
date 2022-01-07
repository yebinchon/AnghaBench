; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_module.c__citrus_load_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_module.c__citrus_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@_pathI18nModule = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"PATH_I18NMODULE\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@_PATH_I18NMODULE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"lib%s\00", align 1
@I18NMODULE_MAJOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_load_module(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32*, i32** @_pathI18nModule, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = call i32 (...) @issetugid()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @strdup(i8* %27)
  store i32* %28, i32** @_pathI18nModule, align 8
  %29 = load i32*, i32** @_pathI18nModule, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %61

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %23, %19
  %35 = load i32*, i32** @_PATH_I18NMODULE, align 8
  store i32* %35, i32** @_pathI18nModule, align 8
  br label %36

36:                                               ; preds = %34, %33
  br label %37

37:                                               ; preds = %36, %2
  %38 = trunc i64 %14 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @snprintf(i8* %16, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @I18NMODULE_MAJOR, align 4
  store i32 %41, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %42 = call i8* @_findshlib(i8* %16, i32* %10, i32* %11)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %61

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @RTLD_LAZY, align 4
  %50 = call i8* @libc_dlopen(i8* %48, i32 %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = call i8* (...) @dlerror()
  %55 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64*, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %53, %45, %31
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @issetugid(...) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @_findshlib(i8*, i32*, i32*) #2

declare dso_local i8* @libc_dlopen(i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @dlerror(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
