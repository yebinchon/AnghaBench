; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@LZMA_FINISH = common dso_local global i64 0, align 8
@LZMA_RUN = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@MODE_COMPRESS = common dso_local global i64 0, align 8
@opt_format = common dso_local global i64 0, align 8
@FORMAT_XZ = common dso_local global i64 0, align 8
@opt_block_size = common dso_local global i64 0, align 8
@opt_block_list = common dso_local global i64* null, align 8
@out_buf = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@strm = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@IO_BUFFER_SIZE = common dso_local global i8* null, align 8
@user_abort = common dso_local global i32 0, align 4
@in_buf = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@LZMA_FULL_BARRIER = common dso_local global i64 0, align 8
@flush_needed = common dso_local global i64 0, align 8
@LZMA_SYNC_FLUSH = common dso_local global i64 0, align 8
@MODE_TEST = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_NO_CHECK = common dso_local global i64 0, align 8
@LZMA_UNSUPPORTED_CHECK = common dso_local global i64 0, align 8
@opt_single_stream = common dso_local global i64 0, align 8
@LZMA_DATA_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@LZMA_MEMLIMIT_ERROR = common dso_local global i64 0, align 8
@V_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @coder_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coder_normal(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @LZMA_FINISH, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @LZMA_RUN, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %20 = load i64, i64* @UINT64_MAX, align 8
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %21 = load i64, i64* @opt_mode, align 8
  %22 = load i64, i64* @MODE_COMPRESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load i64, i64* @opt_format, align 8
  %26 = load i64, i64* @FORMAT_XZ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = call i32 (...) @hardware_threads_get()
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* @opt_block_size, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @opt_block_size, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %31, %28
  %37 = load i64*, i64** @opt_block_list, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** @opt_block_list, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = call i32 (...) @hardware_threads_get()
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64*, i64** @opt_block_list, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %7, align 8
  br label %62

57:                                               ; preds = %39
  %58 = load i64*, i64** @opt_block_list, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %57, %46
  br label %63

63:                                               ; preds = %62, %36
  br label %64

64:                                               ; preds = %63, %24, %18
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @out_buf, i32 0, i32 0), align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 2), align 4
  %66 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  br label %68

68:                                               ; preds = %309, %64
  %69 = load i32, i32* @user_abort, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %311

72:                                               ; preds = %68
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %72
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @LZMA_RUN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %75
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @in_buf, i32 0, i32 0), align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 3), align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %84 = call i32 @my_min(i64 %82, i8* %83)
  %85 = call i8* @io_read(%struct.TYPE_13__* %81, %struct.TYPE_16__* @in_buf, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %88 = load i32, i32* @SIZE_MAX, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %311

91:                                               ; preds = %79
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i64, i64* @LZMA_FINISH, align 8
  store i64 %97, i64* %3, align 8
  br label %113

98:                                               ; preds = %91
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @UINT64_MAX, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %6, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i64, i64* @LZMA_FULL_BARRIER, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %109, %102
  br label %112

112:                                              ; preds = %111, %98
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i64, i64* %3, align 8
  %115 = load i64, i64* @LZMA_RUN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i64, i64* @flush_needed, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i64, i64* @LZMA_SYNC_FLUSH, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %117, %113
  br label %123

123:                                              ; preds = %122, %75, %72
  %124 = load i64, i64* %3, align 8
  %125 = call i64 @lzma_code(%struct.TYPE_14__* @strm, i64 %124)
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load i64, i64* @opt_mode, align 8
  %130 = load i64, i64* @MODE_TEST, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  %136 = sub i64 0, %135
  %137 = getelementptr i8, i8* %134, i64 %136
  %138 = call i64 @io_write(%struct.TYPE_13__* %133, %struct.TYPE_15__* @out_buf, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %311

141:                                              ; preds = %132, %128
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @out_buf, i32 0, i32 0), align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 2), align 4
  %143 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %144 = ptrtoint i8* %143 to i64
  store i64 %144, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  br label %145

145:                                              ; preds = %141, %123
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @LZMA_STREAM_END, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %193

149:                                              ; preds = %145
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* @LZMA_SYNC_FLUSH, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %3, align 8
  %155 = load i64, i64* @LZMA_FULL_BARRIER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* @LZMA_SYNC_FLUSH, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %163 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  %165 = sub i64 0, %164
  %166 = getelementptr i8, i8* %163, i64 %165
  %167 = call i64 @io_write(%struct.TYPE_13__* %162, %struct.TYPE_15__* @out_buf, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %311

170:                                              ; preds = %161
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @out_buf, i32 0, i32 0), align 4
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 2), align 4
  %172 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %173 = ptrtoint i8* %172 to i64
  store i64 %173, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  %174 = call i32 (...) @mytime_set_flush_time()
  br label %191

