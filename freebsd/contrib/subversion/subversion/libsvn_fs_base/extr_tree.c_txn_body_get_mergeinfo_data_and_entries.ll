; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_get_mergeinfo_data_and_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_get_mergeinfo_data_and_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.get_mergeinfo_data_and_entries_baton = type { i32, i32, i32, i32 (i32, i32, i32, i32*)*, i32* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Node-revision '%s' claims to have mergeinfo but doesn't\00", align 1
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [89 x i8] c"Node-revision '%s' claims to sit atop a tree containing mergeinfo but is not a directory\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i8*, %struct.TYPE_19__*)* @txn_body_get_mergeinfo_data_and_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @txn_body_get_mergeinfo_data_and_entries(i8* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.get_mergeinfo_data_and_entries_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.get_mergeinfo_data_and_entries_baton*
  store %struct.get_mergeinfo_data_and_entries_baton* %25, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %26 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %27 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @svn_pool_create(i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %34 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @apr_hash_pool_get(i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @svn_fs_base__dag_node_kind(i32* %37)
  %39 = load i64, i64* @svn_node_dir, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @svn_fs_base__dag_dir_entries(i32** %8, i32* %43, %struct.TYPE_19__* %44, i32 %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @apr_hash_first(i32 %52, i32* %53)
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %182, %2
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %185

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @svn_pool_clear(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @apr_hash_this(i32* %61, i32* null, i32* null, i8** %12)
  %63 = load i8*, i8** %12, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %13, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %14, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @svn_fs_base__dag_get_node(i32** %15, i32 %70, i32* %71, %struct.TYPE_19__* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @svn_fs_base__dag_get_mergeinfo_stats(i64* %16, i32* %17, i32* %76, %struct.TYPE_19__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %145

83:                                               ; preds = %58
  %84 = load i32*, i32** %15, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @svn_fs_base__dag_get_proplist(i32** %18, i32* %84, %struct.TYPE_19__* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %18, align 8
  %90 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %91 = call %struct.TYPE_20__* @svn_hash_gets(i32* %89, i32 %90)
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %20, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %93 = icmp ne %struct.TYPE_20__* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %83
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call %struct.TYPE_20__* @svn_fs_base__id_unparse(i32* %95, i32* %96)
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %22, align 8
  %98 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %99 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_22__* @svn_error_createf(i32 %98, i32* null, i32 %99, i32 %102)
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %3, align 8
  br label %189

104:                                              ; preds = %83
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call %struct.TYPE_22__* @svn_mergeinfo_parse(i32* %19, i32 %107, i32* %108)
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %21, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %111 = icmp ne %struct.TYPE_22__* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %120 = call i32 @svn_error_clear(%struct.TYPE_22__* %119)
  br label %124

121:                                              ; preds = %112
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %123 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %122)
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %3, align 8
  br label %189

124:                                              ; preds = %118
  br label %144

125:                                              ; preds = %104
  %126 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %127 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %126, i32 0, i32 3
  %128 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %127, align 8
  %129 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %130 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @svn_fspath__join(i32 %131, i32 %134, i32* %135)
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %139 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 %128(i32 %136, i32 %137, i32 %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  br label %144

144:                                              ; preds = %125, %124
  br label %145

145:                                              ; preds = %144, %58
  %146 = load i32, i32* %17, align 4
  %147 = load i64, i64* %16, align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  %151 = sub nsw i32 %146, %150
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %145
  %154 = load i32*, i32** %15, align 8
  %155 = call i64 @svn_fs_base__dag_node_kind(i32* %154)
  %156 = load i64, i64* @svn_node_dir, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32*, i32** %14, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = call %struct.TYPE_20__* @svn_fs_base__id_unparse(i32* %159, i32* %160)
  store %struct.TYPE_20__* %161, %struct.TYPE_20__** %23, align 8
  %162 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %163 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.TYPE_22__* @svn_error_createf(i32 %162, i32* null, i32 %163, i32 %166)
  store %struct.TYPE_22__* %167, %struct.TYPE_22__** %3, align 8
  br label %189

168:                                              ; preds = %153
  %169 = load %struct.get_mergeinfo_data_and_entries_baton*, %struct.get_mergeinfo_data_and_entries_baton** %6, align 8
  %170 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @apr_pstrdup(i32* %172, i32 %175)
  %177 = load i32*, i32** %15, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @svn_fs_base__dag_dup(i32* %177, i32* %178)
  %180 = call i32 @svn_hash_sets(i32 %171, i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %168, %145
  br label %182

182:                                              ; preds = %181
  %183 = load i32*, i32** %9, align 8
  %184 = call i32* @apr_hash_next(i32* %183)
  store i32* %184, i32** %9, align 8
  br label %55

185:                                              ; preds = %55
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @svn_pool_destroy(i32* %186)
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %188, %struct.TYPE_22__** %3, align 8
  br label %189

189:                                              ; preds = %185, %158, %121, %94
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %190
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32* @apr_hash_pool_get(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_fs_base__dag_node_kind(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_dir_entries(i32**, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32* @apr_hash_first(i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_mergeinfo_stats(i64*, i32*, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_proplist(i32**, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_20__* @svn_fs_base__id_unparse(i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_22__* @svn_mergeinfo_parse(i32*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_fs_base__dag_dup(i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
