; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_newly_added_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_newly_added_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.merge_newly_added_dir_baton = type { i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i8*, i32, i32, i32*, i32*)* }

@diff_dir_added = common dso_local global i32 0, align 4
@diff_file_added = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_15__*, i32*, i32*)* @merge_newly_added_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_newly_added_dir(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, %struct.TYPE_15__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca %struct.merge_newly_added_dir_baton, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_13__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %35 = bitcast %struct.merge_newly_added_dir_baton* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 56, i1 false)
  %36 = load i8*, i8** %12, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call i32 @svn_uri_split(i8** %31, i8** %33, i8* %36, i32* %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = call i32 @svn_uri_split(i8** %32, i8** %34, i8* %39, i32* %40)
  %42 = load i8*, i8** %16, align 8
  %43 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %45 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 6
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 5
  %49 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @svn_wc__node_get_repos_info(i32* null, i32* null, i32* %48, i32* %49, i32 %52, i8* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %22, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = call %struct.TYPE_14__* @svn_diff__tree_processor_create(%struct.merge_newly_added_dir_baton* %22, i32* %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %21, align 8
  %64 = load i32, i32* @diff_dir_added, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @diff_file_added, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %23, align 8
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %10
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = call %struct.TYPE_14__* @svn_diff__tree_processor_reverse_create(%struct.TYPE_14__* %74, i32* null, i32* %75)
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %23, align 8
  br label %77

77:                                               ; preds = %73, %10
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %79 = load i8*, i8** %33, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = call %struct.TYPE_14__* @svn_diff__tree_processor_filter_create(%struct.TYPE_14__* %78, i8* %79, i32* %80)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %23, align 8
  %82 = load i8*, i8** %32, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = call i32 @svn_client__open_ra_session_internal(i32** %24, i8** %25, i8* %82, i32* null, i32* null, i32 %83, i32 %84, %struct.TYPE_15__* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i8*, i8** %25, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i8*, i8** %25, align 8
  store i8* %93, i8** %32, align 8
  br label %94

94:                                               ; preds = %92, %77
  %95 = load i32*, i32** %24, align 8
  %96 = load i8*, i8** %32, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = call i32 @svn_ra__dup_session(i32** %26, i32* %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %26, align 8
  %102 = load i32, i32* @svn_depth_infinity, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @svn_client__get_diff_editor2(i32** %29, i8** %30, i32* %101, i32 %102, i8* %103, i32 %104, %struct.TYPE_14__* %105, i32 %108, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32*, i32** %24, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %33, align 8
  %118 = load i32, i32* @svn_depth_infinity, align 4
  %119 = load i32, i32* @TRUE, align 4
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i8*, i8** %14, align 8
  %122 = load i32*, i32** %29, align 8
  %123 = load i8*, i8** %30, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = call i32 @svn_ra_do_diff3(i32* %115, %struct.TYPE_13__** %27, i8** %28, i8* %116, i8* %117, i32 %118, i32 %119, i32 %120, i8* %121, i32* %122, i8* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32 (i8*, i8*, i8*, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i8*, i32, i32, i32*, i32*)** %128, align 8
  %130 = load i8*, i8** %28, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* @svn_depth_infinity, align 4
  %133 = load i32, i32* @FALSE, align 4
  %134 = load i32*, i32** %20, align 8
  %135 = call i32 %129(i8* %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %131, i32 %132, i32 %133, i32* null, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %138, align 8
  %140 = load i8*, i8** %28, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 %139(i8* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @svn_uri_split(i8**, i8**, i8*, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_diff__tree_processor_create(%struct.merge_newly_added_dir_baton*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_diff__tree_processor_reverse_create(%struct.TYPE_14__*, i32*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_diff__tree_processor_filter_create(%struct.TYPE_14__*, i8*, i32*) #2

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_15__*, i32*, i32*) #2

declare dso_local i32 @svn_ra__dup_session(i32**, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_client__get_diff_editor2(i32**, i8**, i32*, i32, i8*, i32, %struct.TYPE_14__*, i32, i32, i32*) #2

declare dso_local i32 @svn_ra_do_diff3(i32*, %struct.TYPE_13__**, i8**, i8*, i8*, i32, i32, i32, i8*, i32*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
