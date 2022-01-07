; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_interp_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_interp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.sunrpc_msg = type { i32 }

@NFS_VER3 = common dso_local global i64 0, align 8
@NFS_NPROCS = common dso_local global i64 0, align 8
@nfsv3_procid = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@nfsproc_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"proc-%u\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" post dattr:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" attr:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" c %04x\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" %u bytes\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" EOF\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@nfsv3_writemodes = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" from:\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" to:\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" file POST:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" dir:\00", align 1
@nfserr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.sunrpc_msg*, i64, i64, i32)* @interp_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interp_reply(%struct.TYPE_19__* %0, %struct.sunrpc_msg* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.sunrpc_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.sunrpc_msg* %1, %struct.sunrpc_msg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @NFS_VER3, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @NFS_NPROCS, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64*, i64** @nfsv3_procid, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %24, %20, %5
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = load i32, i32* @nfsproc_str, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_19__*
  %36 = call i32 @ND_PRINT(%struct.TYPE_19__* %35)
  %37 = load i64, i64* %8, align 8
  switch i64 %37, label %684 [
    i64 143, label %38
    i64 130, label %59
    i64 141, label %93
    i64 148, label %170
    i64 134, label %215
    i64 137, label %230
    i64 128, label %295
    i64 146, label %372
    i64 140, label %372
    i64 129, label %400
    i64 139, label %428
    i64 133, label %445
    i64 131, label %445
    i64 132, label %473
    i64 142, label %526
    i64 136, label %579
    i64 135, label %607
    i64 144, label %624
    i64 145, label %639
    i64 138, label %653
    i64 147, label %667
  ]

38:                                               ; preds = %29
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64* @parserep(%struct.TYPE_19__* %39, %struct.sunrpc_msg* %40, i32 %41)
  store i64* %42, i64** %11, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @parseattrstat(%struct.TYPE_19__* %46, i64* %47, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %695

58:                                               ; preds = %45, %38
  br label %685

59:                                               ; preds = %29
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64* @parserep(%struct.TYPE_19__* %60, %struct.sunrpc_msg* %61, i32 %62)
  store i64* %63, i64** %11, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %695

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @parsewccres(%struct.TYPE_19__* %70, i64* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %695

78:                                               ; preds = %69
  br label %92

79:                                               ; preds = %66
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @parseattrstat(%struct.TYPE_19__* %80, i64* %81, i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %695

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %78
  br label %685

93:                                               ; preds = %29
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64* @parserep(%struct.TYPE_19__* %94, %struct.sunrpc_msg* %95, i32 %96)
  store i64* %97, i64** %11, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %685

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %100
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = call i64* @parsestatus(%struct.TYPE_19__* %104, i64* %105, i32* %13)
  store i64* %106, i64** %11, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %685

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([13 x i8]* @.str.2 to %struct.TYPE_19__*))
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %120, i64* %121, i32 %124)
  store i64* %125, i64** %11, align 8
  br label %126

126:                                              ; preds = %117, %112
  br label %157

127:                                              ; preds = %109
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i64* @parsefh(%struct.TYPE_19__* %128, i64* %129, i32 %130)
  store i64* %131, i64** %11, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  br label %685

134:                                              ; preds = %127
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %135, i64* %136, i32 %139)
  store i64* %140, i64** %11, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %156

142:                                              ; preds = %134
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([13 x i8]* @.str.2 to %struct.TYPE_19__*))
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %150, i64* %151, i32 %154)
  store i64* %155, i64** %11, align 8
  br label %156

156:                                              ; preds = %147, %142, %134
  br label %157

157:                                              ; preds = %156, %126
  %158 = load i64*, i64** %11, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %695

161:                                              ; preds = %157
  br label %169

162:                                              ; preds = %100
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = load i64*, i64** %11, align 8
  %165 = call i32 @parsediropres(%struct.TYPE_19__* %163, i64* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %695

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %161
  br label %685

170:                                              ; preds = %29
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i64* @parserep(%struct.TYPE_19__* %171, %struct.sunrpc_msg* %172, i32 %173)
  store i64* %174, i64** %11, align 8
  %175 = icmp ne i64* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %170
  br label %685

177:                                              ; preds = %170
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = load i64*, i64** %11, align 8
  %180 = call i64* @parsestatus(%struct.TYPE_19__* %178, i64* %179, i32* %13)
  store i64* %180, i64** %11, align 8
  %181 = icmp ne i64* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  br label %685

183:                                              ; preds = %177
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %190 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([7 x i8]* @.str.3 to %struct.TYPE_19__*))
  br label %191

