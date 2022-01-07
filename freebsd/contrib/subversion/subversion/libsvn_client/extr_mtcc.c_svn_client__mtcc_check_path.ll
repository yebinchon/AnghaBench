; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32*, i64, i8* }
%struct.TYPE_9__ = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@OP_OPEN_FILE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@OP_OPEN_DIR = common dso_local global i64 0, align 8
@OP_ADD_DIR = common dso_local global i64 0, align 8
@OP_ADD_FILE = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Can't perform file operation on '%s' as it is not a file\00", align 1
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Can't perform directory operation on '%s' as it is not a directory\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't open '%s' as it does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_check_path(i64* %0, i8* %1, i64 %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @svn_relpath_is_canonical(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @SVN_PATH_IS_EMPTY(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = call i64 @MTCC_UNMODIFIED(%struct.TYPE_8__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_ra_check_path(i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %38, i64* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @svn_node_file, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %32
  %53 = load i64, i64* @OP_OPEN_FILE, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %52, %32
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %6, align 8
  br label %256

64:                                               ; preds = %25, %21, %5
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @mtcc_op_find(%struct.TYPE_9__** %14, i32* null, i8* %65, %struct.TYPE_10__* %68, i8* %69, i32 %70, i32 %71, i32 %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %64
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %221

83:                                               ; preds = %80
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %221, label %88

88:                                               ; preds = %83, %64
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @mtcc_get_origin(i8** %12, i32* %13, i8* %89, i8* %90, %struct.TYPE_8__* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i64, i64* @svn_node_none, align 8
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  br label %111

101:                                              ; preds = %88
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i64*, i64** %7, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @svn_ra_check_path(i32 %104, i8* %105, i32 %106, i64* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %111

111:                                              ; preds = %101, %98
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %113 = icmp ne %struct.TYPE_9__* %112, null
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @svn_node_dir, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OP_OPEN_DIR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @OP_ADD_DIR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125, %119
  %132 = load i8*, i8** @TRUE, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %153

135:                                              ; preds = %125
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OP_OPEN_FILE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @OP_ADD_FILE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141, %135
  %148 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %149 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i8*, i8** %8, align 8
  %151 = call i32* @svn_error_createf(i32 %148, i32* null, i32 %149, i8* %150)
  store i32* %151, i32** %6, align 8
  br label %256

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %131
  br label %219

154:                                              ; preds = %114, %111
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %156 = icmp ne %struct.TYPE_9__* %155, null
  br i1 %156, label %157, label %197

157:                                              ; preds = %154
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @svn_node_file, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %157
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @OP_OPEN_FILE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @OP_ADD_FILE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168, %162
  %175 = load i8*, i8** @TRUE, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  br label %196

178:                                              ; preds = %168
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @OP_OPEN_DIR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @OP_ADD_DIR, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184, %178
  %191 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %192 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %193 = load i8*, i8** %8, align 8
  %194 = call i32* @svn_error_createf(i32 %191, i32* null, i32 %192, i8* %193)
  store i32* %194, i32** %6, align 8
  br label %256

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %174
  br label %218

197:                                              ; preds = %157, %154
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %199 = icmp ne %struct.TYPE_9__* %198, null
  br i1 %199, label %200, label %217

200:                                              ; preds = %197
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @OP_OPEN_DIR, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @OP_OPEN_FILE, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %206, %200
  %213 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %214 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i8*, i8** %8, align 8
  %216 = call i32* @svn_error_createf(i32 %213, i32* null, i32 %214, i8* %215)
  store i32* %216, i32** %6, align 8
  br label %256

217:                                              ; preds = %206, %197
  br label %218

218:                                              ; preds = %217, %196
  br label %219

219:                                              ; preds = %218, %153
  %220 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %220, i32** %6, align 8
  br label %256

221:                                              ; preds = %83, %80
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @OP_OPEN_DIR, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @OP_ADD_DIR, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %227, %221
  %234 = load i64, i64* @svn_node_dir, align 8
  %235 = load i64*, i64** %7, align 8
  store i64 %234, i64* %235, align 8
  %236 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %236, i32** %6, align 8
  br label %256

237:                                              ; preds = %227
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @OP_OPEN_FILE, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %249, label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @OP_ADD_FILE, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243, %237
  %250 = load i64, i64* @svn_node_file, align 8
  %251 = load i64*, i64** %7, align 8
  store i64 %250, i64* %251, align 8
  %252 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %252, i32** %6, align 8
  br label %256

253:                                              ; preds = %243
  br label %254

254:                                              ; preds = %253
  %255 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %256

256:                                              ; preds = %254, %249, %233, %219, %212, %190, %147, %62
  %257 = load i32*, i32** %6, align 8
  ret i32* %257
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i64 @MTCC_UNMODIFIED(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i64*, i32*) #1

declare dso_local i32 @mtcc_op_find(%struct.TYPE_9__**, i32*, i8*, %struct.TYPE_10__*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mtcc_get_origin(i8**, i32*, i8*, i8*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
