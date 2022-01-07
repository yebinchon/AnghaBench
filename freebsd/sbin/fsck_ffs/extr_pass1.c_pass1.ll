; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_pass1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_pass1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.inostat* }
%struct.inostat = type { i32 }
%struct.inodesc = type { i32 }
%struct.bufarea = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.cg* }
%struct.cg = type { i32 }

@lastino = common dso_local global i32 0, align 4
@dupblk = common dso_local global i32 0, align 4
@badblk = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@pass1check = common dso_local global i32 0, align 4
@n_blks = common dso_local global i64 0, align 8
@n_files = common dso_local global i64 0, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Too many initialized inodes (%ju > %d) in cylinder group %d\0AReset to %d\0A\00", align 1
@got_siginfo = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: phase 1: cyl group %d of %d (%d%%)\0A\00", align 1
@cdevname = common dso_local global i8* null, align 8
@got_sigalarm = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s p1 %d%%\00", align 1
@preen = common dso_local global i64 0, align 8
@inoopt = common dso_local global i64 0, align 8
@usedsoftdep = common dso_local global i64 0, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@inostathead = common dso_local global %struct.TYPE_10__* null, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot alloc %u bytes for inoinfo\00", align 1
@UFS_ROOTINO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"CYLINDER GROUP %d: RESET FROM %ju TO %d %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"VALID INODES\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"CYLINDER GROUP %d: FOUND %d VALID INODES\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass1() #0 {
  %1 = alloca %struct.inostat*, align 8
  %2 = alloca %struct.inodesc, align 4
  %3 = alloca %struct.bufarea*, align 8
  %4 = alloca %struct.cg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* @lastino, align 4
  store i32 0, i32* @dupblk, align 4
  store i32 0, i32* @badblk, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %40, %0
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @cgdmin(%struct.TYPE_9__* @sblock, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @cgbase(%struct.TYPE_9__* @sblock, i32 %23)
  store i64 %24, i64* %8, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @cgsblock(%struct.TYPE_9__* @sblock, i32 %26)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @setbmap(i64 %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 1), align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 5), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 4), align 8
  %48 = call i64 @howmany(i32 %46, i32 %47)
  %49 = add nsw i64 %45, %48
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %57, %43
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @setbmap(i64 %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %50

60:                                               ; preds = %50
  %61 = call i32 @memset(%struct.inodesc* %2, i32 0, i32 4)
  %62 = load i32, i32* @pass1check, align 4
  %63 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %2, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  store i64 0, i64* @n_blks, align 8
  store i64 0, i64* @n_files, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %431, %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %434

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @setinodebuf(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call %struct.bufarea* @cglookup(i32 %74)
  store %struct.bufarea* %75, %struct.bufarea** %3, align 8
  %76 = load %struct.bufarea*, %struct.bufarea** %3, align 8
  %77 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.cg*, %struct.cg** %78, align 8
  store %struct.cg* %79, %struct.cg** %4, align 8
  store i32 0, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.bufarea*, %struct.bufarea** %3, align 8
  %82 = call i32 @check_cgmagic(i32 %80, %struct.bufarea* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %68
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 3), align 8
  %90 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load %struct.cg*, %struct.cg** %4, align 8
  %94 = getelementptr inbounds %struct.cg, %struct.cg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %104 = call i32 @pfatal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %99, %92
  br label %109

107:                                              ; preds = %88, %85
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i64, i64* @got_siginfo, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i8*, i8** @cdevname, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %116, 100
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %119 = sdiv i32 %117, %118
  %120 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %114, i32 %115, i32 %119)
  store i64 0, i64* @got_siginfo, align 8
  br label %121

121:                                              ; preds = %112, %109
  %122 = load i64, i64* @got_sigalarm, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i8*, i8** @cdevname, align 8
  %126 = load i32, i32* %11, align 4
  %127 = mul nsw i32 %126, 100
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %129 = sdiv i32 %127, %128
  %130 = call i32 @setproctitle(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %125, i32 %129)
  store i64 0, i64* @got_sigalarm, align 8
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i64, i64* @preen, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @inoopt, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %195

137:                                              ; preds = %134, %131
  %138 = load i64, i64* @usedsoftdep, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %195

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %195, label %143

143:                                              ; preds = %140
  %144 = load %struct.cg*, %struct.cg** %4, align 8
  %145 = call i64* @cg_inosused(%struct.cg* %144)
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* @CHAR_BIT, align 4
  %149 = sdiv i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %145, i64 %150
  store i64* %151, i64** %10, align 8
  br label %152

152:                                              ; preds = %191, %143
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %194

155:                                              ; preds = %152
  %156 = load i64*, i64** %10, align 8
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @CHAR_BIT, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* @CHAR_BIT, align 4
  %165 = load i32, i32* %6, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %168

167:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %163
  br label %191

169:                                              ; preds = %155
  %170 = load i32, i32* @CHAR_BIT, align 4
  %171 = sub nsw i32 %170, 1
  %172 = shl i32 1, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %8, align 8
  br label %174

174:                                              ; preds = %187, %169
  %175 = load i64, i64* %8, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load i64*, i64** %10, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %8, align 8
  %181 = and i64 %179, %180
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %190

184:                                              ; preds = %177
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %8, align 8
  %189 = ashr i64 %188, 1
  store i64 %189, i64* %8, align 8
  br label %174

190:                                              ; preds = %183, %174
  br label %194

191:                                              ; preds = %168
  %192 = load i64*, i64** %10, align 8
  %193 = getelementptr inbounds i64, i64* %192, i32 -1
  store i64* %193, i64** %10, align 8
  br label %152

194:                                              ; preds = %190, %152
  br label %195

195:                                              ; preds = %194, %140, %137, %134
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  store i32 %196, i32* %201, align 8
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  store %struct.inostat* null, %struct.inostat** %209, align 8
  br label %431

210:                                              ; preds = %195
  %211 = load i32, i32* %6, align 4
  %212 = call %struct.inostat* @Calloc(i32 %211, i32 4)
  store %struct.inostat* %212, %struct.inostat** %1, align 8
  %213 = load %struct.inostat*, %struct.inostat** %1, align 8
  %214 = icmp eq %struct.inostat* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load i32, i32* @EEXIT, align 4
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 4, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @errx(i32 %216, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %215, %210
  %223 = load %struct.inostat*, %struct.inostat** %1, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store %struct.inostat* %223, %struct.inostat** %228, align 8
  store i64 0, i64* %8, align 8
  br label %229

229:                                              ; preds = %256, %222
  %230 = load i64, i64* %8, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %234, label %261

234:                                              ; preds = %229
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @UFS_ROOTINO, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @getnextinode(i32 %239, i32 %240)
  br label %256

242:                                              ; preds = %234
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %12, align 4
  %245 = call i64 @checkinode(i32 %243, %struct.inodesc* %2, i32 %244)
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load i64, i64* %8, align 8
  %249 = load %struct.cg*, %struct.cg** %4, align 8
  %250 = getelementptr inbounds %struct.cg, %struct.cg* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp sgt i64 %248, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %261

255:                                              ; preds = %247, %242
  br label %256

256:                                              ; preds = %255, %238
  %257 = load i64, i64* %8, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %8, align 8
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %229

261:                                              ; preds = %254, %229
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %264 = add nsw i32 %262, %263
  %265 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %266 = call i8* @roundup(i32 %264, i32 %265)
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* %7, align 4
  %268 = load i64, i64* @inoopt, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %321

270:                                              ; preds = %261
  %271 = load i64, i64* @preen, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %321, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %321, label %276

276:                                              ; preds = %273
  %277 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 3), align 8
  %278 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %321

280:                                              ; preds = %276
  %281 = load %struct.cg*, %struct.cg** %4, align 8
  %282 = getelementptr inbounds %struct.cg, %struct.cg* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %285 = mul nsw i32 2, %284
  %286 = icmp sgt i32 %283, %285
  br i1 %286, label %287, label %321

287:                                              ; preds = %280
  %288 = load i32, i32* %7, align 4
  %289 = load %struct.cg*, %struct.cg** %4, align 8
  %290 = getelementptr inbounds %struct.cg, %struct.cg* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %321

293:                                              ; preds = %287
  %294 = load %struct.cg*, %struct.cg** %4, align 8
  %295 = getelementptr inbounds %struct.cg, %struct.cg* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %8, align 8
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %300 = mul nsw i32 2, %299
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %293
  %303 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %304 = mul nsw i32 2, %303
  %305 = load %struct.cg*, %struct.cg** %4, align 8
  %306 = getelementptr inbounds %struct.cg, %struct.cg* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 4
  br label %311

307:                                              ; preds = %293
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.cg*, %struct.cg** %4, align 8
  %310 = getelementptr inbounds %struct.cg, %struct.cg* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %307, %302
  %312 = load i32, i32* %11, align 4
  %313 = load i64, i64* %8, align 8
  %314 = trunc i64 %313 to i32
  %315 = load %struct.cg*, %struct.cg** %4, align 8
  %316 = getelementptr inbounds %struct.cg, %struct.cg* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i8*, i32, i32, ...) @pwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %312, i32 %314, i32 %317, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %319 = load %struct.bufarea*, %struct.bufarea** %3, align 8
  %320 = call i32 @cgdirty(%struct.bufarea* %319)
  br label %321