191:                                              ; preds = %188, %183
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = load i64*, i64** %11, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %192, i64* %193, i32 %196)
  store i64* %197, i64** %11, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %191
  br label %685

200:                                              ; preds = %191
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %200
  %204 = load i64*, i64** %11, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @ND_TCHECK(i64 %206)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = load i64*, i64** %11, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = call i64 @EXTRACT_32BITS(i64* %210)
  %212 = inttoptr i64 %211 to %struct.TYPE_19__*
  %213 = call i32 @ND_PRINT(%struct.TYPE_19__* %212)
  br label %214

214:                                              ; preds = %203, %200
  br label %695

215:                                              ; preds = %29
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %217 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i64* @parserep(%struct.TYPE_19__* %216, %struct.sunrpc_msg* %217, i32 %218)
  store i64* %219, i64** %11, align 8
  %220 = load i64*, i64** %11, align 8
  %221 = icmp ne i64* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %224 = load i64*, i64** %11, align 8
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @parselinkres(%struct.TYPE_19__* %223, i64* %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %695

229:                                              ; preds = %222, %215
  br label %685

230:                                              ; preds = %29
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %232 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call i64* @parserep(%struct.TYPE_19__* %231, %struct.sunrpc_msg* %232, i32 %233)
  store i64* %234, i64** %11, align 8
  %235 = icmp ne i64* %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  br label %685

237:                                              ; preds = %230
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %284

240:                                              ; preds = %237
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %242 = load i64*, i64** %11, align 8
  %243 = call i64* @parsestatus(%struct.TYPE_19__* %241, i64* %242, i32* %13)
  store i64* %243, i64** %11, align 8
  %244 = icmp ne i64* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  br label %685

246:                                              ; preds = %240
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %248 = load i64*, i64** %11, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %247, i64* %248, i32 %251)
  store i64* %252, i64** %11, align 8
  %253 = icmp ne i64* %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %246
  br label %685

255:                                              ; preds = %246
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %695

259:                                              ; preds = %255
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %259
  %265 = load i64*, i64** %11, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @ND_TCHECK(i64 %267)
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %270 = load i64*, i64** %11, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 0
  %272 = call i64 @EXTRACT_32BITS(i64* %271)
  %273 = inttoptr i64 %272 to %struct.TYPE_19__*
  %274 = call i32 @ND_PRINT(%struct.TYPE_19__* %273)
  %275 = load i64*, i64** %11, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 1
  %277 = call i64 @EXTRACT_32BITS(i64* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %264
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %281 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([5 x i8]* @.str.6 to %struct.TYPE_19__*))
  br label %282

282:                                              ; preds = %279, %264
  br label %283

283:                                              ; preds = %282, %259
  br label %695

284:                                              ; preds = %237
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %286 = load i64*, i64** %11, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @parseattrstat(%struct.TYPE_19__* %285, i64* %286, i32 %289, i32 0)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  br label %695

293:                                              ; preds = %284
  br label %294

294:                                              ; preds = %293
  br label %685

295:                                              ; preds = %29
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %297 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %298 = load i32, i32* %10, align 4
  %299 = call i64* @parserep(%struct.TYPE_19__* %296, %struct.sunrpc_msg* %297, i32 %298)
  store i64* %299, i64** %11, align 8
  %300 = icmp ne i64* %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %295
  br label %685

302:                                              ; preds = %295
  %303 = load i32, i32* %12, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %360

305:                                              ; preds = %302
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %307 = load i64*, i64** %11, align 8
  %308 = call i64* @parsestatus(%struct.TYPE_19__* %306, i64* %307, i32* %13)
  store i64* %308, i64** %11, align 8
  %309 = icmp ne i64* %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %305
  br label %685

311:                                              ; preds = %305
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %313 = load i64*, i64** %11, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i64* @parse_wcc_data(%struct.TYPE_19__* %312, i64* %313, i32 %316)
  store i64* %317, i64** %11, align 8
  %318 = icmp ne i64* %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %311
  br label %685

