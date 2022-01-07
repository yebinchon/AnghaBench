; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__internal_translated_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__internal_translated_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_FORCE_EOL_REPAIR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_translated_stream(i32** %0, i32* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @SVN_WC_TRANSLATE_FORCE_EOL_REPAIR, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %21, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @svn_dirent_is_absolute(i8* %29)
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @svn_dirent_is_absolute(i8* %32)
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @svn_wc__get_translate_info(i64* %18, i8** %19, i32** %20, i32* %16, i32* %35, i8* %36, i32* null, i32 %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %7
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32**, i32*** %9, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32* @svn_subst_read_specialfile(i32** %48, i8* %49, i32* %50, i32* %51)
  store i32* %52, i32** %8, align 8
  br label %140

53:                                               ; preds = %44
  %54 = load i32**, i32*** %9, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32* @svn_subst_create_specialfile(i32** %54, i8* %55, i32* %56, i32* %57)
  store i32* %58, i32** %8, align 8
  br label %140

59:                                               ; preds = %7
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32**, i32*** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @svn_stream_open_readonly(i32** %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %85

69:                                               ; preds = %59
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @APR_CREATE, align 4
  %72 = load i32, i32* @APR_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @APR_BUFFERED, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @APR_OS_DEFAULT, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @svn_io_file_open(i32** %22, i8* %70, i32 %75, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %22, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = call i32* @svn_stream_from_aprfile2(i32* %80, i32 %81, i32* %82)
  %84 = load i32**, i32*** %9, align 8
  store i32* %83, i32** %84, align 8
  br label %85

85:                                               ; preds = %69, %62
  %86 = load i64, i64* %18, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i64 @svn_subst_translation_required(i64 %86, i8* %87, i32* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %138

93:                                               ; preds = %85
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* @svn_subst_eol_style_native, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %101, i8** %19, align 8
  br label %117

102:                                              ; preds = %96
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %21, align 4
  br label %116

108:                                              ; preds = %102
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @svn_subst_eol_style_none, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %114 = call i32* @svn_error_create(i32 %113, i32* null, i32* null)
  store i32* %114, i32** %8, align 8
  br label %140

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %106
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i32**, i32*** %9, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i8*, i8** %19, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = call i32* @svn_subst_stream_translated(i32* %119, i8* %120, i32 %121, i32* %122, i32 %123, i32* %124)
  %126 = load i32**, i32*** %9, align 8
  store i32* %125, i32** %126, align 8
  br label %137

127:                                              ; preds = %93
  %128 = load i32**, i32*** %9, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = load i32*, i32** %20, align 8
  %133 = load i32, i32* @TRUE, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = call i32* @svn_subst_stream_translated(i32* %129, i8* %130, i32 %131, i32* %132, i32 %133, i32* %134)
  %136 = load i32**, i32*** %9, align 8
  store i32* %135, i32** %136, align 8
  br label %137

137:                                              ; preds = %127, %117
  br label %138

138:                                              ; preds = %137, %85
  %139 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %139, i32** %8, align 8
  br label %140

140:                                              ; preds = %138, %112, %53, %47
  %141 = load i32*, i32** %8, align 8
  ret i32* %141
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_translate_info(i64*, i8**, i32**, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_subst_create_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i64 @svn_subst_translation_required(i64, i8*, i32*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
