; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_newline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_IO_INCONSISTENT_EOL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i8*, i64*, i8*, i64, i32*, i32*, i32)* @translate_newline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translate_newline(i8* %0, i64 %1, i8* %2, i64* %3, i8* %4, i64 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64* %3, i64** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %20 = load i8*, i8** %15, align 8
  %21 = load i64, i64* %16, align 8
  %22 = call i32 @STRING_IS_EOL(i8* %20, i64 %21)
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %9
  %28 = load i32, i32* %19, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %13, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i64 @DIFFERENT_EOL_STRINGS(i8* %31, i64 %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @SVN_ERR_IO_INCONSISTENT_EOL, align 4
  %40 = call i32* @svn_error_create(i32 %39, i32* null, i32* null)
  store i32* %40, i32** %10, align 8
  br label %72

41:                                               ; preds = %30, %27
  br label %49

42:                                               ; preds = %9
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @strncpy(i8* %43, i8* %44, i64 %45)
  %47 = load i64, i64* %16, align 8
  %48 = load i64*, i64** %14, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i32*, i32** %17, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @translate_write(i32* %50, i8* %51, i64 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %18, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @memcmp(i8* %62, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %57
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32*, i32** %18, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %61, %49
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %10, align 8
  br label %72

72:                                               ; preds = %70, %38
  %73 = load i32*, i32** %10, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @STRING_IS_EOL(i8*, i64) #1

declare dso_local i64 @DIFFERENT_EOL_STRINGS(i8*, i64, i8*, i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @translate_write(i32*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
