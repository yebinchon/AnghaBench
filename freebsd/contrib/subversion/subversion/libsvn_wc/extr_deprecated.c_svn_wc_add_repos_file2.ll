; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_add_repos_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_add_repos_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_add_repos_file2(i8* %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i32* null, i32** %20, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = call i32 @svn_stream_open_readonly(i32** %19, i8* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %91

32:                                               ; preds = %9
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %35 = call %struct.TYPE_4__* @svn_hash_gets(i32* %33, i32 %34)
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %13, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @svn_stream_open_readonly(i32** %20, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %90

43:                                               ; preds = %32
  store i32* null, i32** %23, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %46 = call %struct.TYPE_4__* @svn_hash_gets(i32* %44, i32 %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %24, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @svn_subst_build_keywords2(i32** %23, i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %23, align 8
  %57 = call i64 @apr_hash_count(i32* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32* null, i32** %23, align 8
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %64 = call %struct.TYPE_4__* @svn_hash_gets(i32* %62, i32 %63)
  %65 = call i32 @svn_subst_eol_style_from_value(i32* %21, i8** %22, %struct.TYPE_4__* %64)
  %66 = load i32, i32* %21, align 4
  %67 = load i8*, i8** %22, align 8
  %68 = load i32*, i32** %23, align 8
  %69 = load i32, i32* @FALSE, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i64 @svn_subst_translation_required(i32 %66, i8* %67, i32* %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load i8*, i8** %22, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = load i32*, i32** %23, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @svn_subst_stream_detranslated(i32** %20, i8* %74, i32 %75, i8* %76, i32 %77, i32* %78, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %89

83:                                               ; preds = %61
  %84 = load i8*, i8** %13, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = call i32 @svn_stream_open_readonly(i32** %20, i8* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %83, %73
  br label %90

90:                                               ; preds = %89, %37
  br label %91

91:                                               ; preds = %90, %9
  %92 = load i8*, i8** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @svn_wc_add_repos_file3(i8* %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97, i8* %98, i32 %99, i32* null, i32* null, i32* null, i32* null, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i8*, i8** %12, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @svn_io_remove_file(i8* %103, i32* %104)
  %106 = call i32 @svn_error_clear(i32 %105)
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %91
  %110 = load i8*, i8** %13, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = call i32 @svn_io_remove_file(i8* %110, i32* %111)
  %113 = call i32 @svn_error_clear(i32 %112)
  br label %114

114:                                              ; preds = %109, %91
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_build_keywords2(i32**, i32, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, %struct.TYPE_4__*) #1

declare dso_local i64 @svn_subst_translation_required(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_subst_stream_detranslated(i32**, i8*, i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc_add_repos_file3(i8*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_io_remove_file(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
