; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_op_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_op_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_24__* null, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot copy '%s' excluded by server\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot handle status of '%s'\00", align 1
@STMT_SELECT_OP_DEPTH_CHILDREN = common dso_local global i32 0, align 4
@STMT_INSERT_WORKING_NODE_COPY_FROM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"issdst\00", align 1
@presence_map = common dso_local global i32 0, align 4
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_INSERT_NODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"isdsisrtnt\00", align 1
@kind_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_23__*, i8*, %struct.TYPE_23__*, i8*, i32*, i32, i32*)* @db_op_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @db_op_copy(%struct.TYPE_23__* %0, i8* %1, %struct.TYPE_23__* %2, i8* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @get_info_for_copy(i32* %21, i8** %16, i32* %17, i32* %18, i64* %25, i32* %20, %struct.TYPE_23__* %34, i8* %35, %struct.TYPE_23__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32, i32* %21, align 4
  %42 = load i8*, i8** %16, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @op_depth_for_copy(i32* %22, i32* %23, i32* %24, i32 %41, i8* %42, i32 %43, %struct.TYPE_23__* %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %25, align 8
  %50 = load i64, i64* @svn_node_file, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %7
  %53 = load i64, i64* %25, align 8
  %54 = load i64, i64* @svn_node_dir, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %7
  %57 = phi i1 [ true, %7 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @SVN_ERR_ASSERT(i32 %58)
  %60 = load i32, i32* %18, align 4
  switch i32 %60, label %133 [
    i32 130, label %61
    i32 135, label %61
    i32 131, label %61
    i32 134, label %61
    i32 133, label %62
    i32 129, label %114
    i32 132, label %114
    i32 128, label %125
  ]

61:                                               ; preds = %56, %56, %56, %56
  store i32 130, i32* %19, align 4
  br label %141

62:                                               ; preds = %56
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call %struct.TYPE_24__* @read_info(i32* %28, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_23__* %66, i8* %67, i32* %68, i32* %69)
  store %struct.TYPE_24__* %70, %struct.TYPE_24__** %27, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %72 = icmp ne %struct.TYPE_24__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %81 = call i32 @svn_error_clear(%struct.TYPE_24__* %80)
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %84 = call %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__* %83)
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %8, align 8
  br label %361

85:                                               ; preds = %79
  br label %99

86:                                               ; preds = %65
  %87 = load i32, i32* %28, align 4
  %88 = icmp eq i32 %87, 133
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @add_work_items(i32 %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %97, %struct.TYPE_24__** %8, align 8
  br label %361

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %85
  br label %113

100:                                              ; preds = %62
  %101 = load i8*, i8** %16, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @add_work_items(i32 %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %8, align 8
  br label %361

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %56, %56, %113
  %115 = load i32, i32* %23, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %23, align 4
  store i32 %118, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 132
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 132, i32* %19, align 4
  br label %124

123:                                              ; preds = %119
  store i32 129, i32* %19, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %141

125:                                              ; preds = %56
  %126 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %127 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @path_for_error_message(%struct.TYPE_23__* %128, i8* %129, i32* %130)
  %132 = call %struct.TYPE_24__* @svn_error_createf(i32 %126, i32* null, i32 %127, i32 %131)
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %8, align 8
  br label %361

133:                                              ; preds = %56
  %134 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %135 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @path_for_error_message(%struct.TYPE_23__* %136, i8* %137, i32* %138)
  %140 = call %struct.TYPE_24__* @svn_error_createf(i32 %134, i32* null, i32 %135, i32 %139)
  store %struct.TYPE_24__* %140, %struct.TYPE_24__** %8, align 8
  br label %361

141:                                              ; preds = %124, %61
  %142 = load i64, i64* %25, align 8
  %143 = load i64, i64* @svn_node_dir, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @op_depth_of(i32* %29, %struct.TYPE_23__* %146, i8* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* @STMT_SELECT_OP_DEPTH_CHILDREN, align 4
  %153 = load i32, i32* %29, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @gather_children(i32** %26, %struct.TYPE_23__* %150, i8* %151, i32 %152, i32 %153, i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %159

158:                                              ; preds = %141
  store i32* null, i32** %26, align 8
  br label %159

159:                                              ; preds = %158, %145
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = icmp eq %struct.TYPE_23__* %160, %161
  br i1 %162, label %163, label %336

163:                                              ; preds = %159
  %164 = load i8*, i8** %12, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i8* @svn_relpath_dirname(i8* %164, i32* %165)
  store i8* %166, i8** %31, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @STMT_INSERT_WORKING_NODE_COPY_FROM, align 4
  %171 = call i32 @svn_sqlite__get_statement(i32** %30, i32 %169, i32 %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load i32*, i32** %30, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i8*, i8** %10, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load i32, i32* %22, align 4
  %180 = load i8*, i8** %31, align 8
  %181 = load i32, i32* @presence_map, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %176, i8* %177, i8* %178, i32 %179, i8* %180, i32 %181, i32 %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load i32, i32* %14, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %274

187:                                              ; preds = %163
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @relpath_depth(i8* %188)
  %190 = load i32, i32* %14, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %187
  %193 = load i32, i32* %18, align 4
  %194 = icmp eq i32 %193, 135
  br i1 %194, label %205, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %18, align 4
  %197 = icmp eq i32 %196, 134
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198, %195
  %202 = load i32*, i32** %30, align 8
  %203 = call i32 @svn_sqlite__bind_int(i32* %202, i32 7, i32 1)
  %204 = call i32 @SVN_ERR(i32 %203)
  br label %205

205:                                              ; preds = %201, %198, %192
  br label %273

206:                                              ; preds = %187
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %211 = call i32 @svn_sqlite__get_statement(i32** %32, i32 %209, i32 %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  %213 = load i32*, i32** %32, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %31, align 8
  %218 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %216, i8* %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i32*, i32** %32, align 8
  %221 = call i32 @svn_sqlite__step(i32* %33, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  %223 = load i32, i32* %33, align 4
  %224 = call i32 @SVN_ERR_ASSERT(i32 %223)
  %225 = load i32*, i32** %32, align 8
  %226 = call i64 @svn_sqlite__column_boolean(i32* %225, i32 15)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %206
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %24, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load i32*, i32** %30, align 8
  %234 = call i32 @svn_sqlite__bind_int(i32* %233, i32 7, i32 1)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load i32*, i32** %32, align 8
  %237 = call i32 @svn_sqlite__reset(i32* %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  br label %272

239:                                              ; preds = %228, %206
  %240 = load i32*, i32** %32, align 8
  %241 = call i32 @svn_sqlite__reset(i32* %240)
  %242 = call i32 @SVN_ERR(i32 %241)
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %247 = call i32 @svn_sqlite__get_statement(i32** %32, i32 %245, i32 %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  %249 = load i32*, i32** %32, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i8*, i8** %10, align 8
  %254 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %252, i8* %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load i32*, i32** %32, align 8
  %257 = call i32 @svn_sqlite__step(i32* %33, i32* %256)
  %258 = call i32 @SVN_ERR(i32 %257)
  %259 = load i32, i32* %33, align 4
  %260 = call i32 @SVN_ERR_ASSERT(i32 %259)
  %261 = load i32*, i32** %32, align 8
  %262 = call i64 @svn_sqlite__column_boolean(i32* %261, i32 15)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %239
  %265 = load i32*, i32** %30, align 8
  %266 = call i32 @svn_sqlite__bind_int(i32* %265, i32 7, i32 1)
  %267 = call i32 @SVN_ERR(i32 %266)
  br label %268

268:                                              ; preds = %264, %239
  %269 = load i32*, i32** %32, align 8
  %270 = call i32 @svn_sqlite__reset(i32* %269)
  %271 = call i32 @SVN_ERR(i32 %270)
  br label %272

272:                                              ; preds = %268, %232
  br label %273

273:                                              ; preds = %272, %205
  br label %274

274:                                              ; preds = %273, %163
  %275 = load i32*, i32** %30, align 8
  %276 = call i32 @svn_sqlite__step_done(i32* %275)
  %277 = call i32 @SVN_ERR(i32 %276)
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %279 = load i8*, i8** %10, align 8
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %281 = load i8*, i8** %12, align 8
  %282 = load i32*, i32** %15, align 8
  %283 = call i32 @copy_actual(%struct.TYPE_23__* %278, i8* %279, %struct.TYPE_23__* %280, i8* %281, i32* %282)
  %284 = call i32 @SVN_ERR(i32 %283)
  %285 = load i32, i32* %23, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %312

287:                                              ; preds = %274
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @STMT_INSERT_NODE, align 4
  %292 = call i32 @svn_sqlite__get_statement(i32** %30, i32 %290, i32 %291)
  %293 = call i32 @SVN_ERR(i32 %292)
  %294 = load i32*, i32** %30, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i8*, i8** %12, align 8
  %299 = load i32, i32* %23, align 4
  %300 = load i8*, i8** %31, align 8
  %301 = load i32, i32* %21, align 4
  %302 = load i8*, i8** %16, align 8
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @presence_map, align 4
  %305 = load i32, i32* @kind_map, align 4
  %306 = load i64, i64* %25, align 8
  %307 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %294, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %297, i8* %298, i32 %299, i8* %300, i32 %301, i8* %302, i32 %303, i32 %304, i32 129, i32 %305, i64 %306)
  %308 = call i32 @SVN_ERR(i32 %307)
  %309 = load i32*, i32** %30, align 8
  %310 = call i32 @svn_sqlite__step_done(i32* %309)
  %311 = call i32 @SVN_ERR(i32 %310)
  br label %312

312:                                              ; preds = %287, %274
  %313 = load i64, i64* %25, align 8
  %314 = load i64, i64* @svn_node_dir, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %335

316:                                              ; preds = %312
  %317 = load i32, i32* %19, align 4
  %318 = icmp eq i32 %317, 130
  br i1 %318, label %319, label %335

319:                                              ; preds = %316
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i8*, i8** %12, align 8
  %327 = load i32, i32* %21, align 4
  %328 = load i8*, i8** %16, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load i32*, i32** %26, align 8
  %331 = load i32, i32* %22, align 4
  %332 = load i32*, i32** %15, align 8
  %333 = call i32 @insert_incomplete_children(i32 %322, i32 %325, i8* %326, i32 %327, i8* %328, i32 %329, i32* %330, i32 %331, i32* %332)
  %334 = call i32 @SVN_ERR(i32 %333)
  br label %335

335:                                              ; preds = %319, %316, %312
  br label %352

336:                                              ; preds = %159
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %338 = load i8*, i8** %10, align 8
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %340 = load i8*, i8** %12, align 8
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* %22, align 4
  %343 = load i32, i32* %23, align 4
  %344 = load i64, i64* %25, align 8
  %345 = load i32*, i32** %26, align 8
  %346 = load i32, i32* %21, align 4
  %347 = load i8*, i8** %16, align 8
  %348 = load i32, i32* %17, align 4
  %349 = load i32*, i32** %15, align 8
  %350 = call i32 @cross_db_copy(%struct.TYPE_23__* %337, i8* %338, %struct.TYPE_23__* %339, i8* %340, i32 %341, i32 %342, i32 %343, i64 %344, i32* %345, i32 %346, i8* %347, i32 %348, i32* %349)
  %351 = call i32 @SVN_ERR(i32 %350)
  br label %352

352:                                              ; preds = %336, %335
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %13, align 8
  %357 = load i32*, i32** %15, align 8
  %358 = call i32 @add_work_items(i32 %355, i32* %356, i32* %357)
  %359 = call i32 @SVN_ERR(i32 %358)
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %360, %struct.TYPE_24__** %8, align 8
  br label %361

361:                                              ; preds = %352, %133, %125, %103, %89, %82
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  ret %struct.TYPE_24__* %362
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_info_for_copy(i32*, i8**, i32*, i32*, i64*, i32*, %struct.TYPE_23__*, i8*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @op_depth_for_copy(i32*, i32*, i32*, i32, i8*, i32, %struct.TYPE_23__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_24__* @read_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_23__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__*) #1

declare dso_local i32 @add_work_items(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_23__*, i8*, i32*) #1

declare dso_local i32 @op_depth_of(i32*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @gather_children(i32**, %struct.TYPE_23__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__bind_int(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @copy_actual(%struct.TYPE_23__*, i8*, %struct.TYPE_23__*, i8*, i32*) #1

declare dso_local i32 @insert_incomplete_children(i32, i32, i8*, i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @cross_db_copy(%struct.TYPE_23__*, i8*, %struct.TYPE_23__*, i8*, i32, i32, i32, i64, i32*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
