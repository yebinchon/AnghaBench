; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__get_translate_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__get_translate_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_translate_info(i32* %0, i8** %1, i32** %2, i32* %3, i32* %4, i8* %5, i32* %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = call i32 @svn_dirent_is_absolute(i8* %22)
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i32*, i32** %17, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %10
  %28 = load i32*, i32** %15, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call i32 @svn_wc__get_actual_props(i32** %17, i32* %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %27, %10
  %35 = load i8**, i8*** %12, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %40 = call i8* @svn_prop_get_value(i32* %38, i32 %39)
  store i8* %40, i8** %21, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i8**, i8*** %12, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = call i32 @svn_subst_eol_style_from_value(i32* %41, i8** %42, i8* %43)
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32**, i32*** %13, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %51 = call i8* @svn_prop_get_value(i32* %49, i32 %50)
  store i8* %51, i8** %21, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8*, i8** %21, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %48
  %60 = load i32**, i32*** %13, align 8
  store i32* null, i32** %60, align 8
  br label %71

61:                                               ; preds = %54
  %62 = load i32**, i32*** %13, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32*, i32** %19, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = call i32 @svn_wc__expand_keywords(i32** %62, i32* %63, i8* %64, i32* null, i8* %65, i32 %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %61, %59
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %78 = call i8* @svn_prop_get_value(i32* %76, i32 %77)
  store i8* %78, i8** %21, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = icmp ne i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %14, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %72
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_actual_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i8*) #1

declare dso_local i32 @svn_wc__expand_keywords(i32**, i32*, i8*, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
