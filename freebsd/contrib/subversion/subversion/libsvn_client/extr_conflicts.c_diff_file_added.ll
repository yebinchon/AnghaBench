; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_diff_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_diff_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.merge_newly_added_dir_baton* }
%struct.merge_newly_added_dir_baton = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_file_added(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.svn_diff_tree_processor_t* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.merge_newly_added_dir_baton*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.svn_diff_tree_processor_t* %8, %struct.svn_diff_tree_processor_t** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %20, align 8
  %29 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %28, i32 0, i32 0
  %30 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %29, align 8
  store %struct.merge_newly_added_dir_baton* %30, %struct.merge_newly_added_dir_baton** %22, align 8
  %31 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %32 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = call i8* @svn_dirent_join(i32 %33, i8* %34, i32* %35)
  store i8* %36, i8** %23, align 8
  %37 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %38 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %23, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32*, i32** %21, align 8
  %46 = call i32 @svn_wc_read_kind2(i64* %24, i32 %41, i8* %42, i32 %43, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i8*, i8** %23, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @svn_io_check_path(i8* %48, i64* %25, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %24, align 8
  %53 = load i64, i64* @svn_node_file, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %10
  %56 = load i64, i64* %25, align 8
  %57 = load i64, i64* @svn_node_file, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i32*, i32** %18, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i32* @svn_prop_hash_to_array(i32* %60, i32* %61)
  store i32* %62, i32** %26, align 8
  %63 = load i32*, i32** %26, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = call i32 @svn_categorize_props(i32* %63, i32* null, i32* null, i32** %27, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %23, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32*, i32** %27, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @svn_prop_array_to_hash(i32* %69, i32* %70)
  %72 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %73 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = call i32 @merge_added_files(i8* %67, i8* %68, i32 %71, %struct.TYPE_2__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %11, align 8
  br label %217

79:                                               ; preds = %55, %10
  %80 = load i64, i64* %24, align 8
  %81 = load i64, i64* @svn_node_none, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %79
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* @svn_node_unknown, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %83
  %88 = load i8*, i8** %23, align 8
  %89 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %90 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* @svn_node_none, align 8
  %93 = load i64, i64* @svn_node_file, align 8
  %94 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %95 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %98 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %101 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @svn_relpath_join(i32 %102, i8* %103, i32* %104)
  %106 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %107 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %110 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %113 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %118 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %123 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = call i32 @raise_tree_conflict(i8* %88, i32 %89, i32 %90, i64 %91, i64 %92, i64 %93, i32 %96, i32 %99, i32 %105, i32 %108, i32 %111, i32 %116, i32 %121, i32 %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %11, align 8
  br label %217

131:                                              ; preds = %83, %79
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* @svn_node_none, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %179

135:                                              ; preds = %131
  %136 = load i8*, i8** %23, align 8
  %137 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %138 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* @svn_node_none, align 8
  %141 = load i64, i64* @svn_node_file, align 8
  %142 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %143 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %146 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %149 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = call i32 @svn_relpath_join(i32 %150, i8* %151, i32* %152)
  %154 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %155 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %158 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %161 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %166 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %171 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %21, align 8
  %176 = call i32 @raise_tree_conflict(i8* %136, i32 %137, i32 %138, i64 %139, i64 %140, i64 %141, i32 %144, i32 %147, i32 %153, i32 %156, i32 %159, i32 %164, i32 %169, i32 %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %178, i32** %11, align 8
  br label %217

179:                                              ; preds = %131
  %180 = load i32*, i32** %18, align 8
  %181 = load i32*, i32** %21, align 8
  %182 = call i32* @svn_prop_hash_to_array(i32* %180, i32* %181)
  store i32* %182, i32** %26, align 8
  %183 = load i32*, i32** %26, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = call i32 @svn_categorize_props(i32* %183, i32* null, i32* null, i32** %27, i32* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  %187 = load i8*, i8** %16, align 8
  %188 = load i8*, i8** %23, align 8
  %189 = load i32, i32* @FALSE, align 4
  %190 = load i32*, i32** %21, align 8
  %191 = call i32 @svn_io_copy_file(i8* %187, i8* %188, i32 %189, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  %193 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %194 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %23, align 8
  %199 = load i32*, i32** %27, align 8
  %200 = load i32*, i32** %21, align 8
  %201 = call i32 @svn_prop_array_to_hash(i32* %199, i32* %200)
  %202 = load i32, i32* @FALSE, align 4
  %203 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %204 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %22, align 8
  %209 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %21, align 8
  %214 = call i32 @svn_wc_add_from_disk3(i32 %197, i8* %198, i32 %201, i32 %202, i32 %207, i32 %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %216, i32** %11, align 8
  br label %217

217:                                              ; preds = %179, %135, %87, %59
  %218 = load i32*, i32** %11, align 8
  ret i32* %218
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32 @svn_categorize_props(i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @merge_added_files(i8*, i8*, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i32 @raise_tree_conflict(i8*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc_add_from_disk3(i32, i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
