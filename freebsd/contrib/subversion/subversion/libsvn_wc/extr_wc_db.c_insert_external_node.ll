; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_insert_external_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_insert_external_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.insert_base_baton_t = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@STMT_INSERT_EXTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"issttsis\00", align 1
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, %struct.TYPE_15__*, i8*, i32*)* @insert_external_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @insert_external_node(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.insert_base_baton_t, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INVALID_REPOS_ID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  br label %38

25:                                               ; preds = %4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 23
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 22
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @create_repos_id(i64* %13, i32 %28, i32 %31, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %25, %21
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.TYPE_16__* @svn_wc__db_base_get_info_internal(i64* %10, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %12, %struct.TYPE_15__* %39, i8* %40, i32* %41, i32* %42)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %11, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %5, align 8
  br label %245

55:                                               ; preds = %46
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = call i32 @svn_error_clear(%struct.TYPE_16__* %56)
  br label %69

58:                                               ; preds = %38
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @svn_wc__db_status_normal, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %67 = call %struct.TYPE_16__* @svn_error_create(i32 %66, i32* null, i32* null)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %5, align 8
  br label %245

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @svn_node_file, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @svn_node_symlink, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %158

81:                                               ; preds = %75, %69
  %82 = call i32 @blank_ibb(%struct.insert_base_baton_t* %15)
  %83 = load i64, i64* @svn_wc__db_status_normal, align 8
  %84 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 18
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 21
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 17
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 20
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 16
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 19
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 15
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 18
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 14
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 17
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 13
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 16
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 12
  store i32 %113, i32* %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 15
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 11
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 14
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 10
  store i32 %121, i32* %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 9
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 8
  store i32 %129, i32* %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 7
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 6
  store i32 %137, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 5
  store i32 %141, i32* %142, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 4
  store i32 %145, i32* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 3
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @TRUE, align 4
  %152 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %15, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @insert_base_node(%struct.insert_base_baton_t* %15, %struct.TYPE_15__* %153, i8* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %168

158:                                              ; preds = %75
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @add_work_items(i32 %161, i32 %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  br label %168

168:                                              ; preds = %158, %81
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @svn_wc__db_status_normal, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %179 = icmp eq i64 %177, %178
  br label %180

180:                                              ; preds = %174, %168
  %181 = phi i1 [ true, %168 ], [ %179, %174 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @SVN_ERR_ASSERT(i32 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @STMT_INSERT_EXTERNAL, align 4
  %188 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %186, i32 %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32*, i32** %14, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @svn_relpath_dirname(i8* %195, i32* %196)
  %198 = load i32, i32* @presence_map, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @kind_map, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* %13, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @svn_sqlite__bindf(i32* %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %193, i8* %194, i32 %197, i32 %198, i64 %201, i32 %202, i64 %205, i32 %208, i64 %209, i32 %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @SVN_IS_VALID_REVNUM(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %180
  %221 = load i32*, i32** %14, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @svn_sqlite__bind_revnum(i32* %221, i32 9, i32 %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %220, %180
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @SVN_IS_VALID_REVNUM(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load i32*, i32** %14, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @svn_sqlite__bind_revnum(i32* %234, i32 10, i32 %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  br label %240

240:                                              ; preds = %233, %227
  %241 = load i32*, i32** %14, align 8
  %242 = call i32 @svn_sqlite__insert(i32* null, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %244, %struct.TYPE_16__** %5, align 8
  br label %245

245:                                              ; preds = %240, %65, %52
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %246
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_repos_id(i64*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_base_get_info_internal(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @blank_ibb(%struct.insert_base_baton_t*) #1

declare dso_local i32 @insert_base_node(%struct.insert_base_baton_t*, %struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @add_work_items(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_sqlite__bind_revnum(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
