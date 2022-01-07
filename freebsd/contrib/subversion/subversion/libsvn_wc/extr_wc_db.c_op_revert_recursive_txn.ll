; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_revert_recursive_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_revert_recursive_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.revert_baton_t = type { i64 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_DELETE_ACTUAL_NODE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@SVN_ERR_WC_INVALID_OPERATION_DEPTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't revert '%s' without reverting parent\00", align 1
@STMT_SELECT_MOVED_OUTSIDE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE = common dso_local global i32 0, align 4
@STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE = common dso_local global i32 0, align 4
@STMT_SELECT_MOVED_HERE_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*, i8*, i32*)* @op_revert_recursive_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @op_revert_recursive_txn(i8* %0, %struct.TYPE_6__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.revert_baton_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.revert_baton_t*
  store %struct.revert_baton_t* %25, %struct.revert_baton_t** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %30 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %28, i32 %29)
  %31 = call i32 @SVN_ERR(i32* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = call i32 @SVN_ERR(i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @svn_sqlite__step(i64* %12, i32* %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @svn_sqlite__reset(i32* %45)
  %47 = call i32 @SVN_ERR(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @STMT_DELETE_ACTUAL_NODE, align 4
  %52 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %50, i32 %51)
  %53 = call i32 @SVN_ERR(i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %58)
  %60 = call i32 @SVN_ERR(i32* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = call i32* @svn_sqlite__update(i32* %16, i32* %61)
  %63 = call i32 @SVN_ERR(i32* %62)
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %5, align 8
  br label %310

68:                                               ; preds = %44
  %69 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @path_for_error_message(%struct.TYPE_6__* %71, i8* %72, i32* %73)
  %75 = call i32* @svn_error_createf(i32 %69, i32* null, i32 %70, i32 %74)
  store i32* %75, i32** %5, align 8
  br label %310

76:                                               ; preds = %4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @svn_sqlite__column_int(i32* %77, i32 0)
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = call i64 @svn_sqlite__column_boolean(i32* %79, i32 15)
  store i64 %80, i64* %15, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @svn_sqlite__reset(i32* %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @relpath_depth(i8* %88)
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* @SVN_ERR_WC_INVALID_OPERATION_DEPTH, align 4
  %93 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @path_for_error_message(%struct.TYPE_6__* %94, i8* %95, i32* %96)
  %98 = call i32* @svn_error_createf(i32 %92, i32* null, i32 %93, i32 %97)
  store i32* %98, i32** %5, align 8
  br label %310

99:                                               ; preds = %86, %76
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @STMT_SELECT_MOVED_OUTSIDE, align 4
  %104 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %102, i32 %103)
  %105 = call i32 @SVN_ERR(i32* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %109, i8* %110, i32 %111)
  %113 = call i32 @SVN_ERR(i32* %112)
  %114 = load i32*, i32** %11, align 8
  %115 = call i32* @svn_sqlite__step(i64* %12, i32* %114)
  %116 = call i32 @SVN_ERR(i32* %115)
  br label %117

117:                                              ; preds = %140, %99
  %118 = load i64, i64* %12, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load i32*, i32** %11, align 8
  %122 = call i8* @svn_sqlite__column_text(i32* %121, i32 0, i32* null)
  store i8* %122, i8** %18, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i8* @svn_sqlite__column_text(i32* %123, i32 1, i32* null)
  store i8* %124, i8** %19, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @svn_sqlite__column_int(i32* %125, i32 2)
  store i32 %126, i32* %20, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load i8*, i8** %19, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32* @svn_wc__db_op_break_move_internal(%struct.TYPE_6__* %127, i8* %128, i32 %129, i8* %130, i32* null, i32* %131)
  store i32* %132, i32** %21, align 8
  %133 = load i32*, i32** %21, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %120
  %136 = load i32*, i32** %21, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = call i32* @svn_sqlite__reset(i32* %137)
  %139 = call i32* @svn_error_compose_create(i32* %136, i32* %138)
  store i32* %139, i32** %5, align 8
  br label %310

140:                                              ; preds = %120
  %141 = load i32*, i32** %11, align 8
  %142 = call i32* @svn_sqlite__step(i64* %12, i32* %141)
  %143 = call i32 @SVN_ERR(i32* %142)
  br label %117

144:                                              ; preds = %117
  %145 = load i32*, i32** %11, align 8
  %146 = call i32* @svn_sqlite__reset(i32* %145)
  %147 = call i32 @SVN_ERR(i32* %146)
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  br label %153

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 1, %152 ]
  store i32 %154, i32* %14, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE, align 4
  %159 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %157, i32 %158)
  %160 = call i32 @SVN_ERR(i32* %159)
  %161 = load i32*, i32** %11, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %164, i8* %165, i32 %166)
  %168 = call i32 @SVN_ERR(i32* %167)
  %169 = load i32*, i32** %11, align 8
  %170 = call i32* @svn_sqlite__step_done(i32* %169)
  %171 = call i32 @SVN_ERR(i32* %170)
  %172 = load %struct.revert_baton_t*, %struct.revert_baton_t** %10, align 8
  %173 = getelementptr inbounds %struct.revert_baton_t, %struct.revert_baton_t* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %153
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @STMT_DELETE_ACTUAL_NODE_RECURSIVE, align 4
  %181 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %179, i32 %180)
  %182 = call i32 @SVN_ERR(i32* %181)
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %186, i8* %187)
  %189 = call i32 @SVN_ERR(i32* %188)
  %190 = load i32*, i32** %11, align 8
  %191 = call i32* @svn_sqlite__step_done(i32* %190)
  %192 = call i32 @SVN_ERR(i32* %191)
  br label %226

