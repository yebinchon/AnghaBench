; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_get_incoming_delete_details_for_reverse_addition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_get_incoming_delete_details_for_reverse_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_delete_details = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32* }
%struct.find_added_rev_baton = type { i8*, i32*, i8*, i32*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@find_added_rev = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown author\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.conflict_tree_incoming_delete_details**, i8*, i8*, i32, i32, i32*, i8*, i32*, i32*)* @get_incoming_delete_details_for_reverse_addition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_incoming_delete_details_for_reverse_addition(%struct.conflict_tree_incoming_delete_details** %0, i8* %1, i8* %2, i32 %3, i32 %4, i32* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.conflict_tree_incoming_delete_details**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_3__*, align 8
  %23 = alloca %struct.find_added_rev_baton, align 8
  %24 = alloca i64, align 8
  store %struct.conflict_tree_incoming_delete_details** %0, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = bitcast %struct.find_added_rev_baton* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 56, i1 false)
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = call i8* @svn_path_url_add_component2(i8* %26, i8* %27, i32* %28)
  store i8* %29, i8** %20, align 8
  %30 = load i8*, i8** %20, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = call i32 @svn_client__open_ra_session_internal(i32** %19, i8** %21, i8* %30, i32* null, i32* null, i32 %31, i32 %32, i32* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %17, align 8
  %39 = call %struct.conflict_tree_incoming_delete_details* @apr_pcalloc(i32* %38, i32 40)
  %40 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  store %struct.conflict_tree_incoming_delete_details* %39, %struct.conflict_tree_incoming_delete_details** %40, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 5
  store i32* %41, i32** %42, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %46 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 3
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @find_added_rev, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @svn_ra_get_location_segments(i32* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, %struct.find_added_rev_baton* %23, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %19, align 8
  %60 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @svn_ra_rev_prop(i32* %59, i8* %61, i32 %62, %struct.TYPE_3__** %22, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %67 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %68 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %67, align 8
  %69 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %68, i32 0, i32 4
  store i8* %66, i8** %69, align 8
  %70 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %73 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %72, align 8
  %74 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %23, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @apr_pstrdup(i32* %75, i32* %77)
  %79 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %80 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %79, align 8
  %81 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %9
  %85 = load i32*, i32** %17, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i8* @apr_pstrdup(i32* %85, i32* %88)
  %90 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %91 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %90, align 8
  %92 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  br label %98

93:                                               ; preds = %9
  %94 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %96 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %95, align 8
  %97 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %84
  %99 = load i64, i64* @svn_node_none, align 8
  %100 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %101 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %100, align 8
  %102 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %104 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %103, align 8
  %105 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ugt i8* %106, null
  br i1 %107, label %108, label %134

108:                                              ; preds = %98
  %109 = load i32*, i32** %19, align 8
  %110 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %111 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %110, align 8
  %112 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @rev_below(i8* %113)
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @svn_ra_check_path(i32* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %114, i64* %24, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* @svn_node_none, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %108
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %124 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %123, align 8
  %125 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.conflict_tree_incoming_delete_details**, %struct.conflict_tree_incoming_delete_details*** %10, align 8
  %128 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %127, align 8
  %129 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %128, i32 0, i32 0
  %130 = load i32*, i32** %18, align 8
  %131 = call i32 @svn_ra_check_path(i32* %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %126, i64* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %133

133:                                              ; preds = %121, %108
  br label %134

134:                                              ; preds = %133, %98
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local %struct.conflict_tree_incoming_delete_details* @apr_pcalloc(i32*, i32) #2

declare dso_local i32 @svn_ra_get_location_segments(i32*, i8*, i32, i32, i32, i32, %struct.find_added_rev_baton*, i32*) #2

declare dso_local i32 @svn_ra_rev_prop(i32*, i8*, i32, %struct.TYPE_3__**, i32*) #2

declare dso_local i8* @apr_pstrdup(i32*, i32*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i8*, i64*, i32*) #2

declare dso_local i8* @rev_below(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
