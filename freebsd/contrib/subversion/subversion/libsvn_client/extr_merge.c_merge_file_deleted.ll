; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i32, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.merge_file_baton_t = type { i64, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_delete = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file_deleted(i8* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.svn_diff_tree_processor_t* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.merge_file_baton_t*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.svn_diff_tree_processor_t* %5, %struct.svn_diff_tree_processor_t** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %14, align 8
  %21 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %16, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = bitcast i8* %23 to %struct.merge_file_baton_t*
  store %struct.merge_file_baton_t* %24, %struct.merge_file_baton_t** %17, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i8* @svn_dirent_join(i32 %29, i8* %30, i32* %31)
  store i8* %32, i8** %18, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %34 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i32 @mark_file_edited(%struct.TYPE_15__* %33, %struct.merge_file_baton_t* %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %40 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %7
  %44 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %45 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = load i32, i32* @svn_node_file, align 4
  %53 = load i32, i32* @svn_wc_notify_update_shadowed_delete, align 4
  %54 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %55 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %58 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @record_skip(%struct.TYPE_15__* %50, i8* %51, i32 %52, i32 %53, i32 %56, %struct.TYPE_16__* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %49, %43
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %8, align 8
  br label %191

65:                                               ; preds = %7
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %8, align 8
  br label %191

72:                                               ; preds = %65
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8*, i8** @TRUE, align 8
  store i8* %78, i8** %19, align 8
  br label %91

79:                                               ; preds = %72
  %80 = load i8*, i8** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i8*, i8** %18, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @files_same_p(i8** %19, i8* %80, i32* %81, i8* %82, i32 %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %91

91:                                               ; preds = %79, %77
  %92 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %93 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = icmp ne %struct.TYPE_16__* %94, null
  br i1 %95, label %96, label %126

96:                                               ; preds = %91
  %97 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %98 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load i8*, i8** %19, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %108 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = call i32 @store_path(i32 %113, i8* %114)
  br label %124

116:                                              ; preds = %103
  %117 = load i8*, i8** @TRUE, align 8
  %118 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %119 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store i8* %117, i8** %123, align 8
  br label %124

124:                                              ; preds = %116, %106
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %8, align 8
  br label %191

126:                                              ; preds = %96, %91
  %127 = load i8*, i8** %19, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %173

129:                                              ; preds = %126
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %156, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %18, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32, i32* @FALSE, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @svn_wc_delete4(i32 %139, i8* %140, i32 %141, i32 %142, i32 %147, i32 %152, i32* null, i32* null, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  br label %156

156:                                              ; preds = %134, %129
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i8*, i8** %18, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @alloc_and_store_path(i32* %158, i8* %159, i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %165 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %166 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %165, i32 0, i32 1
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* @svn_node_file, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = call i32 @record_update_delete(%struct.TYPE_15__* %164, %struct.TYPE_16__* %167, i8* %168, i32 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  br label %188

173:                                              ; preds = %126
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %175 = load i8*, i8** %18, align 8
  %176 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %17, align 8
  %177 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = load i32, i32* @svn_node_file, align 4
  %180 = load i32, i32* @svn_node_file, align 4
  %181 = load i32, i32* @svn_node_none, align 4
  %182 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %183 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %184 = load i8*, i8** @TRUE, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = call i32 @record_tree_conflict(%struct.TYPE_15__* %174, i8* %175, %struct.TYPE_16__* %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32* null, i8* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %188

188:                                              ; preds = %173, %156
  br label %189

189:                                              ; preds = %188
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %8, align 8
  br label %191

191:                                              ; preds = %189, %124, %70, %63
  %192 = load i32*, i32** %8, align 8
  ret i32* %192
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_file_edited(%struct.TYPE_15__*, %struct.merge_file_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_15__*, i8*, i32, i32, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @files_same_p(i8**, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @svn_wc_delete4(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @record_update_delete(%struct.TYPE_15__*, %struct.TYPE_16__*, i8*, i32, i32*) #1

declare dso_local i32 @record_tree_conflict(%struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