175:                                              ; preds = %157
  %176 = load i64*, i64** @opt_block_list, align 8
  %177 = icmp eq i64* %176, null
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = call i32 (...) @hardware_threads_get()
  %180 = icmp eq i32 %179, 1
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i64, i64* @opt_block_size, align 8
  %184 = icmp sgt i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i64, i64* @opt_block_size, align 8
  store i64 %187, i64* %6, align 8
  br label %190

188:                                              ; preds = %175
  %189 = call i32 @split_block(i64* %6, i64* %7, i64* %8)
  br label %190

190:                                              ; preds = %188, %178
  br label %191

191:                                              ; preds = %190, %170
  %192 = load i64, i64* @LZMA_RUN, align 8
  store i64 %192, i64* %3, align 8
  br label %309

193:                                              ; preds = %153, %145
  %194 = load i64, i64* %4, align 8
  %195 = load i64, i64* @LZMA_OK, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %308

197:                                              ; preds = %193
  %198 = load i64, i64* %4, align 8
  %199 = load i64, i64* @LZMA_NO_CHECK, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i64, i64* %4, align 8
  %203 = load i64, i64* @LZMA_UNSUPPORTED_CHECK, align 8
  %204 = icmp ne i64 %202, %203
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i1 [ false, %197 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load i64, i64* @opt_mode, align 8
  %212 = load i64, i64* @MODE_TEST, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %216 = load i8*, i8** @IO_BUFFER_SIZE, align 8
  %217 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 0), align 8
  %218 = sub i64 0, %217
  %219 = getelementptr i8, i8* %216, i64 %218
  %220 = call i64 @io_write(%struct.TYPE_13__* %215, %struct.TYPE_15__* @out_buf, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %311

223:                                              ; preds = %214, %210
  br label %224

224:                                              ; preds = %223, %205
  %225 = load i64, i64* %4, align 8
  %226 = load i64, i64* @LZMA_STREAM_END, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %273

228:                                              ; preds = %224
  %229 = load i64, i64* @opt_single_stream, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %234 = call i32 @io_fix_src_pos(%struct.TYPE_13__* %232, i32 %233)
  store i32 1, i32* %5, align 4
  br label %311

235:                                              ; preds = %228
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %235
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %245 = call i8* @io_read(%struct.TYPE_13__* %244, %struct.TYPE_16__* @in_buf, i32 1)
  %246 = ptrtoint i8* %245 to i32
  store i32 %246, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %248 = load i32, i32* @SIZE_MAX, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %311

251:                                              ; preds = %243
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %256 = icmp eq i32 %255, 1
  br label %257

257:                                              ; preds = %254, %251
  %258 = phi i1 [ true, %251 ], [ %256, %254 ]
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  br label %261

261:                                              ; preds = %257, %238, %235
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @strm, i32 0, i32 1), align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @assert(i32 %267)
  store i32 1, i32* %5, align 4
  br label %311

269:                                              ; preds = %261
  %270 = load i64, i64* @LZMA_DATA_ERROR, align 8
  store i64 %270, i64* %4, align 8
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @assert(i32 %271)
  br label %273

273:                                              ; preds = %269, %224
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i64, i64* %4, align 8
  %281 = call i32 @message_strm(i64 %280)
  %282 = call i32 @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %279, i32 %281)
  br label %295

283:                                              ; preds = %273
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i64, i64* %4, align 8
  %288 = call i32 @message_strm(i64 %287)
  %289 = call i32 @message_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %286, i32 %288)
  %290 = load i64, i64* @opt_mode, align 8
  %291 = load i64, i64* @MODE_COMPRESS, align 8
  %292 = icmp ne i64 %290, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @assert(i32 %293)
  br label %295

295:                                              ; preds = %283, %276
  %296 = load i64, i64* %4, align 8
  %297 = load i64, i64* @LZMA_MEMLIMIT_ERROR, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i32, i32* @V_ERROR, align 4
  %301 = call i32 @lzma_memusage(%struct.TYPE_14__* @strm)
  %302 = call i32 @message_mem_needed(i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %295
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %311

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307, %193
  br label %309

309:                                              ; preds = %308, %191
  %310 = call i32 (...) @message_progress_update()
  br label %68

311:                                              ; preds = %306, %264, %250, %231, %222, %169, %140, %90, %68
  %312 = load i32, i32* %5, align 4
  ret i32 %312
}

declare dso_local i32 @hardware_threads_get(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @io_read(%struct.TYPE_13__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @my_min(i64, i8*) #1

declare dso_local i64 @lzma_code(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @io_write(%struct.TYPE_13__*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @mytime_set_flush_time(...) #1

declare dso_local i32 @split_block(i64*, i64*, i64*) #1

declare dso_local i32 @io_fix_src_pos(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @message_error(i8*, i32, i32) #1

declare dso_local i32 @message_strm(i64) #1

declare dso_local i32 @message_warning(i8*, i32, i32) #1

declare dso_local i32 @message_mem_needed(i32, i32) #1

declare dso_local i32 @lzma_memusage(%struct.TYPE_14__*) #1

declare dso_local i32 @message_progress_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