321:                                              ; preds = %311, %287, %280, %276, %273, %270, %261
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %431

326:                                              ; preds = %321
  %327 = load i32, i32* @lastino, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* @lastino, align 4
  %329 = load i32, i32* @lastino, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %332 = mul nsw i32 %330, %331
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %326
  store i32 0, i32* %6, align 4
  br label %341

335:                                              ; preds = %326
  %336 = load i32, i32* @lastino, align 4
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 2), align 8
  %339 = mul nsw i32 %337, %338
  %340 = sub nsw i32 %336, %339
  store i32 %340, i32* %6, align 4
  br label %341

341:                                              ; preds = %335, %334
  %342 = load i32, i32* %12, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %341
  %345 = load i32, i32* %6, align 4
  %346 = load %struct.cg*, %struct.cg** %4, align 8
  %347 = getelementptr inbounds %struct.cg, %struct.cg* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp sgt i32 %345, %348
  br i1 %349, label %350, label %366

350:                                              ; preds = %344
  %351 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 3), align 8
  %352 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %366

354:                                              ; preds = %350
  %355 = load i32, i32* %6, align 4
  %356 = call i32 @INOPB(%struct.TYPE_9__* @sblock)
  %357 = call i8* @roundup(i32 %355, i32 %356)
  %358 = ptrtoint i8* %357 to i32
  %359 = load %struct.cg*, %struct.cg** %4, align 8
  %360 = getelementptr inbounds %struct.cg, %struct.cg* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %11, align 4
  %362 = load %struct.cg*, %struct.cg** %4, align 8
  %363 = getelementptr inbounds %struct.cg, %struct.cg* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i32 (i8*, i32, i32, ...) @pwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %361, i32 %364)
  br label %366

