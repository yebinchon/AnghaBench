; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__internal_translated_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__internal_translated_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_FORCE_COPY = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_FORCE_EOL_REPAIR = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_USE_GLOBAL_TMP = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_translated_file(i8** %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8** %0, i8*** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @svn_dirent_is_absolute(i8* %28)
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @svn_dirent_is_absolute(i8* %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @svn_wc__get_translate_info(i64* %20, i8** %21, i32** %22, i32* %23, i32* %34, i8* %35, i32* null, i32 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %20, align 8
  %42 = load i8*, i8** %21, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @svn_subst_translation_required(i64 %41, i8* %42, i32* %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %9
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @SVN_WC_TRANSLATE_FORCE_COPY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = load i8**, i8*** %11, align 8
  store i8* %54, i8** %55, align 8
  br label %136

56:                                               ; preds = %48, %9
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @SVN_WC_TRANSLATE_FORCE_EOL_REPAIR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %27, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SVN_WC_TRANSLATE_USE_GLOBAL_TMP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  store i8* null, i8** %24, align 8
  br label %79

72:                                               ; preds = %56
  %73 = load i32*, i32** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %24, i32* %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i8*, i8** %24, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @svn_io_file_del_none, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32*, i32** %18, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @svn_io_open_unique_file3(i32* null, i8** %25, i8* %80, i32 %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32, i32* %27, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %26, align 4
  br label %121

99:                                               ; preds = %89
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* @svn_subst_eol_style_native, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %104, i8** %21, align 8
  br label %120

105:                                              ; preds = %99
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %26, align 4
  br label %119

111:                                              ; preds = %105
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* @svn_subst_eol_style_none, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %117 = call i32* @svn_error_create(i32 %116, i32* null, i32* null)
  store i32* %117, i32** %10, align 8
  br label %138

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %109
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i8*, i8** %12, align 8
  %123 = load i8*, i8** %25, align 8
  %124 = load i8*, i8** %21, align 8
  %125 = load i32, i32* %26, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = load i32, i32* %27, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i8*, i8** %17, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @svn_subst_copy_and_translate4(i8* %122, i8* %123, i8* %124, i32 %125, i32* %126, i32 %127, i32 %128, i32 %129, i8* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i8*, i8** %25, align 8
  %135 = load i8**, i8*** %11, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %121, %53
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %137, i32** %10, align 8
  br label %138

138:                                              ; preds = %136, %115
  %139 = load i32*, i32** %10, align 8
  ret i32* %139
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_translate_info(i64*, i8**, i32**, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_translation_required(i64, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_copy_and_translate4(i8*, i8*, i8*, i32, i32*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
