; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_revert_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_revert_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.revert_baton_t = type { i64, i32* }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_DELETE_ACTUAL_NODE = common dso_local global i32 0, align 4
@STMT_ACTUAL_HAS_CHILDREN = common dso_local global i32 0, align 4
@SVN_ERR_WC_INVALID_OPERATION_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't revert '%s' without reverting children\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@STMT_SELECT_GE_OP_DEPTH_CHILDREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_UPDATE_OP_DEPTH_INCREASE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_WORKING_NODE = common dso_local global i32 0, align 4
@STMT_DELETE_WC_LOCK_ORPHAN = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST = common dso_local global i32 0, align 4
@STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_7__*, i8*, i32*)* @op_revert_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @op_revert_txn(i8* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.revert_baton_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.revert_baton_t*
  store %struct.revert_baton_t* %21, %struct.revert_baton_t** %10, align 8
  %22 = load %struct.revert_baton_t*, %struct.revert_baton_t** %10, align 8
  %23 = getelementptr inbounds %struct.revert_baton_t, %struct.revert_baton_t* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %29 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %27, i32 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @svn_sqlite__step(i64* %13, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_sqlite__reset(i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @STMT_DELETE_ACTUAL_NODE, align 4
  %51 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @svn_sqlite__update(i32* %16, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %43
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @STMT_ACTUAL_HAS_CHILDREN, align 4
  %70 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %68, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @svn_sqlite__step(i64* %13, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @svn_sqlite__reset(i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %65
  %88 = load i32, i32* @SVN_ERR_WC_INVALID_OPERATION_DEPTH, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @path_for_error_message(%struct.TYPE_7__* %90, i8* %91, i32* %92)
  %94 = call i32* @svn_error_createf(i32 %88, i32* null, i32 %89, i32 %93)
  store i32* %94, i32** %5, align 8
  br label %309

95:                                               ; preds = %65
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %5, align 8
  br label %309

97:                                               ; preds = %43
  %98 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %99 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @path_for_error_message(%struct.TYPE_7__* %100, i8* %101, i32* %102)
  %104 = call i32* @svn_error_createf(i32 %98, i32* null, i32 %99, i32 %103)
  store i32* %104, i32** %5, align 8
  br label %309

105:                                              ; preds = %4
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @svn_sqlite__column_int(i32* %106, i32 0)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = call i64 @svn_sqlite__column_boolean(i32* %108, i32 15)
  store i64 %109, i64* %15, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i8* @svn_sqlite__column_text(i32* %110, i32 17, i32* %111)
  store i8* %112, i8** %17, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @svn_sqlite__step(i64* %13, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @svn_sqlite__column_int(i32* %119, i32 0)
  store i32 %120, i32* %18, align 4
  br label %122

121:                                              ; preds = %105
  store i32 -1, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @svn_sqlite__reset(i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i8*, i8** %17, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i8*, i8** %17, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @svn_wc__db_op_break_move_internal(%struct.TYPE_7__* %129, i8* %130, i32 %131, i8* %132, i32* null, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %128, %122
  %137 = load i32, i32* %14, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %248

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @relpath_depth(i8* %141)
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %248

144:                                              ; preds = %139
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @STMT_SELECT_GE_OP_DEPTH_CHILDREN, align 4
  %149 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %147, i32 %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load i32*, i32** %12, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %154, i8* %155, i32 %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i32*, i32** %12, align 8
  %160 = call i32 @svn_sqlite__step(i64* %13, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load i32*, i32** %12, align 8
  %163 = call i32 @svn_sqlite__reset(i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i64, i64* %13, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %144
  %168 = load i32, i32* @SVN_ERR_WC_INVALID_OPERATION_DEPTH, align 4
  %169 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @path_for_error_message(%struct.TYPE_7__* %170, i8* %171, i32* %172)
  %174 = call i32* @svn_error_createf(i32 %168, i32* null, i32 %169, i32 %173)
  store i32* %174, i32** %5, align 8
  br label %309

175:                                              ; preds = %144
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @STMT_UPDATE_OP_DEPTH_INCREASE_RECURSIVE, align 4
  %180 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %178, i32 %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i32*, i32** %12, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %185, i8* %186, i32 %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @svn_sqlite__update(i32* %19, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @STMT_DELETE_WORKING_NODE, align 4
  %197 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %195, i32 %196)
  %198 = call i32 @SVN_ERR(i32 %197)
  %199 = load i32*, i32** %12, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %202, i8* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load i32*, i32** %12, align 8
  %207 = call i32 @svn_sqlite__step_done(i32* %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @STMT_DELETE_WC_LOCK_ORPHAN, align 4
  %213 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %211, i32 %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  %215 = load i32*, i32** %12, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %218, i8* %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  %222 = load i32*, i32** %12, align 8
  %223 = call i32 @svn_sqlite__step_done(i32* %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  %225 = load i64, i64* %15, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %175
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @clear_moved_to(%struct.TYPE_7__* %228, i8* %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  br label %233

233:                                              ; preds = %227, %175
  %234 = load i32, i32* %19, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load i8*, i8** %17, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %247, label %239

239:                                              ; preds = %236
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = call i32 @revert_maybe_raise_moved_away(%struct.TYPE_7__* %240, i32* %241, i8* %242, i32 %243, i32* %244)
  %246 = call i32 @SVN_ERR(i32 %245)
  br label %247

247:                                              ; preds = %239, %236, %233
  br label %248

248:                                              ; preds = %247, %139, %136
  %249 = load %struct.revert_baton_t*, %struct.revert_baton_t** %10, align 8
  %250 = getelementptr inbounds %struct.revert_baton_t, %struct.revert_baton_t* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %248
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @STMT_DELETE_ACTUAL_NODE, align 4
  %258 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %256, i32 %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  %260 = load i32*, i32** %12, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i8*, i8** %8, align 8
  %265 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %263, i8* %264)
  %266 = call i32 @SVN_ERR(i32 %265)
  %267 = load i32*, i32** %12, align 8
  %268 = call i32 @svn_sqlite__update(i32* %16, i32* %267)
  %269 = call i32 @SVN_ERR(i32 %268)
  br label %307

270:                                              ; preds = %248
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST, align 4
  %275 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %273, i32 %274)
  %276 = call i32 @SVN_ERR(i32 %275)
  %277 = load i32*, i32** %12, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %277, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %280, i8* %281)
  %283 = call i32 @SVN_ERR(i32 %282)
  %284 = load i32*, i32** %12, align 8
  %285 = call i32 @svn_sqlite__update(i32* %16, i32* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %306, label %289

289:                                              ; preds = %270
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST, align 4
  %294 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %292, i32 %293)
  %295 = call i32 @SVN_ERR(i32 %294)
  %296 = load i32*, i32** %12, align 8
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i8*, i8** %8, align 8
  %301 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %299, i8* %300)
  %302 = call i32 @SVN_ERR(i32 %301)
  %303 = load i32*, i32** %12, align 8
  %304 = call i32 @svn_sqlite__update(i32* %16, i32* %303)
  %305 = call i32 @SVN_ERR(i32 %304)
  br label %306

306:                                              ; preds = %289, %270
  br label %307

307:                                              ; preds = %306, %253
  %308 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %308, i32** %5, align 8
  br label %309

309:                                              ; preds = %307, %167, %97, %95, %87
  %310 = load i32*, i32** %5, align 8
  ret i32* %310
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_break_move_internal(%struct.TYPE_7__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @clear_moved_to(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @revert_maybe_raise_moved_away(%struct.TYPE_7__*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