193:                                              ; preds = %153
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE, align 4
  %198 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %196, i32 %197)
  %199 = call i32 @SVN_ERR(i32* %198)
  %200 = load i32*, i32** %11, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %203, i8* %204)
  %206 = call i32 @SVN_ERR(i32* %205)
  %207 = load i32*, i32** %11, align 8
  %208 = call i32* @svn_sqlite__step_done(i32* %207)
  %209 = call i32 @SVN_ERR(i32* %208)
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE, align 4
  %214 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %212, i32 %213)
  %215 = call i32 @SVN_ERR(i32* %214)
  %216 = load i32*, i32** %11, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %8, align 8
  %221 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %219, i8* %220)
  %222 = call i32 @SVN_ERR(i32* %221)
  %223 = load i32*, i32** %11, align 8
  %224 = call i32* @svn_sqlite__step_done(i32* %223)
  %225 = call i32 @SVN_ERR(i32* %224)
  br label %226

226:                                              ; preds = %193, %176
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE, align 4
  %231 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %229, i32 %230)
  %232 = call i32 @SVN_ERR(i32* %231)
  %233 = load i32*, i32** %11, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i8*, i8** %8, align 8
  %238 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %236, i8* %237)
  %239 = call i32 @SVN_ERR(i32* %238)
  %240 = load i32*, i32** %11, align 8
  %241 = call i32* @svn_sqlite__step_done(i32* %240)
  %242 = call i32 @SVN_ERR(i32* %241)
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @STMT_SELECT_MOVED_HERE_CHILDREN, align 4
  %247 = call i32* @svn_sqlite__get_statement(i32** %11, i32 %245, i32 %246)
  %248 = call i32 @SVN_ERR(i32* %247)
  %249 = load i32*, i32** %11, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i8*, i8** %8, align 8
  %254 = call i32* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %252, i8* %253)
  %255 = call i32 @SVN_ERR(i32* %254)
  %256 = load i32*, i32** %11, align 8
  %257 = call i32* @svn_sqlite__step(i64* %12, i32* %256)
  %258 = call i32 @SVN_ERR(i32* %257)
  %259 = load i32*, i32** %9, align 8
  %260 = call i32* @svn_pool_create(i32* %259)
  store i32* %260, i32** %17, align 8
  br label %261

261:                                              ; preds = %282, %226
  %262 = load i64, i64* %12, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %261
  %265 = load i32*, i32** %17, align 8
  %266 = call i32 @svn_pool_clear(i32* %265)
  %267 = load i32*, i32** %11, align 8
  %268 = load i32*, i32** %17, align 8
  %269 = call i8* @svn_sqlite__column_text(i32* %267, i32 0, i32* %268)
  store i8* %269, i8** %22, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %271 = load i8*, i8** %22, align 8
  %272 = load i32*, i32** %17, align 8
  %273 = call i32* @clear_moved_to(%struct.TYPE_6__* %270, i8* %271, i32* %272)
  store i32* %273, i32** %23, align 8
  %274 = load i32*, i32** %23, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %264
  %277 = load i32*, i32** %23, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = call i32* @svn_sqlite__reset(i32* %278)
  %280 = call i32* @svn_error_compose_create(i32* %277, i32* %279)
  %281 = call i32* @svn_error_trace(i32* %280)
  store i32* %281, i32** %5, align 8
  br label %310

282:                                              ; preds = %264
  %283 = load i32*, i32** %11, align 8
  %284 = call i32* @svn_sqlite__step(i64* %12, i32* %283)
  %285 = call i32 @SVN_ERR(i32* %284)
  br label %261

286:                                              ; preds = %261
  %287 = load i32*, i32** %11, align 8
  %288 = call i32* @svn_sqlite__reset(i32* %287)
  %289 = call i32 @SVN_ERR(i32* %288)
  %290 = load i32*, i32** %17, align 8
  %291 = call i32 @svn_pool_destroy(i32* %290)
  %292 = load i32, i32* %13, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %308

294:                                              ; preds = %286
  %295 = load i32, i32* %13, align 4
  %296 = load i8*, i8** %8, align 8
  %297 = call i32 @relpath_depth(i8* %296)
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %294
  %300 = load i64, i64* %15, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %304 = load i8*, i8** %8, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = call i32* @clear_moved_to(%struct.TYPE_6__* %303, i8* %304, i32* %305)
  %307 = call i32 @SVN_ERR(i32* %306)
  br label %308

308:                                              ; preds = %302, %299, %294, %286
  %309 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %309, i32** %5, align 8
  br label %310

310:                                              ; preds = %308, %276, %135, %91, %68, %66
  %311 = load i32*, i32** %5, align 8
  ret i32* %311
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32* @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @svn_wc__db_op_break_move_internal(%struct.TYPE_6__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__step_done(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @clear_moved_to(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
