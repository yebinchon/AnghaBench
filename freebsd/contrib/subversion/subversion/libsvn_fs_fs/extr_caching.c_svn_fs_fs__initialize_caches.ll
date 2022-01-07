; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_svn_fs_fs__initialize_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_svn_fs_fs__initialize_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"fsfs:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@SVN_VA_NULL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ns:\00", align 1
@svn_fs_fs__serialize_id = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_id = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"RRI\00", align 1
@svn_fs_fs__dag_serialize = common dso_local global i32* null, align 8
@svn_fs_fs__dag_deserialize = common dso_local global i32* null, align 8
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"DAG\00", align 1
@SVN_CACHE__MEMBUFFER_LOW_PRIORITY = common dso_local global i32 0, align 4
@svn_fs_fs__serialize_dir_entries = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_dir_entries = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@SVN_CACHE__MEMBUFFER_HIGH_PRIORITY = common dso_local global i32 0, align 4
@svn_fs_fs__serialize_manifest = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_manifest = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"PACK-MANIFEST\00", align 1
@svn_fs_fs__serialize_node_revision = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_node_revision = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"NODEREVS\00", align 1
@svn_fs_fs__serialize_rep_header = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_rep_header = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"REPHEADER\00", align 1
@SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@svn_fs_fs__serialize_changes = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_changes = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"CHANGES\00", align 1
@svn_fs_fs__serialize_revprops = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_revprops = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"REVPROP\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@svn_fs_fs__serialize_mergeinfo = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_mergeinfo = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"MERGEINFO\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"HAS_MERGEINFO\00", align 1
@svn_fs_fs__serialize_properties = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_properties = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@svn_fs_fs__serialize_raw_window = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_raw_window = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"RAW_WINDOW\00", align 1
@svn_fs_fs__serialize_txdelta_window = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_txdelta_window = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"TXDELTA_WINDOW\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"COMBINED_WINDOW\00", align 1
@svn_fs_fs__serialize_l2p_header = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_l2p_header = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"L2P_HEADER\00", align 1
@svn_fs_fs__serialize_l2p_page = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_l2p_page = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"L2P_PAGE\00", align 1
@svn_fs_fs__serialize_p2l_header = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_p2l_header = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"P2L_HEADER\00", align 1
@svn_fs_fs__serialize_p2l_page = common dso_local global i32* null, align 8
@svn_fs_fs__deserialize_p2l_page = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"P2L_PAGE\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@dump_global_cache_statistics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__initialize_caches(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @normalize_key_part(i32 %25, i32* %26)
  %28 = load i8*, i8** @SVN_VA_NULL, align 8
  %29 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @read_config(i8** %12, i32* %9, i32* %10, i32* %11, %struct.TYPE_6__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** @SVN_VA_NULL, align 8
  %41 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = call i32* (...) @svn_cache__get_global_membuffer_cache()
  store i32* %46, i32** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 21
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** @svn_fs_fs__serialize_id, align 8
  %51 = load i32*, i32** @svn_fs_fs__deserialize_id, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** @SVN_VA_NULL, align 8
  %55 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %52, i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @create_cache(i32** %48, i32* null, i32* %49, i32 1, i32 50, i32* %50, i32* %51, i32 4, i8* %55, i32 0, i32 %56, %struct.TYPE_6__* %57, i32 %58, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 20
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** @svn_fs_fs__dag_serialize, align 8
  %69 = load i32*, i32** @svn_fs_fs__dag_deserialize, align 8
  %70 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** @SVN_VA_NULL, align 8
  %74 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %71, i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @create_cache(i32** %66, i32* null, i32* %67, i32 1, i32 8, i32* %68, i32* %69, i32 %70, i8* %74, i32 %75, i32 %76, %struct.TYPE_6__* %77, i32 %78, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @svn_fs_fs__create_dag_cache(i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 19
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 18
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** @svn_fs_fs__serialize_dir_entries, align 8
  %95 = load i32*, i32** @svn_fs_fs__deserialize_dir_entries, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** @SVN_VA_NULL, align 8
  %99 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %96, i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @create_cache(i32** %92, i32* null, i32* %93, i32 1, i32 8, i32* %94, i32* %95, i32 4, i8* %99, i32 %100, i32 %101, %struct.TYPE_6__* %102, i32 %103, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 17
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** @svn_fs_fs__serialize_manifest, align 8
  %114 = load i32*, i32** @svn_fs_fs__deserialize_manifest, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** @SVN_VA_NULL, align 8
  %118 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %115, i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @create_cache(i32** %111, i32* null, i32* %112, i32 8, i32 1, i32* %113, i32* %114, i32 4, i8* %118, i32 %119, i32 %120, %struct.TYPE_6__* %121, i32 %122, i32 %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 16
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** @svn_fs_fs__serialize_node_revision, align 8
  %133 = load i32*, i32** @svn_fs_fs__deserialize_node_revision, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** @SVN_VA_NULL, align 8
  %137 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %134, i8* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @create_cache(i32** %130, i32* null, i32* %131, i32 2, i32 16, i32* %132, i32* %133, i32 4, i8* %137, i32 %138, i32 %139, %struct.TYPE_6__* %140, i32 %141, i32 %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 15
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** @svn_fs_fs__serialize_rep_header, align 8
  %152 = load i32*, i32** @svn_fs_fs__deserialize_rep_header, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** @SVN_VA_NULL, align 8
  %156 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %153, i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @create_cache(i32** %149, i32* null, i32* %150, i32 1, i32 200, i32* %151, i32* %152, i32 4, i8* %156, i32 %157, i32 %158, %struct.TYPE_6__* %159, i32 %160, i32 %163, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 14
  %169 = load i32*, i32** %7, align 8
  %170 = load i32*, i32** @svn_fs_fs__serialize_changes, align 8
  %171 = load i32*, i32** @svn_fs_fs__deserialize_changes, align 8
  %172 = load i32*, i32** %4, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = load i8*, i8** @SVN_VA_NULL, align 8
  %175 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %172, i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @create_cache(i32** %168, i32* null, i32* %169, i32 1, i32 8, i32* %170, i32* %171, i32 4, i8* %175, i32 0, i32 %176, %struct.TYPE_6__* %177, i32 %178, i32 %181, i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 13
  %187 = load i32*, i32** %7, align 8
  %188 = load i32*, i32** @svn_fs_fs__serialize_revprops, align 8
  %189 = load i32*, i32** @svn_fs_fs__deserialize_revprops, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i8*, i8** @SVN_VA_NULL, align 8
  %193 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %190, i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %192)
  %194 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %195 = load i32, i32* @TRUE, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @create_cache(i32** %186, i32* null, i32* %187, i32 8, i32 20, i32* %188, i32* %189, i32 4, i8* %193, i32 %194, i32 %195, %struct.TYPE_6__* %196, i32 %197, i32 %200, i32* %201)
  %203 = call i32 @SVN_ERR(i32 %202)
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %263

206:                                              ; preds = %2
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 11
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 12
  %211 = load i32*, i32** %210, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = load i8*, i8** @SVN_VA_NULL, align 8
  %216 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %213, i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = call i32 @create_cache(i32** %208, i32* %211, i32* %212, i32 0, i32 0, i32* null, i32* null, i32 4, i8* %216, i32 %217, i32 %218, %struct.TYPE_6__* %219, i32 %220, i32 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 10
  %229 = load i32*, i32** %7, align 8
  %230 = load i32*, i32** @svn_fs_fs__serialize_mergeinfo, align 8
  %231 = load i32*, i32** @svn_fs_fs__deserialize_mergeinfo, align 8
  %232 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %233 = load i32*, i32** %4, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i8*, i8** @SVN_VA_NULL, align 8
  %236 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %233, i8* %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %235)
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 @create_cache(i32** %228, i32* null, i32* %229, i32 0, i32 0, i32* %230, i32* %231, i32 %232, i8* %236, i32 0, i32 %237, %struct.TYPE_6__* %238, i32 %239, i32 %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 9
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %250 = load i32*, i32** %4, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load i8*, i8** @SVN_VA_NULL, align 8
  %253 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %250, i8* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %252)
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 @create_cache(i32** %247, i32* null, i32* %248, i32 0, i32 0, i32* null, i32* null, i32 %249, i8* %253, i32 0, i32 %254, %struct.TYPE_6__* %255, i32 %256, i32 %259, i32* %260)
  %262 = call i32 @SVN_ERR(i32 %261)
  br label %270

263:                                              ; preds = %2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 11
  store i32* null, i32** %265, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 10
  store i32* null, i32** %267, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 9
  store i32* null, i32** %269, align 8
  br label %270

270:                                              ; preds = %263, %206
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 8
  %276 = load i32*, i32** %7, align 8
  %277 = load i32*, i32** @svn_fs_fs__serialize_properties, align 8
  %278 = load i32*, i32** @svn_fs_fs__deserialize_properties, align 8
  %279 = load i32*, i32** %4, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = load i8*, i8** @SVN_VA_NULL, align 8
  %282 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %279, i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %281)
  %283 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %284 = load i32, i32* %13, align 4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %286 = load i32, i32* %8, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @create_cache(i32** %275, i32* null, i32* %276, i32 0, i32 0, i32* %277, i32* %278, i32 4, i8* %282, i32 %283, i32 %284, %struct.TYPE_6__* %285, i32 %286, i32 %289, i32* %290)
  %292 = call i32 @SVN_ERR(i32 %291)
  br label %296

293:                                              ; preds = %270
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 8
  store i32* null, i32** %295, align 8
  br label %296

296:                                              ; preds = %293, %273
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %355

299:                                              ; preds = %296
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 7
  %302 = load i32*, i32** %7, align 8
  %303 = load i32*, i32** @svn_fs_fs__serialize_raw_window, align 8
  %304 = load i32*, i32** @svn_fs_fs__deserialize_raw_window, align 8
  %305 = load i32*, i32** %4, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = load i8*, i8** @SVN_VA_NULL, align 8
  %308 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %305, i8* %306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %307)
  %309 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %310 = load i32, i32* %13, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %312 = load i32, i32* %8, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @create_cache(i32** %301, i32* null, i32* %302, i32 0, i32 0, i32* %303, i32* %304, i32 4, i8* %308, i32 %309, i32 %310, %struct.TYPE_6__* %311, i32 %312, i32 %315, i32* %316)
  %318 = call i32 @SVN_ERR(i32 %317)
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 6
  %321 = load i32*, i32** %7, align 8
  %322 = load i32*, i32** @svn_fs_fs__serialize_txdelta_window, align 8
  %323 = load i32*, i32** @svn_fs_fs__deserialize_txdelta_window, align 8
  %324 = load i32*, i32** %4, align 8
  %325 = load i8*, i8** %6, align 8
  %326 = load i8*, i8** @SVN_VA_NULL, align 8
  %327 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %324, i8* %325, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %326)
  %328 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %329 = load i32, i32* %13, align 4
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %331 = load i32, i32* %8, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 @create_cache(i32** %320, i32* null, i32* %321, i32 0, i32 0, i32* %322, i32* %323, i32 4, i8* %327, i32 %328, i32 %329, %struct.TYPE_6__* %330, i32 %331, i32 %334, i32* %335)
  %337 = call i32 @SVN_ERR(i32 %336)
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 5
  %340 = load i32*, i32** %7, align 8
  %341 = load i32*, i32** %4, align 8
  %342 = load i8*, i8** %6, align 8
  %343 = load i8*, i8** @SVN_VA_NULL, align 8
  %344 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %341, i8* %342, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %343)
  %345 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %346 = load i32, i32* %13, align 4
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %348 = load i32, i32* %8, align 4
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32*, i32** %4, align 8
  %353 = call i32 @create_cache(i32** %339, i32* null, i32* %340, i32 0, i32 0, i32* null, i32* null, i32 4, i8* %344, i32 %345, i32 %346, %struct.TYPE_6__* %347, i32 %348, i32 %351, i32* %352)
  %354 = call i32 @SVN_ERR(i32 %353)
  br label %360

355:                                              ; preds = %296
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 6
  store i32* null, i32** %357, align 8
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 5
  store i32* null, i32** %359, align 8
  br label %360

360:                                              ; preds = %355, %299
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 4
  %363 = load i32*, i32** %7, align 8
  %364 = load i32*, i32** @svn_fs_fs__serialize_l2p_header, align 8
  %365 = load i32*, i32** @svn_fs_fs__deserialize_l2p_header, align 8
  %366 = load i32*, i32** %4, align 8
  %367 = load i8*, i8** %6, align 8
  %368 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %366, i8* %367, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* null)
  %369 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %370 = load i32, i32* %13, align 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %372 = load i32, i32* %8, align 4
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32*, i32** %4, align 8
  %377 = call i32 @create_cache(i32** %362, i32* null, i32* %363, i32 8, i32 16, i32* %364, i32* %365, i32 4, i8* %368, i32 %369, i32 %370, %struct.TYPE_6__* %371, i32 %372, i32 %375, i32* %376)
  %378 = call i32 @SVN_ERR(i32 %377)
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 3
  %381 = load i32*, i32** %7, align 8
  %382 = load i32*, i32** @svn_fs_fs__serialize_l2p_page, align 8
  %383 = load i32*, i32** @svn_fs_fs__deserialize_l2p_page, align 8
  %384 = load i32*, i32** %4, align 8
  %385 = load i8*, i8** %6, align 8
  %386 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %384, i8* %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* null)
  %387 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %388 = load i32, i32* %13, align 4
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %390 = load i32, i32* %8, align 4
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32*, i32** %4, align 8
  %395 = call i32 @create_cache(i32** %380, i32* null, i32* %381, i32 8, i32 16, i32* %382, i32* %383, i32 4, i8* %386, i32 %387, i32 %388, %struct.TYPE_6__* %389, i32 %390, i32 %393, i32* %394)
  %396 = call i32 @SVN_ERR(i32 %395)
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 2
  %399 = load i32*, i32** %7, align 8
  %400 = load i32*, i32** @svn_fs_fs__serialize_p2l_header, align 8
  %401 = load i32*, i32** @svn_fs_fs__deserialize_p2l_header, align 8
  %402 = load i32*, i32** %4, align 8
  %403 = load i8*, i8** %6, align 8
  %404 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %402, i8* %403, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %405 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %406 = load i32, i32* %13, align 4
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %408 = load i32, i32* %8, align 4
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32*, i32** %4, align 8
  %413 = call i32 @create_cache(i32** %398, i32* null, i32* %399, i32 4, i32 1, i32* %400, i32* %401, i32 4, i8* %404, i32 %405, i32 %406, %struct.TYPE_6__* %407, i32 %408, i32 %411, i32* %412)
  %414 = call i32 @SVN_ERR(i32 %413)
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 1
  %417 = load i32*, i32** %7, align 8
  %418 = load i32*, i32** @svn_fs_fs__serialize_p2l_page, align 8
  %419 = load i32*, i32** @svn_fs_fs__deserialize_p2l_page, align 8
  %420 = load i32*, i32** %4, align 8
  %421 = load i8*, i8** %6, align 8
  %422 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %420, i8* %421, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* null)
  %423 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %424 = load i32, i32* %13, align 4
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32*, i32** %4, align 8
  %431 = call i32 @create_cache(i32** %416, i32* null, i32* %417, i32 4, i32 1, i32* %418, i32* %419, i32 4, i8* %422, i32 %423, i32 %424, %struct.TYPE_6__* %425, i32 %426, i32 %429, i32* %430)
  %432 = call i32 @SVN_ERR(i32 %431)
  %433 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %433
}

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @normalize_key_part(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_config(i8**, i32*, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @svn_cache__get_global_membuffer_cache(...) #1

declare dso_local i32 @create_cache(i32**, i32*, i32*, i32, i32, i32*, i32*, i32, i8*, i32, i32, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__create_dag_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
