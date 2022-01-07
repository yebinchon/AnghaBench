; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_get_mergeinfo_for_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_get_mergeinfo_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.get_mergeinfo_for_path_baton = type { i64, i32, i32**, i64, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, i32* }
%struct.TYPE_22__ = type { i32 }

@svn_mergeinfo_nearest_ancestor = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_mergeinfo_explicit = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Node-revision '%s' claims to have mergeinfo but doesn't\00", align 1
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (i8*, %struct.TYPE_21__*)* @txn_body_get_mergeinfo_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @txn_body_get_mergeinfo_for_path(i8* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.get_mergeinfo_for_path_baton*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.get_mergeinfo_for_path_baton*
  store %struct.get_mergeinfo_for_path_baton* %19, %struct.get_mergeinfo_for_path_baton** %6, align 8
  store i32* null, i32** %12, align 8
  %20 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %21 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %24 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %27 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @open_path(%struct.TYPE_24__** %7, i32 %25, i32 %28, i32 0, i32* null, %struct.TYPE_21__* %29, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %8, align 8
  %36 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %37 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = icmp ne %struct.TYPE_24__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %3, align 8
  br label %192

48:                                               ; preds = %41
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  store %struct.TYPE_24__* %51, %struct.TYPE_24__** %8, align 8
  br label %52

52:                                               ; preds = %48, %2
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @svn_pool_create(i32 %55)
  store i32* %56, i32** %11, align 8
  br label %57

57:                                               ; preds = %94, %52
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @svn_pool_clear(i32* %61)
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @svn_fs_base__dag_get_mergeinfo_stats(i64* %13, i32* %14, i32* %66, %struct.TYPE_21__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %95

74:                                               ; preds = %60
  %75 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %76 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @svn_mergeinfo_explicit, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @svn_pool_destroy(i32* %81)
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %3, align 8
  br label %192

84:                                               ; preds = %74
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %8, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %89 = icmp ne %struct.TYPE_24__* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @svn_pool_destroy(i32* %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %3, align 8
  br label %192

94:                                               ; preds = %84
  br label %57

95:                                               ; preds = %73, %57
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @svn_pool_destroy(i32* %96)
  %98 = load i32*, i32** %12, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @svn_fs_base__dag_get_proplist(i32** %9, i32* %98, %struct.TYPE_21__* %99, i32 %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %107 = call %struct.TYPE_22__* @svn_hash_gets(i32* %105, i32 %106)
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %10, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = icmp ne %struct.TYPE_22__* %108, null
  br i1 %109, label %123, label %110

110:                                              ; preds = %95
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @svn_fs_base__dag_get_id(i32* %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.TYPE_22__* @svn_fs_base__id_unparse(i32 %112, i32 %115)
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %15, align 8
  %117 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %118 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.TYPE_23__* @svn_error_createf(i32 %117, i32* null, i32 %118, i32 %121)
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %3, align 8
  br label %192

123:                                              ; preds = %95
  %124 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %125 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %124, i32 0, i32 2
  %126 = load i32**, i32*** %125, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %131 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.TYPE_23__* @svn_mergeinfo_parse(i32** %126, i32 %129, i32 %132)
  store %struct.TYPE_23__* %133, %struct.TYPE_23__** %16, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %135 = icmp ne %struct.TYPE_23__* %134, null
  br i1 %135, label %136, label %150

136:                                              ; preds = %123
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %144 = call i32 @svn_error_clear(%struct.TYPE_23__* %143)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  %145 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %146 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %145, i32 0, i32 2
  store i32** null, i32*** %146, align 8
  br label %147

147:                                              ; preds = %142, %136
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %149 = call %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__* %148)
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %3, align 8
  br label %192

150:                                              ; preds = %123
  %151 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %152 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %150
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %158 = icmp ne %struct.TYPE_24__* %156, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %155
  %160 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %161 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %160, i32 0, i32 2
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %165 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %166 = load i64, i64* @TRUE, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @svn_mergeinfo_inheritable2(i32* %17, i32* %163, i32* null, i32 %164, i32 %165, i64 %166, i32 %169, i32 %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %176 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %175, i32 0, i32 2
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @parent_path_relpath(%struct.TYPE_24__* %179, %struct.TYPE_24__* %180, i32 %183)
  %185 = load %struct.get_mergeinfo_for_path_baton*, %struct.get_mergeinfo_for_path_baton** %6, align 8
  %186 = getelementptr inbounds %struct.get_mergeinfo_for_path_baton, %struct.get_mergeinfo_for_path_baton* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @svn_fs__append_to_merged_froms(i32** %177, i32 %178, i32 %184, i32 %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %190

190:                                              ; preds = %159, %155, %150
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %191, %struct.TYPE_23__** %3, align 8
  br label %192

192:                                              ; preds = %190, %147, %110, %90, %80, %46
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %193
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_24__**, i32, i32, i32, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_mergeinfo_stats(i64*, i32*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_proplist(i32**, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @svn_fs_base__id_unparse(i32, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_23__* @svn_mergeinfo_parse(i32**, i32, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_mergeinfo_inheritable2(i32*, i32*, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @svn_fs__append_to_merged_froms(i32**, i32, i32, i32) #1

declare dso_local i32 @parent_path_relpath(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