320:                                              ; preds = %311
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  br label %695

324:                                              ; preds = %320
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %359

329:                                              ; preds = %324
  %330 = load i64*, i64** %11, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 0
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @ND_TCHECK(i64 %332)
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %335 = load i64*, i64** %11, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 0
  %337 = call i64 @EXTRACT_32BITS(i64* %336)
  %338 = inttoptr i64 %337 to %struct.TYPE_19__*
  %339 = call i32 @ND_PRINT(%struct.TYPE_19__* %338)
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp sgt i32 %342, 1
  br i1 %343, label %344, label %358

344:                                              ; preds = %329
  %345 = load i64*, i64** %11, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 1
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @ND_TCHECK(i64 %347)
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %350 = load i32, i32* @nfsv3_writemodes, align 4
  %351 = load i64*, i64** %11, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 1
  %353 = call i64 @EXTRACT_32BITS(i64* %352)
  %354 = call i32 @tok2str(i32 %350, i8* null, i64 %353)
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to %struct.TYPE_19__*
  %357 = call i32 @ND_PRINT(%struct.TYPE_19__* %356)
  br label %358

358:                                              ; preds = %344, %329
  br label %695

359:                                              ; preds = %324
  br label %371

360:                                              ; preds = %302
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %362 = load i64*, i64** %11, align 8
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %12, align 4
  %367 = call i32 @parseattrstat(%struct.TYPE_19__* %361, i64* %362, i32 %365, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %360
  br label %695

370:                                              ; preds = %360
  br label %371

371:                                              ; preds = %370, %359
  br label %685

372:                                              ; preds = %29, %29
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %374 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %375 = load i32, i32* %10, align 4
  %376 = call i64* @parserep(%struct.TYPE_19__* %373, %struct.sunrpc_msg* %374, i32 %375)
  store i64* %376, i64** %11, align 8
  %377 = icmp ne i64* %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %372
  br label %685

379:                                              ; preds = %372
  %380 = load i32, i32* %12, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %392

382:                                              ; preds = %379
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %384 = load i64*, i64** %11, align 8
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32* @parsecreateopres(%struct.TYPE_19__* %383, i64* %384, i32 %387)
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  br label %695

391:                                              ; preds = %382
  br label %399

392:                                              ; preds = %379
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %394 = load i64*, i64** %11, align 8
  %395 = call i32 @parsediropres(%struct.TYPE_19__* %393, i64* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %392
  br label %695

398:                                              ; preds = %392
  br label %399

399:                                              ; preds = %398, %391
  br label %685

400:                                              ; preds = %29
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %402 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %403 = load i32, i32* %10, align 4
  %404 = call i64* @parserep(%struct.TYPE_19__* %401, %struct.sunrpc_msg* %402, i32 %403)
  store i64* %404, i64** %11, align 8
  %405 = icmp ne i64* %404, null
  br i1 %405, label %407, label %406

406:                                              ; preds = %400
  br label %685

407:                                              ; preds = %400
  %408 = load i32, i32* %12, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %407
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %412 = load i64*, i64** %11, align 8
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32* @parsecreateopres(%struct.TYPE_19__* %411, i64* %412, i32 %415)
  %417 = icmp ne i32* %416, null
  br i1 %417, label %418, label %419

418:                                              ; preds = %410
  br label %695

419:                                              ; preds = %410
  br label %427

420:                                              ; preds = %407
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %422 = load i64*, i64** %11, align 8
  %423 = call i64* @parsestatus(%struct.TYPE_19__* %421, i64* %422, i32* %13)
  %424 = icmp ne i64* %423, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %420
  br label %695

426:                                              ; preds = %420
  br label %427

427:                                              ; preds = %426, %419
  br label %685

428:                                              ; preds = %29
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %430 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %431 = load i32, i32* %10, align 4
  %432 = call i64* @parserep(%struct.TYPE_19__* %429, %struct.sunrpc_msg* %430, i32 %431)
  store i64* %432, i64** %11, align 8
  %433 = icmp ne i64* %432, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %428
  br label %685

435:                                              ; preds = %428
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %437 = load i64*, i64** %11, align 8
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32* @parsecreateopres(%struct.TYPE_19__* %436, i64* %437, i32 %440)
  %442 = icmp ne i32* %441, null
  br i1 %442, label %443, label %444

443:                                              ; preds = %435
  br label %695

444:                                              ; preds = %435
  br label %685

445:                                              ; preds = %29, %29
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %447 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %448 = load i32, i32* %10, align 4
  %449 = call i64* @parserep(%struct.TYPE_19__* %446, %struct.sunrpc_msg* %447, i32 %448)
  store i64* %449, i64** %11, align 8
  %450 = icmp ne i64* %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %445
  br label %685

452:                                              ; preds = %445
  %453 = load i32, i32* %12, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %465

455:                                              ; preds = %452
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %457 = load i64*, i64** %11, align 8
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @parsewccres(%struct.TYPE_19__* %456, i64* %457, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %455
  br label %695

464:                                              ; preds = %455
  br label %472

465:                                              ; preds = %452
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %467 = load i64*, i64** %11, align 8
  %468 = call i64* @parsestatus(%struct.TYPE_19__* %466, i64* %467, i32* %13)
  %469 = icmp ne i64* %468, null
  br i1 %469, label %470, label %471

470:                                              ; preds = %465
  br label %695

471:                                              ; preds = %465
  br label %472

472:                                              ; preds = %471, %464
  br label %685

473:                                              ; preds = %29
  %474 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %475 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %476 = load i32, i32* %10, align 4
  %477 = call i64* @parserep(%struct.TYPE_19__* %474, %struct.sunrpc_msg* %475, i32 %476)
  store i64* %477, i64** %11, align 8
  %478 = icmp ne i64* %477, null
  br i1 %478, label %480, label %479

479:                                              ; preds = %473
  br label %685

480:                                              ; preds = %473
  %481 = load i32, i32* %12, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %518

483:                                              ; preds = %480
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %485 = load i64*, i64** %11, align 8
  %486 = call i64* @parsestatus(%struct.TYPE_19__* %484, i64* %485, i32* %13)
  store i64* %486, i64** %11, align 8
  %487 = icmp ne i64* %486, null
  br i1 %487, label %489, label %488

488:                                              ; preds = %483
  br label %685

489:                                              ; preds = %483
  %490 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %517

494:                                              ; preds = %489
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %496 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([7 x i8]* @.str.8 to %struct.TYPE_19__*))
  %497 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %498 = load i64*, i64** %11, align 8
  %499 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = call i64* @parse_wcc_data(%struct.TYPE_19__* %497, i64* %498, i32 %501)
  store i64* %502, i64** %11, align 8
  %503 = icmp ne i64* %502, null
  br i1 %503, label %505, label %504

504:                                              ; preds = %494
  br label %685

505:                                              ; preds = %494
  %506 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %507 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([5 x i8]* @.str.9 to %struct.TYPE_19__*))
  %508 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %509 = load i64*, i64** %11, align 8
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = call i64* @parse_wcc_data(%struct.TYPE_19__* %508, i64* %509, i32 %512)
  store i64* %513, i64** %11, align 8
  %514 = icmp ne i64* %513, null
  br i1 %514, label %516, label %515

515:                                              ; preds = %505
  br label %685

516:                                              ; preds = %505
  br label %517

517:                                              ; preds = %516, %489
  br label %695

518:                                              ; preds = %480
  %519 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %520 = load i64*, i64** %11, align 8
  %521 = call i64* @parsestatus(%struct.TYPE_19__* %519, i64* %520, i32* %13)
  %522 = icmp ne i64* %521, null
  br i1 %522, label %523, label %524

523:                                              ; preds = %518
  br label %695

524:                                              ; preds = %518
  br label %525

525:                                              ; preds = %524
  br label %685

526:                                              ; preds = %29
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %528 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %529 = load i32, i32* %10, align 4
  %530 = call i64* @parserep(%struct.TYPE_19__* %527, %struct.sunrpc_msg* %528, i32 %529)
  store i64* %530, i64** %11, align 8
  %531 = icmp ne i64* %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %526
  br label %685

533:                                              ; preds = %526
  %534 = load i32, i32* %12, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %571

536:                                              ; preds = %533
  %537 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %538 = load i64*, i64** %11, align 8
  %539 = call i64* @parsestatus(%struct.TYPE_19__* %537, i64* %538, i32* %13)
  store i64* %539, i64** %11, align 8
  %540 = icmp ne i64* %539, null
  br i1 %540, label %542, label %541

541:                                              ; preds = %536
  br label %685

542:                                              ; preds = %536
  %543 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %570

547:                                              ; preds = %542
  %548 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %549 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([12 x i8]* @.str.10 to %struct.TYPE_19__*))
  %550 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %551 = load i64*, i64** %11, align 8
  %552 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = call i64* @parse_post_op_attr(%struct.TYPE_19__* %550, i64* %551, i32 %554)
  store i64* %555, i64** %11, align 8
  %556 = icmp ne i64* %555, null
  br i1 %556, label %558, label %557

