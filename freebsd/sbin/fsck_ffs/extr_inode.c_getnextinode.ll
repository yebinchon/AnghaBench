; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_getnextinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_getnextinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32 }
%union.dinode = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.ufs2_dinode = type { i32 }

@getnextinode.nextinop = internal global i8* null, align 8
@nextino = common dso_local global i32 0, align 4
@lastvalidinum = common dso_local global i64 0, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad inode number %ju to nextinode\00", align 1
@lastinum = common dso_local global i64 0, align 8
@readcount = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@readpercg = common dso_local global i32 0, align 4
@partialsize = common dso_local global i64 0, align 8
@partialcnt = common dso_local global i64 0, align 8
@inobufsize = common dso_local global i64 0, align 8
@fullcnt = common dso_local global i64 0, align 8
@fswritefd = common dso_local global i32 0, align 4
@inobuf = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@ckhashadd = common dso_local global i32 0, align 4
@CK_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"INODE CHECK-HASH FAILED\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" (FIXED)\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i64 0, align 8
@ufs2_zino = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_size = common dso_local global i32 0, align 4
@IFBLK = common dso_local global i64 0, align 8
@IFCHR = common dso_local global i64 0, align 8
@IFLNK = common dso_local global i64 0, align 8
@di_db = common dso_local global i32* null, align 8
@di_ib = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.dinode* @getnextinode(i64 %0, i32 %1) #0 {
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.dinode*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @nextino, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @nextino, align 4
  %15 = sext i32 %13 to i64
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @lastvalidinum, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EEXIT, align 4
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @lastinum, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* @readcount, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @readcount, align 4
  %33 = load i64, i64* @lastinum, align 8
  %34 = call i32 @ino_to_fsba(%struct.TYPE_16__* @sblock, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @readcount, align 4
  %36 = load i32, i32* @readpercg, align 4
  %37 = srem i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i64, i64* @partialsize, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* @partialcnt, align 8
  %42 = load i64, i64* @lastinum, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* @lastinum, align 8
  br label %49

44:                                               ; preds = %30
  %45 = load i64, i64* @inobufsize, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* @fullcnt, align 8
  %47 = load i64, i64* @lastinum, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* @lastinum, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @fswritefd, align 4
  %51 = call i32 @flush(i32 %50, %struct.TYPE_17__* @inobuf)
  %52 = load i32, i32* %10, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @getblk(%struct.TYPE_17__* @inobuf, i32 %52, i64 %53)
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @inobuf, i32 0, i32 0, i32 0), align 8
  store i8* %55, i8** @getnextinode.nextinop, align 8
  br label %56

56:                                               ; preds = %49, %26
  %57 = load i8*, i8** @getnextinode.nextinop, align 8
  %58 = bitcast i8* %57 to %union.dinode*
  store %union.dinode* %58, %union.dinode** %11, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sblock, i32 0, i32 0), align 8
  %60 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** @getnextinode.nextinop, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** @getnextinode.nextinop, align 8
  br label %68

65:                                               ; preds = %56
  %66 = load i8*, i8** @getnextinode.nextinop, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** @getnextinode.nextinop, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @ckhashadd, align 4
  %70 = load i32, i32* @CK_INODE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %union.dinode*, %union.dinode** %11, align 8
  %75 = bitcast %union.dinode* %74 to %struct.ufs2_dinode*
  %76 = call i32 @ffs_update_dinode_ckhash(%struct.TYPE_16__* @sblock, %struct.ufs2_dinode* %75)
  %77 = call i32 @dirty(%struct.TYPE_17__* @inobuf)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %union.dinode*, %union.dinode** %11, align 8
  %80 = bitcast %union.dinode* %79 to %struct.ufs2_dinode*
  %81 = call i64 @ffs_verify_dinode_ckhash(%struct.TYPE_16__* @sblock, %struct.ufs2_dinode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = call i32 @pwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* %4, align 8
  %86 = load %union.dinode*, %union.dinode** %11, align 8
  %87 = call i32 @prtinode(i64 %85, %union.dinode* %86)
  %88 = load i64, i64* @preen, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = call i64 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %83
  %94 = load i64, i64* @preen, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load %union.dinode*, %union.dinode** %11, align 8
  %100 = bitcast %union.dinode* %99 to %struct.ufs2_dinode*
  %101 = call i32 @ffs_update_dinode_ckhash(%struct.TYPE_16__* @sblock, %struct.ufs2_dinode* %100)
  %102 = call i32 @dirty(%struct.TYPE_17__* @inobuf)
  br label %103

103:                                              ; preds = %98, %90
  br label %104

104:                                              ; preds = %103, %78
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %282

107:                                              ; preds = %104
  %108 = load %union.dinode*, %union.dinode** %11, align 8
  %109 = bitcast %union.dinode* %108 to i8*
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @inobuf, i32 0, i32 0, i32 0), align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %282

112:                                              ; preds = %107
  %113 = load %union.dinode*, %union.dinode** %11, align 8
  %114 = load i32, i32* @di_mode, align 4
  %115 = call i64 @DIP(%union.dinode* %113, i32 %114)
  %116 = load i64, i64* @IFMT, align 8
  %117 = and i64 %115, %116
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %159

