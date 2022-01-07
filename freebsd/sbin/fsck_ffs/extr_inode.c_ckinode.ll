; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_ckinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_ckinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64 }
%union.dinode = type { i32 }
%struct.inodesc = type { i64, i32, i32, i32, i32, i64, i32, i32 (%struct.inodesc*)*, i32, i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i64 0, align 8
@DONTKNOW = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFBLK = common dso_local global i32 0, align 4
@IFCHR = common dso_local global i32 0, align 4
@IFLNK = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@KEEPON = common dso_local global i32 0, align 4
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@UFS_NDADDR = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"DIRECTORY %s: CONTAINS EMPTY BLOCKS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ADJUST LENGTH\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"YOU MUST RERUN FSCK AFTERWARDS\0A\00", align 1
@rerun = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_ib = common dso_local global i32* null, align 8
@BT_LEVEL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ckinode(%union.dinode* %0, %struct.inodesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.dinode*, align 8
  %5 = alloca %struct.inodesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.dinode, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %4, align 8
  store %struct.inodesc* %1, %struct.inodesc** %5, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %23 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IGNORE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* @DONTKNOW, align 8
  %29 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %30 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %33 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 8
  %34 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %35 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %34, i32 0, i32 2
  store i32 -1, i32* %35, align 4
  %36 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %37 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %39 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load %union.dinode*, %union.dinode** %4, align 8
  %41 = load i32, i32* @di_size, align 4
  %42 = call i32 @DIP(%union.dinode* %40, i32 %41)
  %43 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %44 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %union.dinode*, %union.dinode** %4, align 8
  %46 = load i32, i32* @di_mode, align 4
  %47 = call i32 @DIP(%union.dinode* %45, i32 %46)
  %48 = load i32, i32* @IFMT, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @IFBLK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %68, label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @IFCHR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @IFLNK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %union.dinode*, %union.dinode** %4, align 8
  %63 = load i32, i32* @di_size, align 4
  %64 = call i32 @DIP(%union.dinode* %62, i32 %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 3), align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %53, %31
  %69 = load i32, i32* @KEEPON, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %302

70:                                               ; preds = %61, %57
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %72 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %union.dinode*, %union.dinode** %4, align 8
  %76 = bitcast %union.dinode* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = bitcast %union.dinode* %11 to i32*
  store i32 %77, i32* %78, align 4
  br label %84

79:                                               ; preds = %70
  %80 = load %union.dinode*, %union.dinode** %4, align 8
  %81 = bitcast %union.dinode* %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.dinode* %11 to i32*
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @di_size, align 4
  %86 = call i32 @DIP(%union.dinode* %11, i32 %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %88 = call i64 @howmany(i32 %86, i32 %87)
  store i64 %88, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %191, %84
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @UFS_NDADDR, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %194

93:                                               ; preds = %89
  %94 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %95 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %12, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %12, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load i32, i32* @di_size, align 4
  %103 = call i32 @DIP(%union.dinode* %11, i32 %102)
  %104 = call i32 @blkoff(%struct.TYPE_6__* @sblock, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @fragroundup(%struct.TYPE_6__* @sblock, i32 %107)
  %109 = call i32 @numfrags(%struct.TYPE_6__* @sblock, i32 %108)
  %110 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %111 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  br label %116

112:                                              ; preds = %101, %93
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 2), align 4
  %114 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %115 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32*, i32** @di_db, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @DIP(%union.dinode* %11, i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %116
  %125 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %126 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DATA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %124
  %131 = load i64, i64* %12, align 8
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %130
  %134 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %135 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %138 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @getpathname(i8* %21, i32 %136, i32 %139)
  %141 = call i32 @pfatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21)
  %142 = call i32 @reply(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %158

144:                                              ; preds = %133
  %145 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %146 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call %union.dinode* @ginode(i32 %147)
  store %union.dinode* %148, %union.dinode** %4, align 8
  %149 = load %union.dinode*, %union.dinode** %4, align 8
  %150 = load i32, i32* @di_size, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %153 = mul nsw i32 %151, %152
  %154 = call i32 @DIP_SET(%union.dinode* %149, i32 %150, i32 %153)
  %155 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @rerun, align 4
  %156 = load %union.dinode*, %union.dinode** %4, align 8
  %157 = call i32 @inodirty(%union.dinode* %156)
  br label %158

158:                                              ; preds = %144, %133
  br label %159

159:                                              ; preds = %158, %130, %124
  br label %191

160:                                              ; preds = %116
  %161 = load i32*, i32** @di_db, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @DIP(%union.dinode* %11, i32 %165)
  %167 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %168 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %170 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @DATA, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %160
  %175 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %176 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %175, i32 0, i32 7
  %177 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %176, align 8
  %178 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %179 = call i32 %177(%struct.inodesc* %178)
  store i32 %179, i32* %10, align 4
  br label %183

180:                                              ; preds = %160
  %181 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %182 = call i32 @dirscan(%struct.inodesc* %181)
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %174
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @STOP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %302

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %159
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %89

194:                                              ; preds = %89
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 2), align 4
  %196 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %197 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @di_size, align 4
  %199 = call i32 @DIP(%union.dinode* %11, i32 %198)
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %201 = load i32, i32* @UFS_NDADDR, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sub nsw i32 %199, %202
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  store i32 %204, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %205

205:                                              ; preds = %297, %194
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @UFS_NIADDR, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %300

209:                                              ; preds = %205
  %210 = call i32 @NINDIR(%struct.TYPE_6__* @sblock)
  %211 = load i32, i32* %7, align 4
  %212 = mul nsw i32 %211, %210
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  %215 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %216 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  %217 = load i32*, i32** @di_ib, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @DIP(%union.dinode* %11, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %247

224:                                              ; preds = %209
  %225 = load i32*, i32** @di_ib, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @DIP(%union.dinode* %11, i32 %229)
  %231 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %232 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  %233 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i64, i64* @BT_LEVEL1, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = call i32 @iblock(%struct.inodesc* %233, i32 %234, i64 %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @STOP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %224
  %245 = load i32, i32* %10, align 4
  store i32 %245, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %302

246:                                              ; preds = %224
  br label %293

247:                                              ; preds = %209
  %248 = load i32, i32* %6, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %292

250:                                              ; preds = %247
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %253 = sdiv i32 %251, %252
  %254 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %255 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, %253
  store i32 %257, i32* %255, align 8
  %258 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %259 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @DATA, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %291

263:                                              ; preds = %250
  %264 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %265 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %268 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @getpathname(i8* %21, i32 %266, i32 %269)
  %271 = call i32 @pfatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21)
  %272 = call i32 @reply(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %290

274:                                              ; preds = %263
  %275 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %276 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 8
  %278 = call %union.dinode* @ginode(i32 %277)
  store %union.dinode* %278, %union.dinode** %4, align 8
  %279 = load %union.dinode*, %union.dinode** %4, align 8
  %280 = load i32, i32* @di_size, align 4
  %281 = load %union.dinode*, %union.dinode** %4, align 8
  %282 = load i32, i32* @di_size, align 4
  %283 = call i32 @DIP(%union.dinode* %281, i32 %282)
  %284 = load i32, i32* %6, align 4
  %285 = sub nsw i32 %283, %284
  %286 = call i32 @DIP_SET(%union.dinode* %279, i32 %280, i32 %285)
  store i32 0, i32* %6, align 4
  %287 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @rerun, align 4
  %288 = load %union.dinode*, %union.dinode** %4, align 8
  %289 = call i32 @inodirty(%union.dinode* %288)
  br label %300

290:                                              ; preds = %263
  br label %291

291:                                              ; preds = %290, %250
  br label %292

292:                                              ; preds = %291, %247
  br label %293

293:                                              ; preds = %292, %246
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* %6, align 4
  %296 = sub nsw i32 %295, %294
  store i32 %296, i32* %6, align 4
  br label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %8, align 4
  br label %205

300:                                              ; preds = %274, %205
  %301 = load i32, i32* @KEEPON, align 4
  store i32 %301, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %302

302:                                              ; preds = %300, %244, %188, %68
  %303 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DIP(%union.dinode*, i32) #2

declare dso_local i64 @howmany(i32, i32) #2

declare dso_local i32 @blkoff(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @numfrags(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @fragroundup(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @getpathname(i8*, i32, i32) #2

declare dso_local i32 @pfatal(i8*, i8*) #2

declare dso_local i32 @reply(i8*) #2

declare dso_local %union.dinode* @ginode(i32) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @inodirty(%union.dinode*) #2

declare dso_local i32 @dirscan(%struct.inodesc*) #2

declare dso_local i32 @NINDIR(%struct.TYPE_6__*) #2

declare dso_local i32 @iblock(%struct.inodesc*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