557:                                              ; preds = %547
  br label %685

558:                                              ; preds = %547
  %559 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %560 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([6 x i8]* @.str.11 to %struct.TYPE_19__*))
  %561 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %562 = load i64*, i64** %11, align 8
  %563 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = call i64* @parse_wcc_data(%struct.TYPE_19__* %561, i64* %562, i32 %565)
  store i64* %566, i64** %11, align 8
  %567 = icmp ne i64* %566, null
  br i1 %567, label %569, label %568

568:                                              ; preds = %558
  br label %685

569:                                              ; preds = %558
  br label %695

570:                                              ; preds = %542
  br label %578

571:                                              ; preds = %533
  %572 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %573 = load i64*, i64** %11, align 8
  %574 = call i64* @parsestatus(%struct.TYPE_19__* %572, i64* %573, i32* %13)
  %575 = icmp ne i64* %574, null
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  br label %695

577:                                              ; preds = %571
  br label %578

578:                                              ; preds = %577, %570
  br label %685

579:                                              ; preds = %29
  %580 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %581 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %582 = load i32, i32* %10, align 4
  %583 = call i64* @parserep(%struct.TYPE_19__* %580, %struct.sunrpc_msg* %581, i32 %582)
  store i64* %583, i64** %11, align 8
  %584 = icmp ne i64* %583, null
  br i1 %584, label %586, label %585

