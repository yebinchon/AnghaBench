; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_svn_fs_x__initialize_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_svn_fs_x__initialize_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"fsx:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ns:\00", align 1
@svn_fs_x__serialize_dir_entries = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_dir_entries = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@SVN_CACHE__MEMBUFFER_HIGH_PRIORITY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_x__serialize_node_revision = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_node_revision = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"NODEREVS\00", align 1
@svn_fs_x__serialize_rep_header = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_rep_header = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"REPHEADER\00", align 1
@SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@svn_fs_x__serialize_changes = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_changes = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"CHANGES\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@svn_fs_x__serialize_properties = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_properties = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"REVPROP\00", align 1
@svn_fs_x__serialize_txdelta_window = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_txdelta_window = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"TXDELTA_WINDOW\00", align 1
@SVN_CACHE__MEMBUFFER_LOW_PRIORITY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"COMBINED_WINDOW\00", align 1
@svn_fs_x__serialize_noderevs_container = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_noderevs_container = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"NODEREVSCNT\00", align 1
@svn_fs_x__serialize_changes_container = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_changes_container = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"CHANGESCNT\00", align 1
@svn_fs_x__serialize_reps_container = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_reps_container = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"REPSCNT\00", align 1
@svn_fs_x__serialize_l2p_header = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_l2p_header = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"L2P_HEADER\00", align 1
@svn_fs_x__serialize_l2p_page = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_l2p_page = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"L2P_PAGE\00", align 1
@svn_fs_x__serialize_p2l_header = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_p2l_header = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"P2L_HEADER\00", align 1
@svn_fs_x__serialize_p2l_page = common dso_local global i32* null, align 8
@svn_fs_x__deserialize_p2l_page = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"P2L_PAGE\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@dump_global_cache_statistics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__initialize_caches(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 19
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @normalize_key_part(i32 %29, i32* %30)
  %32 = load i32, i32* @SVN_VA_NULL, align 4
  %33 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @read_config(i8** %13, i32* %9, i32* %10, i32* %11, i32* %12, %struct.TYPE_7__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @SVN_VA_NULL, align 4
  %45 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = call i32* (...) @svn_cache__get_global_membuffer_cache()
  store i32* %50, i32** %7, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @svn_fs_x__create_dag_cache(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 18
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 17
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** @svn_fs_x__serialize_dir_entries, align 8
  %61 = load i32*, i32** @svn_fs_x__deserialize_dir_entries, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @SVN_VA_NULL, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %62, i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @create_cache(i32* %58, i32* null, i32* %59, i32 1024, i32 8, i32* %60, i32* %61, i32 4, i8* %67, i32 %68, i32 %69, %struct.TYPE_7__* %70, i32 %71, i32 %72, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 16
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** @svn_fs_x__serialize_node_revision, align 8
  %83 = load i32*, i32** @svn_fs_x__deserialize_node_revision, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @SVN_VA_NULL, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %84, i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @create_cache(i32* %80, i32* null, i32* %81, i32 32, i32 32, i32* %82, i32* %83, i32 4, i8* %89, i32 %90, i32 %91, %struct.TYPE_7__* %92, i32 %93, i32 %94, i32 %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 15
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** @svn_fs_x__serialize_rep_header, align 8
  %105 = load i32*, i32** @svn_fs_x__deserialize_rep_header, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* @SVN_VA_NULL, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %106, i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @create_cache(i32* %102, i32* null, i32* %103, i32 1, i32 1000, i32* %104, i32* %105, i32 4, i8* %111, i32 %112, i32 %113, %struct.TYPE_7__* %114, i32 %115, i32 %116, i32 %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 14
  %125 = load i32*, i32** %7, align 8
  %126 = load i32*, i32** @svn_fs_x__serialize_changes, align 8
  %127 = load i32*, i32** @svn_fs_x__deserialize_changes, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @SVN_VA_NULL, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %128, i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @FALSE, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @create_cache(i32* %124, i32* null, i32* %125, i32 1, i32 8, i32* %126, i32* %127, i32 4, i8* %133, i32 0, i32 %134, %struct.TYPE_7__* %135, i32 %136, i32 %137, i32 %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 13
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 12
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* @SVN_VA_NULL, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %150, i8* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @create_cache(i32* %145, i32* %148, i32* %149, i32 0, i32 0, i32* null, i32* null, i32 4, i8* %155, i32 %156, i32 %157, %struct.TYPE_7__* %158, i32 %159, i32 %163, i32 %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 11
  %172 = load i32*, i32** %7, align 8
  %173 = load i32*, i32** @svn_fs_x__serialize_properties, align 8
  %174 = load i32*, i32** @svn_fs_x__deserialize_properties, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* @SVN_VA_NULL, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %175, i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %179)
  %181 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @create_cache(i32* %171, i32* null, i32* %172, i32 0, i32 0, i32* %173, i32* %174, i32 4, i8* %180, i32 %181, i32 %182, %struct.TYPE_7__* %183, i32 %184, i32 %188, i32 %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 10
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** @svn_fs_x__serialize_properties, align 8
  %199 = load i32*, i32** @svn_fs_x__deserialize_properties, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = load i32, i32* @SVN_VA_NULL, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %200, i8* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %204)
  %206 = load i32, i32* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @create_cache(i32* %196, i32* null, i32* %197, i32 0, i32 0, i32* %198, i32* %199, i32 4, i8* %205, i32 %206, i32 %207, %struct.TYPE_7__* %208, i32 %209, i32 %213, i32 %216, i32* %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 9
  %222 = load i32*, i32** %7, align 8
  %223 = load i32*, i32** @svn_fs_x__serialize_txdelta_window, align 8
  %224 = load i32*, i32** @svn_fs_x__deserialize_txdelta_window, align 8
  %225 = load i32*, i32** %4, align 8
  %226 = load i8*, i8** %6, align 8
  %227 = load i32, i32* @SVN_VA_NULL, align 4
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %225, i8* %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %229)
  %231 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 @create_cache(i32* %221, i32* null, i32* %222, i32 0, i32 0, i32* %223, i32* %224, i32 4, i8* %230, i32 %231, i32 %232, %struct.TYPE_7__* %233, i32 %234, i32 %238, i32 %241, i32* %242)
  %244 = call i32 @SVN_ERR(i32 %243)
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 8
  %247 = load i32*, i32** %7, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = load i8*, i8** %6, align 8
  %250 = load i32, i32* @SVN_VA_NULL, align 4
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  %253 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %248, i8* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %252)
  %254 = load i32, i32* @SVN_CACHE__MEMBUFFER_LOW_PRIORITY, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @create_cache(i32* %246, i32* null, i32* %247, i32 0, i32 0, i32* null, i32* null, i32 4, i8* %253, i32 %254, i32 %255, %struct.TYPE_7__* %256, i32 %257, i32 %261, i32 %264, i32* %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 7
  %270 = load i32*, i32** %7, align 8
  %271 = load i32*, i32** @svn_fs_x__serialize_noderevs_container, align 8
  %272 = load i32*, i32** @svn_fs_x__deserialize_noderevs_container, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = load i32, i32* @SVN_VA_NULL, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %273, i8* %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %277)
  %279 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @FALSE, align 4
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32*, i32** %4, align 8
  %288 = call i32 @create_cache(i32* %269, i32* null, i32* %270, i32 16, i32 4, i32* %271, i32* %272, i32 4, i8* %278, i32 %279, i32 %280, %struct.TYPE_7__* %281, i32 %282, i32 %283, i32 %286, i32* %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 6
  %292 = load i32*, i32** %7, align 8
  %293 = load i32*, i32** @svn_fs_x__serialize_changes_container, align 8
  %294 = load i32*, i32** @svn_fs_x__deserialize_changes_container, align 8
  %295 = load i32*, i32** %4, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = load i32, i32* @SVN_VA_NULL, align 4
  %298 = sext i32 %297 to i64
  %299 = inttoptr i64 %298 to i8*
  %300 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %295, i8* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %299)
  %301 = load i32, i32* %14, align 4
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @FALSE, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @create_cache(i32* %291, i32* null, i32* %292, i32 0, i32 0, i32* %293, i32* %294, i32 4, i8* %300, i32 0, i32 %301, %struct.TYPE_7__* %302, i32 %303, i32 %304, i32 %307, i32* %308)
  %310 = call i32 @SVN_ERR(i32 %309)
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 5
  %313 = load i32*, i32** %7, align 8
  %314 = load i32*, i32** @svn_fs_x__serialize_reps_container, align 8
  %315 = load i32*, i32** @svn_fs_x__deserialize_reps_container, align 8
  %316 = load i32*, i32** %4, align 8
  %317 = load i8*, i8** %6, align 8
  %318 = load i32, i32* @SVN_VA_NULL, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %316, i8* %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %320)
  %322 = load i32, i32* %14, align 4
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @FALSE, align 4
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32*, i32** %4, align 8
  %330 = call i32 @create_cache(i32* %312, i32* null, i32* %313, i32 0, i32 0, i32* %314, i32* %315, i32 4, i8* %321, i32 0, i32 %322, %struct.TYPE_7__* %323, i32 %324, i32 %325, i32 %328, i32* %329)
  %331 = call i32 @SVN_ERR(i32 %330)
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 4
  %334 = load i32*, i32** %7, align 8
  %335 = load i32*, i32** @svn_fs_x__serialize_l2p_header, align 8
  %336 = load i32*, i32** @svn_fs_x__deserialize_l2p_header, align 8
  %337 = load i32*, i32** %4, align 8
  %338 = load i8*, i8** %6, align 8
  %339 = load i32, i32* @SVN_VA_NULL, align 4
  %340 = sext i32 %339 to i64
  %341 = inttoptr i64 %340 to i8*
  %342 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %337, i8* %338, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %341)
  %343 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %344 = load i32, i32* %14, align 4
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* @FALSE, align 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32*, i32** %4, align 8
  %352 = call i32 @create_cache(i32* %333, i32* null, i32* %334, i32 64, i32 16, i32* %335, i32* %336, i32 4, i8* %342, i32 %343, i32 %344, %struct.TYPE_7__* %345, i32 %346, i32 %347, i32 %350, i32* %351)
  %353 = call i32 @SVN_ERR(i32 %352)
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  %356 = load i32*, i32** %7, align 8
  %357 = load i32*, i32** @svn_fs_x__serialize_l2p_page, align 8
  %358 = load i32*, i32** @svn_fs_x__deserialize_l2p_page, align 8
  %359 = load i32*, i32** %4, align 8
  %360 = load i8*, i8** %6, align 8
  %361 = load i32, i32* @SVN_VA_NULL, align 4
  %362 = sext i32 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %359, i8* %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %363)
  %365 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %366 = load i32, i32* %14, align 4
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %368 = load i32, i32* %8, align 4
  %369 = load i32, i32* @FALSE, align 4
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32*, i32** %4, align 8
  %374 = call i32 @create_cache(i32* %355, i32* null, i32* %356, i32 64, i32 16, i32* %357, i32* %358, i32 4, i8* %364, i32 %365, i32 %366, %struct.TYPE_7__* %367, i32 %368, i32 %369, i32 %372, i32* %373)
  %375 = call i32 @SVN_ERR(i32 %374)
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  %378 = load i32*, i32** %7, align 8
  %379 = load i32*, i32** @svn_fs_x__serialize_p2l_header, align 8
  %380 = load i32*, i32** @svn_fs_x__deserialize_p2l_header, align 8
  %381 = load i32*, i32** %4, align 8
  %382 = load i8*, i8** %6, align 8
  %383 = load i32, i32* @SVN_VA_NULL, align 4
  %384 = sext i32 %383 to i64
  %385 = inttoptr i64 %384 to i8*
  %386 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %381, i8* %382, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %385)
  %387 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %388 = load i32, i32* %14, align 4
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* @FALSE, align 4
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32*, i32** %4, align 8
  %396 = call i32 @create_cache(i32* %377, i32* null, i32* %378, i32 4, i32 1, i32* %379, i32* %380, i32 4, i8* %386, i32 %387, i32 %388, %struct.TYPE_7__* %389, i32 %390, i32 %391, i32 %394, i32* %395)
  %397 = call i32 @SVN_ERR(i32 %396)
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 1
  %400 = load i32*, i32** %7, align 8
  %401 = load i32*, i32** @svn_fs_x__serialize_p2l_page, align 8
  %402 = load i32*, i32** @svn_fs_x__deserialize_p2l_page, align 8
  %403 = load i32*, i32** %4, align 8
  %404 = load i8*, i8** %6, align 8
  %405 = load i32, i32* @SVN_VA_NULL, align 4
  %406 = sext i32 %405 to i64
  %407 = inttoptr i64 %406 to i8*
  %408 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %403, i8* %404, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %407)
  %409 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %410 = load i32, i32* %14, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* @FALSE, align 4
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32*, i32** %4, align 8
  %418 = call i32 @create_cache(i32* %399, i32* null, i32* %400, i32 4, i32 16, i32* %401, i32* %402, i32 4, i8* %408, i32 %409, i32 %410, %struct.TYPE_7__* %411, i32 %412, i32 %413, i32 %416, i32* %417)
  %419 = call i32 @SVN_ERR(i32 %418)
  %420 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %420
}

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @normalize_key_part(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_config(i8**, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @svn_cache__get_global_membuffer_cache(...) #1

declare dso_local i32 @svn_fs_x__create_dag_cache(i32) #1

declare dso_local i32 @create_cache(i32*, i32*, i32*, i32, i32, i32*, i32*, i32, i8*, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
