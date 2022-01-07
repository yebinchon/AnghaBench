; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_translate_if_necessary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_translate_if_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@svn_subst_eol_style_none = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32, i8*, i32*, i32*)* @translate_if_necessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translate_if_necessary(i8** %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %23 = call %struct.TYPE_3__* @svn_hash_gets(i32* %21, i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %14, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %26 = call %struct.TYPE_3__* @svn_hash_gets(i32* %24, i32 %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %15, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @svn_subst_eol_style_from_value(i32* %16, i8** %17, i32 %32)
  br label %36

34:                                               ; preds = %6
  store i8* null, i8** %17, align 8
  %35 = load i32, i32* @svn_subst_eol_style_none, align 4
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %44 = call i32 @APR_STRINGIFY(i32 %43)
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @svn_subst_build_keywords3(i32** %18, i32 %42, i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %49

48:                                               ; preds = %36
  store i32* null, i32** %18, align 8
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %16, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @svn_subst_translation_required(i32 %50, i8* %51, i32* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %7, align 8
  br label %87

59:                                               ; preds = %49
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_stream_open_readonly(i32** %19, i8* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @svn_stream_open_unique(i32** %20, i8** %66, i32* null, i32 %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %20, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = call i32* @svn_subst_stream_translated(i32* %72, i8* %73, i32 %74, i32* %75, i32 %76, i32* %77)
  store i32* %78, i32** %20, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @svn_stream_copy3(i32* %79, i32* %80, i32 %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %7, align 8
  br label %87

87:                                               ; preds = %59, %57
  %88 = load i32*, i32** %7, align 8
  ret i32* %88
}

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i32, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @APR_STRINGIFY(i32) #1

declare dso_local i32 @svn_subst_translation_required(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