585:                                              ; preds = %579
  br label %685

586:                                              ; preds = %579
  %587 = load i32, i32* %12, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %599

589:                                              ; preds = %586
  %590 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %591 = load i64*, i64** %11, align 8
  %592 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @parsev3rddirres(%struct.TYPE_19__* %590, i64* %591, i32 %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %598

597:                                              ; preds = %589
  br label %695

598:                                              ; preds = %589
  br label %606

599:                                              ; preds = %586
  %600 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %601 = load i64*, i64** %11, align 8
  %602 = call i32 @parserddires(%struct.TYPE_19__* %600, i64* %601)
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %605

604:                                              ; preds = %599
  br label %695

605:                                              ; preds = %599
  br label %606

606:                                              ; preds = %605, %598
  br label %685

607:                                              ; preds = %29
  %608 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %609 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %610 = load i32, i32* %10, align 4
  %611 = call i64* @parserep(%struct.TYPE_19__* %608, %struct.sunrpc_msg* %609, i32 %610)
  store i64* %611, i64** %11, align 8
  %612 = icmp ne i64* %611, null
  br i1 %612, label %614, label %613

613:                                              ; preds = %607
  br label %685

614:                                              ; preds = %607
  %615 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %616 = load i64*, i64** %11, align 8
  %617 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %618 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = call i32 @parsev3rddirres(%struct.TYPE_19__* %615, i64* %616, i32 %619)
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %614
  br label %695

623:                                              ; preds = %614
  br label %685

624:                                              ; preds = %29
  %625 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %626 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %627 = load i32, i32* %10, align 4
  %628 = call i64* @parserep(%struct.TYPE_19__* %625, %struct.sunrpc_msg* %626, i32 %627)
  store i64* %628, i64** %11, align 8
  %629 = load i64*, i64** %11, align 8
  %630 = icmp ne i64* %629, null
  br i1 %630, label %631, label %638

631:                                              ; preds = %624
  %632 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %633 = load i64*, i64** %11, align 8
  %634 = load i32, i32* %12, align 4
  %635 = call i32 @parsestatfs(%struct.TYPE_19__* %632, i64* %633, i32 %634)
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %631
  br label %695

638:                                              ; preds = %631, %624
  br label %685

639:                                              ; preds = %29
  %640 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %641 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %642 = load i32, i32* %10, align 4
  %643 = call i64* @parserep(%struct.TYPE_19__* %640, %struct.sunrpc_msg* %641, i32 %642)
  store i64* %643, i64** %11, align 8
  %644 = load i64*, i64** %11, align 8
  %645 = icmp ne i64* %644, null
  br i1 %645, label %646, label %652

646:                                              ; preds = %639
  %647 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %648 = load i64*, i64** %11, align 8
  %649 = call i32 @parsefsinfo(%struct.TYPE_19__* %647, i64* %648)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  br label %695

652:                                              ; preds = %646, %639
  br label %685

653:                                              ; preds = %29
  %654 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %655 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %656 = load i32, i32* %10, align 4
  %657 = call i64* @parserep(%struct.TYPE_19__* %654, %struct.sunrpc_msg* %655, i32 %656)
  store i64* %657, i64** %11, align 8
  %658 = load i64*, i64** %11, align 8
  %659 = icmp ne i64* %658, null
  br i1 %659, label %660, label %666

660:                                              ; preds = %653
  %661 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %662 = load i64*, i64** %11, align 8
  %663 = call i32 @parsepathconf(%struct.TYPE_19__* %661, i64* %662)
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %666

665:                                              ; preds = %660
  br label %695

666:                                              ; preds = %660, %653
  br label %685

667:                                              ; preds = %29
  %668 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %669 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %7, align 8
  %670 = load i32, i32* %10, align 4
  %671 = call i64* @parserep(%struct.TYPE_19__* %668, %struct.sunrpc_msg* %669, i32 %670)
  store i64* %671, i64** %11, align 8
  %672 = load i64*, i64** %11, align 8
  %673 = icmp ne i64* %672, null
  br i1 %673, label %674, label %683

674:                                              ; preds = %667
  %675 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %676 = load i64*, i64** %11, align 8
  %677 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %678 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = call i32 @parsewccres(%struct.TYPE_19__* %675, i64* %676, i32 %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %683

682:                                              ; preds = %674
  br label %695

683:                                              ; preds = %674, %667
  br label %685

684:                                              ; preds = %29
  br label %695

685:                                              ; preds = %683, %666, %652, %638, %623, %613, %606, %585, %578, %568, %557, %541, %532, %525, %515, %504, %488, %479, %472, %451, %444, %434, %427, %406, %399, %378, %371, %319, %310, %301, %294, %254, %245, %236, %229, %199, %182, %176, %169, %133, %108, %99, %92, %58
  br label %686

686:                                              ; preds = %685
  %687 = load i32, i32* @nfserr, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %695, label %689

689:                                              ; preds = %686
  %690 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %691 = load i32, i32* @tstr, align 4
  %692 = sext i32 %691 to i64
  %693 = inttoptr i64 %692 to %struct.TYPE_19__*
  %694 = call i32 @ND_PRINT(%struct.TYPE_19__* %693)
  br label %695

695:                                              ; preds = %57, %65, %77, %90, %160, %167, %214, %228, %258, %283, %292, %323, %358, %369, %390, %397, %418, %425, %443, %463, %470, %517, %523, %569, %576, %597, %604, %622, %637, %651, %665, %682, %684, %689, %686
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_19__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i64* @parserep(%struct.TYPE_19__*, %struct.sunrpc_msg*, i32) #1

declare dso_local i32 @parseattrstat(%struct.TYPE_19__*, i64*, i32, i32) #1

declare dso_local i32 @parsewccres(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i64* @parsestatus(%struct.TYPE_19__*, i64*, i32*) #1

declare dso_local i64* @parse_post_op_attr(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i64* @parsefh(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @parsediropres(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i64 @EXTRACT_32BITS(i64*) #1

declare dso_local i32 @parselinkres(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i64* @parse_wcc_data(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32* @parsecreateopres(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @parsev3rddirres(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @parserddires(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @parsestatfs(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @parsefsinfo(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @parsepathconf(%struct.TYPE_19__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
