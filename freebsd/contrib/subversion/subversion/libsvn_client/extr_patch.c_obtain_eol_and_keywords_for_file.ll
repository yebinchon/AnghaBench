; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_obtain_eol_and_keywords_for_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_obtain_eol_and_keywords_for_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8**, i32*, i8*, i32*, i32*)* @obtain_eol_and_keywords_for_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obtain_eol_and_keywords_for_file(i32** %0, i32* %1, i8** %2, i32* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @svn_wc_prop_list2(i32** %15, i32* %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %33 = call %struct.TYPE_3__* @svn_hash_gets(i32* %31, i32 %32)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %16, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %7
  %37 = load i32*, i32** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @svn_wc__node_get_changed_info(i32* %18, i32* %19, i8** %21, i32* %37, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i8* @apr_psprintf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i8* %45, i8** %20, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %24, i8** %23, i32* null, i32* %46, i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8*, i8** %23, align 8
  %53 = load i8*, i8** %24, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i8* @svn_path_url_add_component2(i8* %52, i8* %53, i32* %54)
  store i8* %55, i8** %22, align 8
  %56 = load i32**, i32*** %8, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %20, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i8*, i8** %21, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @svn_subst_build_keywords3(i32** %56, i32 %59, i8* %60, i8* %61, i8* %62, i32 %63, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %36, %7
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %71 = call %struct.TYPE_3__* @svn_hash_gets(i32* %69, i32 %70)
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %17, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = load i8**, i8*** %10, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @svn_subst_eol_style_from_value(i32* %75, i8** %76, i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_wc__node_get_changed_info(i32*, i32*, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i8**, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
