; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_files_same_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_files_same_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i8*, i32*, i8*, i32*, i32*)* @files_same_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @files_same_p(i64* %0, i8* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @svn_wc_prop_list2(i32** %14, i32* %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64*, i64** %8, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @properties_same_p(i64* %29, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %127

38:                                               ; preds = %6
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %41 = call %struct.TYPE_3__* @svn_hash_gets(i32* %39, i32 %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %17, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %44 = call %struct.TYPE_3__* @svn_hash_gets(i32* %42, i32 %43)
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %18, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %47 = call %struct.TYPE_3__* @svn_hash_gets(i32* %45, i32 %46)
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %19, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @svn_subst_read_specialfile(i32** %15, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %62

56:                                               ; preds = %38
  %57 = load i8*, i8** %11, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @svn_stream_open_readonly(i32** %15, i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %115, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %115

71:                                               ; preds = %68, %65
  store i32* null, i32** %20, align 8
  store i8* null, i8** %21, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @svn_subst_eol_style_from_value(i64* %22, i8** %21, i32 %77)
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* @svn_subst_eol_style_native, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %83, i8** %21, align 8
  br label %96

84:                                               ; preds = %74
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* @svn_subst_eol_style_none, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %94 = call i32* @svn_error_create(i32 %93, i32* null, i32* null)
  store i32* %94, i32** %7, align 8
  br label %129

95:                                               ; preds = %88, %84
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %71
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @svn_subst_build_keywords3(i32** %20, i32 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32*, i32** %15, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32*, i32** %20, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32* @svn_subst_stream_translated(i32* %108, i8* %109, i32 %110, i32* %111, i32 %112, i32* %113)
  store i32* %114, i32** %15, align 8
  br label %115

115:                                              ; preds = %107, %68, %62
  %116 = load i8*, i8** %9, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @svn_stream_open_readonly(i32** %16, i8* %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i64*, i64** %8, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @svn_stream_contents_same2(i64* %121, i32* %122, i32* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %127

127:                                              ; preds = %115, %6
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %7, align 8
  br label %129

129:                                              ; preds = %127, %92
  %130 = load i32*, i32** %7, align 8
  ret i32* %130
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @properties_same_p(i64*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i64*, i8**, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_contents_same2(i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