366:                                              ; preds = %354, %350, %344, %341
  %367 = load i32, i32* %5, align 4
  %368 = load i32, i32* @lastino, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  br label %431

371:                                              ; preds = %366
  %372 = load i32, i32* %6, align 4
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  store i32 %372, i32* %377, align 8
  %378 = load i32, i32* %6, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %371
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %382 = load i32, i32* %11, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 1
  %386 = load %struct.inostat*, %struct.inostat** %385, align 8
  %387 = call i32 @free(%struct.inostat* %386)
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 1
  store %struct.inostat* null, %struct.inostat** %392, align 8
  br label %431

393:                                              ; preds = %371
  %394 = load i32, i32* %6, align 4
  %395 = call %struct.inostat* @Calloc(i32 %394, i32 4)
  store %struct.inostat* %395, %struct.inostat** %1, align 8
  %396 = load %struct.inostat*, %struct.inostat** %1, align 8
  %397 = icmp eq %struct.inostat* %396, null
  br i1 %397, label %398, label %405

398:                                              ; preds = %393
  %399 = load i32, i32* @EEXIT, align 4
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = mul i64 4, %401
  %403 = trunc i64 %402 to i32
  %404 = call i32 @errx(i32 %399, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %398, %393
  %406 = load %struct.inostat*, %struct.inostat** %1, align 8
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 1
  %412 = load %struct.inostat*, %struct.inostat** %411, align 8
  %413 = load i32, i32* %6, align 4
  %414 = sext i32 %413 to i64
  %415 = mul i64 %414, 4
  %416 = trunc i64 %415 to i32
  %417 = call i32 @memmove(%struct.inostat* %406, %struct.inostat* %412, i32 %416)
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %419 = load i32, i32* %11, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 1
  %423 = load %struct.inostat*, %struct.inostat** %422, align 8
  %424 = call i32 @free(%struct.inostat* %423)
  %425 = load %struct.inostat*, %struct.inostat** %1, align 8
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** @inostathead, align 8
  %427 = load i32, i32* %11, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 1
  store %struct.inostat* %425, %struct.inostat** %430, align 8
  br label %431

431:                                              ; preds = %405, %380, %370, %325, %204
  %432 = load i32, i32* %11, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %11, align 4
  br label %64

434:                                              ; preds = %64
  %435 = call i32 (...) @freeinodebuf()
  ret void
}

declare dso_local i64 @cgdmin(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @cgbase(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @cgsblock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @setbmap(i64) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #1

declare dso_local i32 @setinodebuf(i32) #1

declare dso_local %struct.bufarea* @cglookup(i32) #1

declare dso_local i32 @check_cgmagic(i32, %struct.bufarea*) #1

declare dso_local i32 @pfatal(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @setproctitle(i8*, i8*, i32) #1

declare dso_local i64* @cg_inosused(%struct.cg*) #1

declare dso_local %struct.inostat* @Calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @getnextinode(i32, i32) #1

declare dso_local i64 @checkinode(i32, %struct.inodesc*, i32) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @INOPB(%struct.TYPE_9__*) #1

declare dso_local i32 @pwarn(i8*, i32, i32, ...) #1

declare dso_local i32 @cgdirty(%struct.bufarea*) #1

declare dso_local i32 @free(%struct.inostat*) #1

declare dso_local i32 @memmove(%struct.inostat*, %struct.inostat*, i32) #1

declare dso_local i32 @freeinodebuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
