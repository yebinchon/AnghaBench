; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_read_single_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_read_single_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_wc__db_info_t = type { i64, i64, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i64, i64, i32*, i8*, %struct.svn_wc__db_moved_to_info_t*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svn_wc__db_moved_to_info_t = type { %struct.svn_wc__db_moved_to_info_t*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@STMT_SELECT_MOVED_TO_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_moved_here = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svn_wc__db_info_t**, %struct.TYPE_11__*, i8*, i64, i32*, i32*)* @read_single_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_single_info(%struct.svn_wc__db_info_t** %0, %struct.TYPE_11__* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.svn_wc__db_info_t**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.svn_wc__db_info_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.svn_wc__db_moved_to_info_t*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i64, align 8
  store %struct.svn_wc__db_info_t** %0, %struct.svn_wc__db_info_t*** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @apr_pcalloc(i32* %29, i32 160)
  %31 = bitcast i8* %30 to %struct.svn_wc__db_info_t*
  store %struct.svn_wc__db_info_t* %31, %struct.svn_wc__db_info_t** %13, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %6
  %35 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %36 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %35, i32 0, i32 0
  %37 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %38 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %37, i32 0, i32 1
  %39 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %40 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %39, i32 0, i32 23
  %41 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %42 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %41, i32 0, i32 22
  %43 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %44 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %43, i32 0, i32 21
  %45 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %46 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %45, i32 0, i32 20
  %47 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %48 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %47, i32 0, i32 19
  %49 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %50 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %49, i32 0, i32 18
  %51 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %52 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %51, i32 0, i32 14
  %53 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %54 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %53, i32 0, i32 28
  %55 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %56 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %55, i32 0, i32 27
  %57 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %58 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %57, i32 0, i32 26
  %59 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %60 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %59, i32 0, i32 25
  %61 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %62 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %61, i32 0, i32 24
  %63 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %64 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %63, i32 0, i32 13
  %65 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %66 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %65, i32 0, i32 12
  %67 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %68 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %67, i32 0, i32 15
  %69 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %70 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %69, i32 0, i32 17
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @read_info(i64* %36, i64* %38, i32* %40, i32* %42, i32* %14, i32* %44, i32* %46, i32* %48, i32* %50, i32** %15, i32* null, i8** %16, i32* null, i32* null, i32** %52, i32* %54, i32* %56, i32* %58, i32* %60, i32* %62, i64* %64, i64* %66, i8** %68, i64* %70, i64* %17, %struct.TYPE_11__* %71, i8* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %121

77:                                               ; preds = %6
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %17, align 8
  store i8* null, i8** %16, align 8
  %79 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %80 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %79, i32 0, i32 0
  %81 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %82 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %81, i32 0, i32 1
  %83 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %84 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %83, i32 0, i32 23
  %85 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %86 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %85, i32 0, i32 22
  %87 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %88 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %87, i32 0, i32 21
  %89 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %90 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %89, i32 0, i32 20
  %91 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %92 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %91, i32 0, i32 19
  %93 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %94 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %93, i32 0, i32 18
  %95 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %96 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %95, i32 0, i32 14
  %97 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %98 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %97, i32 0, i32 13
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @svn_wc__db_base_get_info_internal(i64* %80, i64* %82, i32* %84, i32* %86, i32* %14, i32* %88, i32* %90, i32* %92, i32* %94, i32** %15, i32* null, i32** %96, i64* %98, i32** %18, i64* %19, %struct.TYPE_11__* %99, i8* %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i8*, i8** @TRUE, align 8
  %106 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %107 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %106, i32 0, i32 15
  store i8* %105, i8** %107, align 8
  %108 = load i64, i64* %19, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %77
  %111 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %112 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @svn_node_file, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %110, %77
  %117 = phi i1 [ false, %77 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %120 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %34
  %122 = load i64, i64* %17, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %197

124:                                              ; preds = %121
  %125 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %126 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %125, i32 0, i32 15
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %131 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %130, i32 0, i32 17
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %197

134:                                              ; preds = %129, %124
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @STMT_SELECT_MOVED_TO_NODE, align 4
  %139 = call i32 @svn_sqlite__get_statement(i32** %20, i32 %137, i32 %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32*, i32** %20, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @svn_sqlite__bindf(i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %144, i8* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %20, align 8
  %149 = call i32 @svn_sqlite__step(i64* %21, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  br label %151

151:                                              ; preds = %154, %134
  %152 = load i64, i64* %21, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %151
  %155 = load i32*, i32** %20, align 8
  %156 = call i32 @svn_sqlite__column_int(i32* %155, i32 0)
  store i32 %156, i32* %23, align 4
  %157 = load i32*, i32** %20, align 8
  %158 = call i8* @svn_sqlite__column_text(i32* %157, i32 1, i32* null)
  store i8* %158, i8** %24, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i8* @apr_pcalloc(i32* %159, i32 24)
  %161 = bitcast i8* %160 to %struct.svn_wc__db_moved_to_info_t*
  store %struct.svn_wc__db_moved_to_info_t* %161, %struct.svn_wc__db_moved_to_info_t** %22, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %24, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i8* @svn_dirent_join(i32 %164, i8* %165, i32* %166)
  %168 = load %struct.svn_wc__db_moved_to_info_t*, %struct.svn_wc__db_moved_to_info_t** %22, align 8
  %169 = getelementptr inbounds %struct.svn_wc__db_moved_to_info_t, %struct.svn_wc__db_moved_to_info_t* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %23, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = call i8* @svn_relpath_prefix(i8* %170, i32 %171, i32* %172)
  store i8* %173, i8** %25, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i8*, i8** %25, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i8* @svn_dirent_join(i32 %176, i8* %177, i32* %178)
  %180 = load %struct.svn_wc__db_moved_to_info_t*, %struct.svn_wc__db_moved_to_info_t** %22, align 8
  %181 = getelementptr inbounds %struct.svn_wc__db_moved_to_info_t, %struct.svn_wc__db_moved_to_info_t* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %183 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %182, i32 0, i32 16
  %184 = load %struct.svn_wc__db_moved_to_info_t*, %struct.svn_wc__db_moved_to_info_t** %183, align 8
  %185 = load %struct.svn_wc__db_moved_to_info_t*, %struct.svn_wc__db_moved_to_info_t** %22, align 8
  %186 = getelementptr inbounds %struct.svn_wc__db_moved_to_info_t, %struct.svn_wc__db_moved_to_info_t* %185, i32 0, i32 0
  store %struct.svn_wc__db_moved_to_info_t* %184, %struct.svn_wc__db_moved_to_info_t** %186, align 8
  %187 = load %struct.svn_wc__db_moved_to_info_t*, %struct.svn_wc__db_moved_to_info_t** %22, align 8
  %188 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %189 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %188, i32 0, i32 16
  store %struct.svn_wc__db_moved_to_info_t* %187, %struct.svn_wc__db_moved_to_info_t** %189, align 8
  %190 = load i32*, i32** %20, align 8
  %191 = call i32 @svn_sqlite__step(i64* %21, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %151

193:                                              ; preds = %151
  %194 = load i32*, i32** %20, align 8
  %195 = call i32 @svn_sqlite__reset(i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  br label %197

197:                                              ; preds = %193, %129, %121
  %198 = load i64, i64* %10, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %241, label %200

200:                                              ; preds = %197
  %201 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %202 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %201, i32 0, i32 15
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %241

205:                                              ; preds = %200
  %206 = load i64, i64* %17, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %210 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @svn_node_file, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %241

214:                                              ; preds = %208, %205
  store i32** null, i32*** %27, align 8
  %215 = load i64, i64* %17, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %219 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %218, i32 0, i32 14
  store i32** %219, i32*** %27, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32**, i32*** %27, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = load i32*, i32** %12, align 8
  %226 = call i32 @svn_wc__db_base_get_info_internal(i64* null, i64* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** null, i32* null, i32** %221, i64* null, i32** null, i64* %26, %struct.TYPE_11__* %222, i8* %223, i32* %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  %228 = load i64, i64* %26, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %220
  %231 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %232 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @svn_node_file, align 8
  %235 = icmp eq i64 %233, %234
  br label %236

236:                                              ; preds = %230, %220
  %237 = phi i1 [ false, %220 ], [ %235, %230 ]
  %238 = zext i1 %237 to i32
  %239 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %240 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %236, %208, %200, %197
  %242 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %243 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @svn_wc__db_status_added, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %241
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @scan_addition(i64* %28, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_11__* %248, i8* %249, i32* %250, i32* %251)
  %253 = call i32 @SVN_ERR(i32 %252)
  %254 = load i64, i64* %28, align 8
  %255 = load i64, i64* @svn_wc__db_status_moved_here, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %259 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  %260 = load i64, i64* %28, align 8
  %261 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %262 = icmp eq i64 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %265 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %247, %241
  %267 = load i32*, i32** %15, align 8
  %268 = icmp ne i32* %267, null
  %269 = zext i1 %268 to i32
  %270 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %271 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %270, i32 0, i32 11
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** %16, align 8
  %273 = icmp ne i8* %272, null
  %274 = zext i1 %273 to i32
  %275 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %276 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %275, i32 0, i32 10
  store i32 %274, i32* %276, align 4
  %277 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %278 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %277, i32 0, i32 9
  %279 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %280 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %279, i32 0, i32 8
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %282 = load i32, i32* %14, align 4
  %283 = load i32*, i32** %11, align 8
  %284 = call i32 @svn_wc__db_fetch_repos_info(i32* %278, i32* %280, %struct.TYPE_11__* %281, i32 %282, i32* %283)
  %285 = call i32 @SVN_ERR(i32 %284)
  %286 = load i64, i64* %10, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %266
  %289 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %290 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @svn_node_dir, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %288
  %295 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %296 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %295, i32 0, i32 7
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load i32*, i32** %12, align 8
  %300 = call i32 @is_wclocked(i32* %296, %struct.TYPE_11__* %297, i8* %298, i32* %299)
  %301 = call i32 @SVN_ERR(i32 %300)
  br label %302

302:                                              ; preds = %294, %288, %266
  %303 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %304 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @svn_node_dir, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load i8*, i8** @TRUE, align 8
  %310 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %311 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %310, i32 0, i32 6
  store i8* %309, i8** %311, align 8
  br label %320

312:                                              ; preds = %302
  %313 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %314 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %313, i32 0, i32 6
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %316 = load i8*, i8** %9, align 8
  %317 = load i32*, i32** %12, align 8
  %318 = call i32 @find_conflict_descendants(i8** %314, %struct.TYPE_11__* %315, i8* %316, i32* %317)
  %319 = call i32 @SVN_ERR(i32 %318)
  br label %320

320:                                              ; preds = %312, %308
  %321 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %13, align 8
  %322 = load %struct.svn_wc__db_info_t**, %struct.svn_wc__db_info_t*** %7, align 8
  store %struct.svn_wc__db_info_t* %321, %struct.svn_wc__db_info_t** %322, align 8
  %323 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %323
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i8**, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i8**, i64*, i64*, %struct.TYPE_11__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32**, i64*, i32**, i64*, %struct.TYPE_11__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @scan_addition(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_11__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i32*, i32*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @is_wclocked(i32*, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @find_conflict_descendants(i8**, %struct.TYPE_11__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
