; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_related_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_related_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i64*, i8*, i64, i8*, i64, %struct.TYPE_5__*, i32*, i32*, i32*)* @find_related_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_related_node(i8** %0, i64* %1, i8* %2, i64 %3, i8* %4, i64 %5, %struct.TYPE_5__* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  store i8** %0, i8*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %33 = load i8**, i8*** %12, align 8
  store i8* null, i8** %33, align 8
  %34 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %35 = load i64*, i64** %13, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = call i32 @svn_client_conflict_get_repos_info(i8** %22, i32* null, %struct.TYPE_5__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %22, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32*, i32** %21, align 8
  %44 = call i8* @svn_path_url_add_component2(i8* %41, i8* %42, i32* %43)
  store i8* %44, i8** %23, align 8
  %45 = load i8*, i8** %23, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %19, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = call i32 @svn_client__open_ra_session_internal(i32** %26, i8** %24, i8* %45, i32* null, i32* null, i32 %46, i32 %47, i32* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %26, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = call i32 @svn_ra_check_path(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %54, i64* %25, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %25, align 8
  %59 = load i64, i64* @svn_node_none, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %10
  %62 = load i8*, i8** %14, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = call i8* @svn_relpath_basename(i8* %62, i32* %63)
  store i8* %64, i8** %30, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i8* @svn_relpath_dirname(i8* %65, i32* %66)
  store i8* %67, i8** %31, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %69 = load i8*, i8** %30, align 8
  %70 = load i8*, i8** %31, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @find_revision_for_suspected_deletion(i64* %27, i8** %28, i64* %29, i32** %32, %struct.TYPE_5__* %68, i8* %69, i8* %70, i64 %71, i32 0, i8* %72, i64 %73, i32* %74, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %11, align 8
  br label %99

86:                                               ; preds = %61
  %87 = load i8*, i8** %14, align 8
  %88 = load i8**, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i64, i64* %27, align 8
  %90 = call i64 @rev_below(i64 %89)
  %91 = load i64*, i64** %13, align 8
  store i64 %90, i64* %91, align 8
  br label %97

92:                                               ; preds = %10
  %93 = load i8*, i8** %14, align 8
  %94 = load i8**, i8*** %12, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64*, i64** %13, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %11, align 8
  br label %99

99:                                               ; preds = %97, %84
  %100 = load i32*, i32** %11, align 8
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i64, i64*, i32*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @find_revision_for_suspected_deletion(i64*, i8**, i64*, i32**, %struct.TYPE_5__*, i8*, i8*, i64, i32, i8*, i64, i32*, i32, i32*) #1

declare dso_local i64 @rev_below(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
