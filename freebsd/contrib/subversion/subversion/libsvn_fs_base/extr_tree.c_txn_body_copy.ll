; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.copy_args = type { i8*, i8*, i32, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32, i32* }
%struct.TYPE_21__ = type { i32 }

@open_path_last_optional = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_fs_node_unchanged = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_path_change_replace = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_23__*)* @txn_body_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_copy(i8* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.copy_args*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.copy_args*
  store %struct.copy_args* %20, %struct.copy_args** %6, align 8
  %21 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %22 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %21, i32 0, i32 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %7, align 8
  %24 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %25 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %28 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %27, i32 0, i32 3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %9, align 8
  %30 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %31 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @get_dag(i32** %11, %struct.TYPE_24__* %36, i8* %37, %struct.TYPE_23__* %38, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @open_path_last_optional, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @open_path(%struct.TYPE_25__** %12, %struct.TYPE_24__* %44, i8* %45, i32 %46, i8* %47, %struct.TYPE_23__* %48, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %2
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @svn_fs_base__allow_locked_operation(i8* %61, i32 %62, %struct.TYPE_23__* %63, i32 %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %60, %2
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @svn_fs_base__dag_get_id(i32* %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @svn_fs_base__dag_get_id(i32* %79)
  %81 = call i64 @svn_fs_base__id_compare(i32 %76, i32 %80)
  %82 = load i64, i64* @svn_fs_node_unchanged, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %3, align 8
  br label %210

86:                                               ; preds = %74, %69
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %206, label %91

91:                                               ; preds = %86
  store i64 0, i64* %16, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %95, align 8
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %18, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @svn_fs_path_change_replace, align 4
  store i32 %102, i32* %14, align 4
  br label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @svn_fs_path_change_add, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @make_path_mutable(%struct.TYPE_24__* %106, %struct.TYPE_21__* %109, i8* %110, %struct.TYPE_23__* %111, i32 %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %105
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i64* %16, i32* %124, %struct.TYPE_23__* %125, i32 %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %121, %105
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %142 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @svn_fs_base__dag_copy(i32 %136, i32 %139, i32* %140, i32 %143, i32 %146, i8* %147, i8* %148, %struct.TYPE_23__* %149, i32 %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %131
  %161 = load i32*, i32** %11, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i64* %17, i32* %161, %struct.TYPE_23__* %162, i32 %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = sub nsw i64 %171, %172
  %174 = load i8*, i8** %13, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @adjust_parent_mergeinfo_counts(%struct.TYPE_21__* %170, i64 %173, i8* %174, %struct.TYPE_23__* %175, i32 %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  br label %181

181:                                              ; preds = %160, %131
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @get_dag(i32** %15, %struct.TYPE_24__* %182, i8* %183, %struct.TYPE_23__* %184, i32 %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %13, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @svn_fs_base__dag_get_id(i32* %195)
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @FALSE, align 4
  %199 = load i32, i32* @FALSE, align 4
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @add_change(i32 %192, i8* %193, i8* %194, i32 %196, i32 %197, i32 %198, i32 %199, %struct.TYPE_23__* %200, i32 %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  br label %208

206:                                              ; preds = %86
  %207 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %208

208:                                              ; preds = %206, %181
  %209 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %209, i32** %3, align 8
  br label %210

210:                                              ; preds = %208, %84
  %211 = load i32*, i32** %3, align 8
  ret i32* %211
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, %struct.TYPE_24__*, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @open_path(%struct.TYPE_25__**, %struct.TYPE_24__*, i8*, i32, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i8*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @svn_fs_base__id_compare(i32, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_24__*, %struct.TYPE_21__*, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_mergeinfo_stats(i32*, i64*, i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_copy(i32, i32, i32*, i32, i32, i8*, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @adjust_parent_mergeinfo_counts(%struct.TYPE_21__*, i64, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @add_change(i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
