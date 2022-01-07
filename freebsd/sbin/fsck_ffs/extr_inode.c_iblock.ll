; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_iblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_iblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.inodesc = type { i64, i32 (%struct.inodesc*)*, i32, i64, i64, i64, i32 }
%struct.bufarea = type { i32 }
%union.dinode = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@DATA = common dso_local global i64 0, align 8
@KEEPON = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"PARTIALLY TRUNCATED INODE I=%lu\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fswritefd = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@B_INUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"DIRECTORY %s: CONTAINS EMPTY BLOCKS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ADJUST LENGTH\00", align 1
@di_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"YOU MUST RERUN FSCK AFTERWARDS\0A\00", align 1
@rerun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*, i64, i32)* @iblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock(%struct.inodesc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inodesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufarea*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.inodesc*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %union.dinode*, align 8
  %18 = alloca i32, align 4
  store %struct.inodesc* %0, %struct.inodesc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %28 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DATA, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %34 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %33, i32 0, i32 1
  %35 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %34, align 8
  store i32 (%struct.inodesc*)* %35, i32 (%struct.inodesc*)** %11, align 8
  %36 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %11, align 8
  %37 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %38 = call i32 %36(%struct.inodesc* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @KEEPON, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %263

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %3
  store i32 (%struct.inodesc*)* @dirscan, i32 (%struct.inodesc*)** %11, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %48 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %51 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @chkrange(i64 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @SKIP, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %263

57:                                               ; preds = %46
  %58 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %59 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.bufarea* @getdatablk(i64 %60, i64 %61, i32 %62)
  store %struct.bufarea* %63, %struct.bufarea** %8, align 8
  %64 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %65 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  store i64 %68, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %80, %57
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %72 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = call i32 @NINDIR(%struct.TYPE_3__* @sblock)
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %13, align 8
  %79 = mul nsw i64 %78, %77
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @howmany(i64 %84, i64 %85)
  %87 = call i32 @NINDIR(%struct.TYPE_3__* @sblock)
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @NINDIR(%struct.TYPE_3__* @sblock)
  store i32 %90, i32* %12, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @howmany(i64 %92, i64 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %91, %89
  %96 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %97 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %96, i32 0, i32 1
  %98 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %97, align 8
  %99 = icmp eq i32 (%struct.inodesc*)* %98, @pass1check
  br i1 %99, label %100, label %145

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @NINDIR(%struct.TYPE_3__* @sblock)
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %138, %104
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @NINDIR(%struct.TYPE_3__* @sblock)
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %106
  %111 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @IBLK(%struct.bufarea* %111, i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %138

116:                                              ; preds = %110
  %117 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %118 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i64, i64* @preen, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 @pfatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %137

126:                                              ; preds = %116
  %127 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %128 = call i64 @dofix(%struct.inodesc* %127, i8* %22)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @IBLK_SET(%struct.bufarea* %131, i32 %132, i32 0)
  %134 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %135 = call i32 @dirty(%struct.bufarea* %134)
  br label %136

136:                                              ; preds = %130, %126
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137, %115
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %106

141:                                              ; preds = %106
  %142 = load i32, i32* @fswritefd, align 4
  %143 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %144 = call i32 @flush(i32 %142, %struct.bufarea* %143)
  br label %145

145:                                              ; preds = %141, %100, %95
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %252, %145
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %255

150:                                              ; preds = %146
  %151 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @IBLK(%struct.bufarea* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %196

155:                                              ; preds = %150
  %156 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i64 @IBLK(%struct.bufarea* %156, i32 %157)
  %159 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %160 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %159, i32 0, i32 5
  store i64 %158, i64* %160, align 8
  %161 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %162 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %155
  %166 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %167 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %11, align 8
  %171 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %172 = call i32 %170(%struct.inodesc* %171)
  store i32 %172, i32* %10, align 4
  br label %182

173:                                              ; preds = %155
  %174 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @iblock(%struct.inodesc* %174, i64 %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %179 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %173, %165
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @STOP, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i32, i32* @B_INUSE, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %191 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %263

195:                                              ; preds = %182
  br label %248

196:                                              ; preds = %150
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %199 = sdiv i64 %197, %198
  %200 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %201 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, %199
  store i64 %203, i64* %201, align 8
  %204 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %205 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @DATA, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %247

209:                                              ; preds = %196
  %210 = load i64, i64* %6, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %247

212:                                              ; preds = %209
  %213 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %214 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %217 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @getpathname(i8* %26, i64 %215, i64 %218)
  %220 = call i32 @pfatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %221 = call i32 @reply(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %246

223:                                              ; preds = %212
  %224 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %225 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = call %union.dinode* @ginode(i64 %226)
  store %union.dinode* %227, %union.dinode** %17, align 8
  %228 = load %union.dinode*, %union.dinode** %17, align 8
  %229 = load i32, i32* @di_size, align 4
  %230 = load %union.dinode*, %union.dinode** %17, align 8
  %231 = load i32, i32* @di_size, align 4
  %232 = call i64 @DIP(%union.dinode* %230, i32 %231)
  %233 = load i64, i64* %6, align 8
  %234 = sub nsw i64 %232, %233
  %235 = call i32 @DIP_SET(%union.dinode* %228, i32 %229, i64 %234)
  store i64 0, i64* %6, align 8
  %236 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @rerun, align 4
  %237 = load %union.dinode*, %union.dinode** %17, align 8
  %238 = call i32 @inodirty(%union.dinode* %237)
  %239 = load i32, i32* @B_INUSE, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %242 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* @STOP, align 4
  store i32 %245, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %263

246:                                              ; preds = %212
  br label %247

247:                                              ; preds = %246, %209, %196
  br label %248

248:                                              ; preds = %247, %195
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* %6, align 8
  %251 = sub nsw i64 %250, %249
  store i64 %251, i64* %6, align 8
  br label %252

252:                                              ; preds = %248
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %146

255:                                              ; preds = %146
  %256 = load i32, i32* @B_INUSE, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %259 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* @KEEPON, align 4
  store i32 %262, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %263

263:                                              ; preds = %255, %223, %187, %55, %42
  %264 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dirscan(%struct.inodesc*) #2

declare dso_local i64 @chkrange(i64, i32) #2

declare dso_local %struct.bufarea* @getdatablk(i64, i64, i32) #2

declare dso_local i32 @NINDIR(%struct.TYPE_3__*) #2

declare dso_local i32 @howmany(i64, i64) #2

declare dso_local i32 @pass1check(%struct.inodesc*) #2

declare dso_local i64 @IBLK(%struct.bufarea*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @pfatal(i8*, i8*) #2

declare dso_local i64 @dofix(%struct.inodesc*, i8*) #2

declare dso_local i32 @IBLK_SET(%struct.bufarea*, i32, i32) #2

declare dso_local i32 @dirty(%struct.bufarea*) #2

declare dso_local i32 @flush(i32, %struct.bufarea*) #2

declare dso_local i32 @getpathname(i8*, i64, i64) #2

declare dso_local i32 @reply(i8*) #2

declare dso_local %union.dinode* @ginode(i64) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i64) #2

declare dso_local i64 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @inodirty(%union.dinode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
