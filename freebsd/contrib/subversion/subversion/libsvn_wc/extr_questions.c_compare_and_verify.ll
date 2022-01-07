; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_compare_and_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_compare_and_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i64, i32*, i64, i32, i32, i32, i32*)* @compare_and_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compare_and_verify(i32* %0, i32* %1, i8* %2, i64 %3, i32* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %26, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @svn_dirent_is_absolute(i8* %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %18, align 4
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %21, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @svn_wc__get_translate_info(i64* %23, i8** %24, i32** %25, i32* %26, i32* %42, i8* %43, i32* null, i32 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %23, align 8
  %53 = load i8*, i8** %24, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @svn_subst_translation_required(i64 %52, i8* %53, i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %27, align 4
  br label %60

58:                                               ; preds = %38
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %27, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = load i32, i32* %27, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @svn_stream_close(i32* %70)
  %72 = call i32* @svn_error_trace(i32 %71)
  store i32* %72, i32** %11, align 8
  br label %151

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %26, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %27, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** %14, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @svn_subst_read_specialfile(i32** %28, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %139

85:                                               ; preds = %76, %73
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* @APR_READ, align 4
  %88 = load i32, i32* @APR_OS_DEFAULT, align 4
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @svn_io_file_open(i32** %29, i8* %86, i32 %87, i32 %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %29, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32*, i32** %21, align 8
  %95 = call i32* @svn_stream_from_aprfile2(i32* %92, i32 %93, i32* %94)
  store i32* %95, i32** %28, align 8
  %96 = load i32, i32* %27, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %85
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %129, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %23, align 8
  %103 = load i64, i64* @svn_subst_eol_style_native, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %106, i8** %24, align 8
  br label %121

107:                                              ; preds = %101
  %108 = load i64, i64* %23, align 8
  %109 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i64, i64* %23, align 8
  %113 = load i64, i64* @svn_subst_eol_style_none, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %117 = load i32*, i32** %28, align 8
  %118 = call i32 @svn_stream_close(i32* %117)
  %119 = call i32* @svn_error_create(i32 %116, i32 %118, i32* null)
  store i32* %119, i32** %11, align 8
  br label %151

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i32*, i32** %28, align 8
  %123 = load i8*, i8** %24, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = load i32*, i32** %25, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = call i32* @svn_subst_stream_translated(i32* %122, i8* %123, i32 %124, i32* %125, i32 %126, i32* %127)
  store i32* %128, i32** %28, align 8
  br label %137

129:                                              ; preds = %98
  %130 = load i32*, i32** %16, align 8
  %131 = load i8*, i8** %24, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = load i32*, i32** %25, align 8
  %134 = load i32, i32* @TRUE, align 4
  %135 = load i32*, i32** %21, align 8
  %136 = call i32* @svn_subst_stream_translated(i32* %130, i8* %131, i32 %132, i32* %133, i32 %134, i32* %135)
  store i32* %136, i32** %16, align 8
  br label %137

137:                                              ; preds = %129, %121
  br label %138

138:                                              ; preds = %137, %85
  br label %139

139:                                              ; preds = %138, %79
  %140 = load i32*, i32** %16, align 8
  %141 = load i32*, i32** %28, align 8
  %142 = load i32*, i32** %21, align 8
  %143 = call i32 @svn_stream_contents_same2(i32* %22, i32* %140, i32* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %150, i32** %11, align 8
  br label %151

151:                                              ; preds = %139, %115, %67
  %152 = load i32*, i32** %11, align 8
  ret i32* %152
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_translate_info(i64*, i8**, i32**, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_translation_required(i64, i8*, i32*, i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_contents_same2(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
