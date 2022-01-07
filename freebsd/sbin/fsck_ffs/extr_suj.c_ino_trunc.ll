; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%union.dinode = type { i32 }

@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Truncating ino %ju, mode %o to size %jd from size %jd\0A\00", align 1
@IFBLK = common dso_local global i32 0, align 4
@IFCHR = common dso_local global i32 0, align 4
@IFLNK = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_10__* null, align 8
@UFS_NDADDR = common dso_local global i64 0, align 8
@di_db = common dso_local global i32* null, align 8
@UFS_NIADDR = common dso_local global i64 0, align 8
@di_ib = common dso_local global i32* null, align 8
@visitlbn = common dso_local global i32 0, align 4
@null_visit = common dso_local global i32 0, align 4
@VISIT_INDIR = common dso_local global i32 0, align 4
@VISIT_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Bad blk at ino %ju lbn %jd\0A\00", align 1
@di_blocks = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Block missing from ino %ju at lbn %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @ino_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_trunc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.dinode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call %union.dinode* @ino_read(i64 %21)
  store %union.dinode* %22, %union.dinode** %5, align 8
  %23 = load %union.dinode*, %union.dinode** %5, align 8
  %24 = load i32, i32* @di_mode, align 4
  %25 = call i64 @DIP(%union.dinode* %23, i32 %24)
  %26 = load i64, i64* @IFMT, align 8
  %27 = and i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load %union.dinode*, %union.dinode** %5, align 8
  %30 = load i32, i32* @di_size, align 4
  %31 = call i64 @DIP(%union.dinode* %29, i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* @debug, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i64, i64* %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %16, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %34, %2
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @IFBLK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @IFCHR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @IFLNK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %48, %44, %41
  br label %320

63:                                               ; preds = %56, %52
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @blkroundup(%struct.TYPE_10__* %71, i64 %72)
  %74 = call i64 @lblkno(%struct.TYPE_10__* %70, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %115, %69
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @UFS_NDADDR, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %76
  %81 = load %union.dinode*, %union.dinode** %5, align 8
  %82 = load i32*, i32** @di_db, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @DIP(%union.dinode* %81, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %115

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i8* @sblksize(%struct.TYPE_10__* %90, i64 %91, i32 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %13, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = call i64 @numfrags(%struct.TYPE_10__* %96, i64 %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load %union.dinode*, %union.dinode** %5, align 8
  %102 = load i32*, i32** @di_db, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @DIP(%union.dinode* %101, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @blk_free(i64 %106, i32 0, i32 %107)
  %109 = load %union.dinode*, %union.dinode** %5, align 8
  %110 = load i32*, i32** @di_db, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @DIP_SET(%union.dinode* %109, i32 %113, i64 0)
  br label %115

115:                                              ; preds = %89, %88
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %76

118:                                              ; preds = %76
  store i64 0, i64* %12, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %120 = call i64 @NINDIR(%struct.TYPE_10__* %119)
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* @UFS_NDADDR, align 8
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %182, %118
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @UFS_NIADDR, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %122
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %127, %128
  store i64 %129, i64* %8, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %131 = call i64 @NINDIR(%struct.TYPE_10__* %130)
  %132 = load i64, i64* %10, align 8
  %133 = mul i64 %132, %131
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %182

138:                                              ; preds = %126
  %139 = load %union.dinode*, %union.dinode** %5, align 8
  %140 = load i32*, i32** @di_ib, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @DIP(%union.dinode* %139, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %182

147:                                              ; preds = %138
  %148 = load i64, i64* %3, align 8
  %149 = load i64, i64* %11, align 8
  %150 = sub i64 0, %149
  %151 = load i64, i64* %12, align 8
  %152 = sub i64 %150, %151
  %153 = load %union.dinode*, %union.dinode** %5, align 8
  %154 = load i32*, i32** @di_ib, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @DIP(%union.dinode* %153, i32 %157)
  %159 = load i64, i64* %9, align 8
  %160 = call i32 @indir_trunc(i64 %148, i64 %152, i64 %158, i64 %159)
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  br label %182

165:                                              ; preds = %147
  %166 = load %union.dinode*, %union.dinode** %5, align 8
  %167 = load i32*, i32** @di_ib, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @DIP(%union.dinode* %166, i32 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @blk_free(i64 %171, i32 0, i32 %174)
  %176 = load %union.dinode*, %union.dinode** %5, align 8
  %177 = load i32*, i32** @di_ib, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @DIP_SET(%union.dinode* %176, i32 %180, i64 0)
  br label %182

182:                                              ; preds = %165, %164, %146, %137
  %183 = load i64, i64* %12, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %12, align 8
  %185 = load i64, i64* %8, align 8
  store i64 %185, i64* %11, align 8
  br label %122

186:                                              ; preds = %122
  %187 = load i64, i64* %3, align 8
  %188 = call i32 @ino_dirty(i64 %187)
  store i32 0, i32* @visitlbn, align 4
  %189 = load %union.dinode*, %union.dinode** %5, align 8
  %190 = load i64, i64* %3, align 8
  %191 = load i32, i32* @null_visit, align 4
  %192 = load i32, i32* @VISIT_INDIR, align 4
  %193 = load i32, i32* @VISIT_EXT, align 4
  %194 = or i32 %192, %193
  %195 = call i64 @ino_visit(%union.dinode* %189, i64 %190, i32 %191, i32 %194)
  store i64 %195, i64* %7, align 8
  %196 = load i64, i64* %4, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %198 = load i32, i32* @visitlbn, align 4
  %199 = add nsw i32 %198, 1
  %200 = call i64 @lblktosize(%struct.TYPE_10__* %197, i32 %199)
  %201 = icmp sgt i64 %196, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %186
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %204 = load i32, i32* @visitlbn, align 4
  %205 = add nsw i32 %204, 1
  %206 = call i64 @lblktosize(%struct.TYPE_10__* %203, i32 %205)
  store i64 %206, i64* %4, align 8
  br label %207

207:                                              ; preds = %202, %186
  %208 = load i32, i32* @visitlbn, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @UFS_NDADDR, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %264

212:                                              ; preds = %207
  %213 = load i64, i64* %7, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %264

215:                                              ; preds = %212
  %216 = load %union.dinode*, %union.dinode** %5, align 8
  %217 = load i32*, i32** @di_db, align 8
  %218 = load i32, i32* @visitlbn, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @DIP(%union.dinode* %216, i32 %221)
  store i64 %222, i64* %6, align 8
  %223 = load i64, i64* %6, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %215
  %226 = load i64, i64* %3, align 8
  %227 = trunc i64 %226 to i32
  %228 = load i32, i32* @visitlbn, align 4
  %229 = call i32 @err_suj(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %215
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* @visitlbn, align 4
  %234 = call i8* @sblksize(%struct.TYPE_10__* %231, i64 %232, i32 %233)
  %235 = ptrtoint i8* %234 to i64
  store i64 %235, i64* %17, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %237 = load i64, i64* %4, align 8
  %238 = load i32, i32* @visitlbn, align 4
  %239 = call i8* @sblksize(%struct.TYPE_10__* %236, i64 %237, i32 %238)
  %240 = ptrtoint i8* %239 to i64
  store i64 %240, i64* %18, align 8
  %241 = load i64, i64* %17, align 8
  %242 = load i64, i64* %18, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %263

244:                                              ; preds = %230
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %246 = load i64, i64* %18, align 8
  %247 = call i64 @numfrags(%struct.TYPE_10__* %245, i64 %246)
  %248 = load i64, i64* %6, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %6, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %251 = load i64, i64* %17, align 8
  %252 = load i64, i64* %18, align 8
  %253 = sub nsw i64 %251, %252
  %254 = call i64 @numfrags(%struct.TYPE_10__* %250, i64 %253)
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %13, align 4
  %256 = load i64, i64* %6, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @blk_free(i64 %256, i32 0, i32 %257)
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %7, align 8
  %262 = sub nsw i64 %261, %260
  store i64 %262, i64* %7, align 8
  br label %263

263:                                              ; preds = %244, %230
  br label %264

264:                                              ; preds = %263, %212, %207
  %265 = load %union.dinode*, %union.dinode** %5, align 8
  %266 = load i32, i32* @di_blocks, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %268 = load i64, i64* %7, align 8
  %269 = call i64 @fsbtodb(%struct.TYPE_10__* %267, i64 %268)
  %270 = call i32 @DIP_SET(%union.dinode* %265, i32 %266, i64 %269)
  %271 = load %union.dinode*, %union.dinode** %5, align 8
  %272 = load i32, i32* @di_size, align 4
  %273 = load i64, i64* %4, align 8
  %274 = call i32 @DIP_SET(%union.dinode* %271, i32 %272, i64 %273)
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %276 = load i64, i64* %4, align 8
  %277 = call i64 @blkoff(%struct.TYPE_10__* %275, i64 %276)
  store i64 %277, i64* %15, align 8
  %278 = load i64, i64* %15, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %319

280:                                              ; preds = %264
  %281 = load %union.dinode*, %union.dinode** %5, align 8
  %282 = load i32, i32* @di_mode, align 4
  %283 = call i64 @DIP(%union.dinode* %281, i32 %282)
  %284 = load i64, i64* @IFDIR, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %319

286:                                              ; preds = %280
  %287 = load %union.dinode*, %union.dinode** %5, align 8
  %288 = load i64, i64* %3, align 8
  %289 = load i32, i32* @visitlbn, align 4
  %290 = call i64 @ino_blkatoff(%union.dinode* %287, i64 %288, i32 %289, i32* %13)
  store i64 %290, i64* %6, align 8
  %291 = load i64, i64* %6, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load i64, i64* %3, align 8
  %295 = trunc i64 %294 to i32
  %296 = load i32, i32* @visitlbn, align 4
  %297 = call i32 @err_suj(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %293, %286
  %299 = load i32, i32* %13, align 4
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %299, %302
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %20, align 8
  %305 = load i64, i64* %6, align 8
  %306 = load i64, i64* %20, align 8
  %307 = call i32* @dblk_read(i64 %305, i64 %306)
  store i32* %307, i32** %19, align 8
  %308 = load i64, i64* %15, align 8
  %309 = load i64, i64* %20, align 8
  %310 = sub nsw i64 %309, %308
  store i64 %310, i64* %20, align 8
  %311 = load i64, i64* %15, align 8
  %312 = load i32*, i32** %19, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 %311
  store i32* %313, i32** %19, align 8
  %314 = load i32*, i32** %19, align 8
  %315 = load i64, i64* %20, align 8
  %316 = call i32 @bzero(i32* %314, i64 %315)
  %317 = load i64, i64* %6, align 8
  %318 = call i32 @dblk_dirty(i64 %317)
  br label %319

319:                                              ; preds = %298, %280, %264
  br label %320

320:                                              ; preds = %319, %62
  ret void
}

declare dso_local %union.dinode* @ino_read(i64) #1

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i64, i64) #1

declare dso_local i64 @lblkno(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @blkroundup(%struct.TYPE_10__*, i64) #1

declare dso_local i8* @sblksize(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @numfrags(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @blk_free(i64, i32, i32) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i64) #1

declare dso_local i64 @NINDIR(%struct.TYPE_10__*) #1

declare dso_local i32 @indir_trunc(i64, i64, i64, i64) #1

declare dso_local i32 @ino_dirty(i64) #1

declare dso_local i64 @ino_visit(%union.dinode*, i64, i32, i32) #1

declare dso_local i64 @lblktosize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @err_suj(i8*, i32, i32) #1

declare dso_local i64 @fsbtodb(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @blkoff(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @ino_blkatoff(%union.dinode*, i64, i32, i32*) #1

declare dso_local i32* @dblk_read(i64, i64) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @dblk_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
