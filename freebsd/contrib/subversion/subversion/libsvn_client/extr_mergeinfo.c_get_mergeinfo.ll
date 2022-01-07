; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_get_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_get_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8*, i32*, i64, i64, i32*, i32*, i32*, i32*)* @get_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_mergeinfo(i32* %0, i8** %1, i8* %2, i32* %3, i64 %4, i64 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i64 @svn_path_is_url(i8* %25)
  store i64 %26, i64* %22, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %10
  %30 = load i8*, i8** %13, align 8
  %31 = call i64 @svn_path_is_url(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32*, i32** %18, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @svn_ra_reparent(i32* %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %18, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @svn_client__resolve_rev_and_url(%struct.TYPE_5__** %23, i32* %39, i8* %40, i32* %41, i32* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %55

47:                                               ; preds = %29, %10
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = load i32*, i32** %20, align 8
  %53 = call i32 @svn_client__ra_session_from_path2(i32** %18, %struct.TYPE_5__** %23, i8* %48, i32* null, i32* %49, i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %47, %33
  %56 = load i64, i64* %22, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %13, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @svn_dirent_get_absolute(i8** %21, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i8*, i8** %21, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @svn_client__wc_node_get_origin(%struct.TYPE_5__** %24, i8* %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %58
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @strcmp(i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80, %71, %58
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %22, align 8
  br label %90

90:                                               ; preds = %88, %80
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32*, i32** %18, align 8
  %93 = load i8**, i8*** %12, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @svn_ra_get_repos_root2(i32* %92, i8** %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i64, i64* %22, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %91
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i64, i64* %15, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @svn_client__get_repos_mergeinfo_catalog(i32* %100, i32* %101, i32 %104, i64 %107, i32 %108, i32 %109, i64 %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %128

115:                                              ; preds = %91
  %116 = load i32*, i32** %11, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = load i64, i64* %16, align 8
  %120 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %121 = load i32*, i32** %18, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = call i32 @svn_client__get_wc_or_repos_mergeinfo_catalog(i32* %116, i32* null, i32* null, i64 %117, i32 %118, i64 %119, i32 %120, i32* %121, i8* %122, i32* %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %128

128:                                              ; preds = %115, %99
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %129
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_client__resolve_rev_and_url(%struct.TYPE_5__**, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_5__**, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client__wc_node_get_origin(%struct.TYPE_5__**, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_client__get_repos_mergeinfo_catalog(i32*, i32*, i32, i64, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_client__get_wc_or_repos_mergeinfo_catalog(i32*, i32*, i32*, i64, i32, i64, i32, i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