120:                                              ; preds = %112
  %121 = load %union.dinode*, %union.dinode** %11, align 8
  %122 = bitcast %union.dinode* %121 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ufs2_zino, i32 0, i32 1), align 4
  %126 = load i32, i32* @UFS_NDADDR, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i64 @memcmp(i32 %124, i32 %125, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %120
  %133 = load %union.dinode*, %union.dinode** %11, align 8
  %134 = bitcast %union.dinode* %133 to %struct.TYPE_14__*
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ufs2_zino, i32 0, i32 0), align 4
  %138 = load i32, i32* @UFS_NIADDR, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i64 @memcmp(i32 %136, i32 %137, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %132
  %145 = load %union.dinode*, %union.dinode** %11, align 8
  %146 = bitcast %union.dinode* %145 to %struct.TYPE_14__*
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load %union.dinode*, %union.dinode** %11, align 8
  %152 = bitcast %union.dinode* %151 to %struct.TYPE_14__*
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150, %144, %132, %120
  store %union.dinode* null, %union.dinode** %3, align 8
  br label %284

157:                                              ; preds = %150
  %158 = load %union.dinode*, %union.dinode** %11, align 8
  store %union.dinode* %158, %union.dinode** %3, align 8
  br label %284

159:                                              ; preds = %112
  %160 = load %union.dinode*, %union.dinode** %11, align 8
  %161 = call i32 @ftypeok(%union.dinode* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  store %union.dinode* null, %union.dinode** %3, align 8
  br label %284

164:                                              ; preds = %159
  %165 = load %union.dinode*, %union.dinode** %11, align 8
  %166 = load i32, i32* @di_size, align 4
  %167 = call i64 @DIP(%union.dinode* %165, i32 %166)
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sblock, i32 0, i32 1), align 8
  %169 = call i32 @howmany(i64 %167, i32 %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store %union.dinode* null, %union.dinode** %3, align 8
  br label %284

173:                                              ; preds = %164
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* @IFBLK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @IFCHR, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177, %173
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* @IFLNK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %222

188:                                              ; preds = %184
  %189 = load %union.dinode*, %union.dinode** %11, align 8
  %190 = load i32, i32* @di_size, align 4
  %191 = call i64 @DIP(%union.dinode* %189, i32 %190)
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sblock, i32 0, i32 2), align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %188
  %195 = load %union.dinode*, %union.dinode** %11, align 8
  %196 = load i32, i32* @di_size, align 4
  %197 = call i64 @DIP(%union.dinode* %195, i32 %196)
  %198 = call i32 @howmany(i64 %197, i32 4)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @UFS_NDADDR, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %194
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @UFS_NDADDR, align 4
  %205 = sub nsw i32 %203, %204
  store i32 %205, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %206

206:                                              ; preds = %213, %202
  %207 = load i32, i32* %6, align 4
  %208 = icmp sgt i32 %207, 1
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = call i32 @NINDIR(%struct.TYPE_16__* @sblock)
  %211 = load i32, i32* %9, align 4
  %212 = mul nsw i32 %211, %210
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %6, align 4
  br label %206

216:                                              ; preds = %206
  %217 = load i32, i32* @UFS_NDADDR, align 4
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %9, align 4
  br label %220

220:                                              ; preds = %216, %194
  br label %221

221:                                              ; preds = %220, %188
  br label %222

222:                                              ; preds = %221, %184
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %245, %222
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @UFS_NDADDR, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @UFS_NDADDR, align 4
  %231 = icmp slt i32 %229, %230
  br label %232

232:                                              ; preds = %228, %224
  %233 = phi i1 [ false, %224 ], [ %231, %228 ]
  br i1 %233, label %234, label %248

234:                                              ; preds = %232
  %235 = load %union.dinode*, %union.dinode** %11, align 8
  %236 = load i32*, i32** @di_db, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @DIP(%union.dinode* %235, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  store %union.dinode* null, %union.dinode** %3, align 8
  br label %284

244:                                              ; preds = %234
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  br label %224

248:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  %249 = load i32, i32* @UFS_NDADDR, align 4
  %250 = load i32, i32* %9, align 4
  %251 = sub nsw i32 %250, %249
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %259, %248
  %253 = load i32, i32* %9, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = call i32 @NINDIR(%struct.TYPE_16__* @sblock)
  %257 = load i32, i32* %9, align 4
  %258 = sdiv i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %252

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %278, %262
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @UFS_NIADDR, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %263
  %268 = load %union.dinode*, %union.dinode** %11, align 8
  %269 = load i32*, i32** @di_ib, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @DIP(%union.dinode* %268, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  store %union.dinode* null, %union.dinode** %3, align 8
  br label %284

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %263

281:                                              ; preds = %263
  br label %282

282:                                              ; preds = %281, %107, %104
  %283 = load %union.dinode*, %union.dinode** %11, align 8
  store %union.dinode* %283, %union.dinode** %3, align 8
  br label %284

284:                                              ; preds = %282, %276, %243, %172, %163, %157, %156
  %285 = load %union.dinode*, %union.dinode** %3, align 8
  ret %union.dinode* %285
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @flush(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @getblk(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @ffs_update_dinode_ckhash(%struct.TYPE_16__*, %struct.ufs2_dinode*) #1

declare dso_local i32 @dirty(%struct.TYPE_17__*) #1

declare dso_local i64 @ffs_verify_dinode_ckhash(%struct.TYPE_16__*, %struct.ufs2_dinode*) #1

declare dso_local i32 @pwarn(i8*) #1

declare dso_local i32 @prtinode(i64, %union.dinode*) #1

declare dso_local i64 @reply(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ftypeok(%union.dinode*) #1

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
