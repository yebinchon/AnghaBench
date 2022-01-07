; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_dir_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_dir_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.conflict_tree_incoming_add_details* }
%struct.conflict_tree_incoming_add_details = type { i8*, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 (i32, i32, i32*)*, i32 }

@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"Conflict resolution option '%d' requires details for tree conflict at '%s' to be fetched from the repository\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not determine when '%s' was added the repository\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Could not determine when '%s' was deleted from the repository\00", align 1
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*)* @resolve_merge_incoming_added_dir_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_merge_incoming_added_dir_merge(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_14__* %24)
  store i8* %25, i8** %15, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %27, align 8
  store %struct.conflict_tree_incoming_add_details* %28, %struct.conflict_tree_incoming_add_details** %17, align 8
  %29 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %30 = icmp eq %struct.conflict_tree_incoming_add_details* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @svn_dirent_local_style(i8* %37, i32* %38)
  %40 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %32, i32* null, i32 %33, i32 %36, i32 %39)
  store i32* %40, i32** %5, align 8
  br label %182

41:                                               ; preds = %4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @svn_client_conflict_get_repos_info(i8** %10, i32* null, %struct.TYPE_14__* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %49 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i8* @svn_path_url_add_component2(i8* %47, i8* %50, i32* %51)
  store i8* %52, i8** %19, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @svn_client_conflict_get_incoming_old_repos_location(i8** %11, i64* %12, i32* null, %struct.TYPE_14__* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @svn_client_conflict_get_incoming_new_repos_location(i8** %13, i64* %14, i32* null, %struct.TYPE_14__* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32* %61)
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %41
  %67 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %68 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %15, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %77)
  store i32* %78, i32** %5, align 8
  br label %182

79:                                               ; preds = %66
  %80 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %81 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @rev_below(i64 %82)
  store i64 %83, i64* %20, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i8* @svn_path_url_add_component2(i8* %84, i8* %85, i32* %86)
  store i8* %87, i8** %21, align 8
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %22, align 8
  %89 = load i8*, i8** %13, align 8
  store i8* %89, i8** %18, align 8
  br label %113

90:                                               ; preds = %41
  %91 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %92 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @svn_dirent_local_style(i8* %99, i32* %100)
  %102 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %97, i32* null, i32 %98, i32 %101)
  store i32* %102, i32** %5, align 8
  br label %182

103:                                              ; preds = %90
  %104 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %17, align 8
  %105 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %20, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i8* @svn_path_url_add_component2(i8* %107, i8* %108, i32* %109)
  store i8* %110, i8** %21, align 8
  %111 = load i64, i64* %12, align 8
  store i64 %111, i64* %22, align 8
  %112 = load i8*, i8** %13, align 8
  store i8* %112, i8** %18, align 8
  br label %113

113:                                              ; preds = %103, %79
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %16, i32 %116, i8* %117, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32* %120)
  %122 = load i8*, i8** %18, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp sgt i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32* @merge_newly_added_dir(i8* %122, i8* %123, i64 %124, i8* %125, i64 %126, i8* %127, i32 %131, %struct.TYPE_13__* %132, i32* %133, i32* %134)
  store i32* %135, i32** %23, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %113
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32* @svn_wc__del_tree_conflict(i32 %141, i8* %142, i32* %143)
  store i32* %144, i32** %23, align 8
  br label %145

145:                                              ; preds = %138, %113
  %146 = load i32*, i32** %23, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @svn_wc__release_write_lock(i32 %149, i8* %150, i32* %151)
  %153 = call i32* @svn_error_compose_create(i32* %146, i32 %152)
  store i32* %153, i32** %23, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @svn_io_sleep_for_timestamps(i8* %154, i32* %155)
  %157 = load i32*, i32** %23, align 8
  %158 = call i32 @SVN_ERR(i32* %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %160, align 8
  %162 = icmp ne i32 (i32, i32, i32*)* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %145
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @svn_wc_create_notify(i8* %170, i32 %171, i32* %172)
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 %166(i32 %169, i32 %173, i32* %174)
  br label %176

176:                                              ; preds = %163, %145
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = call i32 @svn_client_conflict_option_get_id(%struct.TYPE_15__* %177)
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %181, i32** %5, align 8
  br label %182

182:                                              ; preds = %176, %96, %72, %31
  %183 = load i32*, i32** %5, align 8
  ret i32* %183
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_14__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i64 @rev_below(i64) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @merge_newly_added_dir(i8*, i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
