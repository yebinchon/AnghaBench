; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_check.c_checkfilesys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_check.c_checkfilesys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64, i32, i32, i32, i32, i32 }
%struct.fatEntry = type { i32 }

@alwaysno = common dso_local global i32 0, align 4
@rdonly = common dso_local global i32 0, align 4
@preen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"** %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" (NO WRITE)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Can't open `%s'\00", align 1
@FSFATAL = common dso_local global i32 0, align 4
@skipclean = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"FILESYSTEM CLEAN; SKIPPING CHECKS\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"** Phase 1 - Read and Compare FATs\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"** Phase 1 - Read FAT\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"** Phase 2 - Check Cluster Chains\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"** Phase 3 - Checking Directories\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"** Phase 4 - Checking for Lost Files\0A\00", align 1
@FSFATMOD = common dso_local global i32 0, align 4
@FSFIXFAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Update FATs\00", align 1
@FSERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"%d files, %d free (%d clusters), %d bad (%d clusters)\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%d files, %d free (%d clusters)\0A\00", align 1
@FSDIRTY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"MARK FILE SYSTEM CLEAN\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"MARKING FILE SYSTEM CLEAN\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\0A***** FILE SYSTEM IS LEFT MARKED AS DIRTY *****\0A\00", align 1
@FSDIRMOD = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"\0A***** FILE SYSTEM WAS MODIFIED *****\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkfilesys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bootblock, align 8
  %6 = alloca %struct.fatEntry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fatEntry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fatEntry* null, %struct.fatEntry** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %12 = load i32, i32* @alwaysno, align 4
  store i32 %12, i32* @rdonly, align 4
  %13 = load i64, i64* @preen, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @rdonly, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @O_RDONLY, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @O_RDWR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @open(i8* %19, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32, i32* @rdonly, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 @open(i8* %35, i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %48

42:                                               ; preds = %34
  %43 = load i64, i64* @preen, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %47, %40
  store i32 1, i32* @rdonly, align 4
  br label %55

49:                                               ; preds = %31, %26
  %50 = load i64, i64* @preen, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @perr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 8, i32* %2, align 4
  br label %351

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @readboot(i32 %63, %struct.bootblock* %5)
  %65 = load i32, i32* @FSFATAL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @close(i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 8, i32* %2, align 4
  br label %351

71:                                               ; preds = %62
  %72 = load i64, i64* @skipclean, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i64, i64* @preen, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @checkdirty(i32 %78, %struct.bootblock* %5)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %331

85:                                               ; preds = %77, %74, %71
  %86 = load i64, i64* @preen, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %96

94:                                               ; preds = %88
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %4, align 4
  %99 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi i64 [ %104, %102 ], [ 0, %105 ]
  %108 = trunc i64 %107 to i32
  %109 = call i32 @readfat(i32 %98, %struct.bootblock* %5, i32 %108, %struct.fatEntry** %6)
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @FSFATAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @close(i32 %117)
  store i32 8, i32* %2, align 4
  br label %351

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  store i32 1, i32* %8, align 4
  br label %124

124:                                              ; preds = %155, %123
  %125 = load i32, i32* %8, align 4
  %126 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @readfat(i32 %130, %struct.bootblock* %5, i32 %131, %struct.fatEntry** %11)
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @FSFATAL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %331

140:                                              ; preds = %129
  %141 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %142 = load %struct.fatEntry*, %struct.fatEntry** %11, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @comparefat(%struct.bootblock* %5, %struct.fatEntry* %141, %struct.fatEntry* %142, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load %struct.fatEntry*, %struct.fatEntry** %11, align 8
  %148 = call i32 @free(%struct.fatEntry* %147)
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @FSFATAL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %331

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %124

158:                                              ; preds = %124
  br label %159

159:                                              ; preds = %158, %119
  %160 = load i64, i64* @preen, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %159
  %165 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %166 = call i32 @checkfat(%struct.bootblock* %5, %struct.fatEntry* %165)
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @FSFATAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %331

174:                                              ; preds = %164
  %175 = load i64, i64* @preen, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %174
  %180 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %181 = call i32 @resetDosDirSection(%struct.bootblock* %5, %struct.fatEntry* %180)
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  store i32 1, i32* %7, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @FSFATAL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %331

189:                                              ; preds = %179
  %190 = load i32, i32* %4, align 4
  %191 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %192 = call i32 @handleDirTree(i32 %190, %struct.bootblock* %5, %struct.fatEntry* %191)
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @FSFATAL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  br label %331

200:                                              ; preds = %189
  %201 = load i64, i64* @preen, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %208 = call i32 @checklost(i32 %206, %struct.bootblock* %5, %struct.fatEntry* %207)
  %209 = load i32, i32* %9, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @FSFATAL, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %331

216:                                              ; preds = %205
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @FSFATMOD, align 4
  %219 = load i32, i32* @FSFIXFAT, align 4
  %220 = or i32 %218, %219
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %246

223:                                              ; preds = %216
  %224 = call i64 @ask(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %223
  %227 = load i32, i32* %4, align 4
  %228 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @FSFIXFAT, align 4
  %231 = and i32 %229, %230
  %232 = call i32 @writefat(i32 %227, %struct.bootblock* %5, %struct.fatEntry* %228, i32 %231)
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @FSFATAL, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  br label %331

240:                                              ; preds = %226
  br label %245

241:                                              ; preds = %223
  %242 = load i32, i32* @FSERROR, align 4
  %243 = load i32, i32* %9, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %241, %240
  br label %246

246:                                              ; preds = %245, %216
  %247 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %254, %256
  %258 = sdiv i32 %257, 1024
  %259 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %262, %264
  %266 = sdiv i32 %265, 1024
  %267 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %252, i32 %258, i32 %260, i32 %266, i32 %268)
  br label %282

270:                                              ; preds = %246
  %271 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %274, %276
  %278 = sdiv i32 %277, 1024
  %279 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %5, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %272, i32 %278, i32 %280)
  br label %282

282:                                              ; preds = %270, %250
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %322

285:                                              ; preds = %282
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* @FSERROR, align 4
  %288 = and i32 %286, %287
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %322

290:                                              ; preds = %285
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* @FSDIRTY, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %290
  %296 = call i64 @ask(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i32, i32* @FSDIRTY, align 4
  %300 = xor i32 %299, -1
  %301 = load i32, i32* %9, align 4
  %302 = and i32 %301, %300
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %298, %295
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* @FSDIRTY, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %310 = load i32, i32* %4, align 4
  %311 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %312 = call i32 @writefat(i32 %310, %struct.bootblock* %5, %struct.fatEntry* %311, i32 1)
  %313 = load i32, i32* %9, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %9, align 4
  br label %320

315:                                              ; preds = %303
  %316 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %317 = load i32, i32* @FSERROR, align 4
  %318 = load i32, i32* %9, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %9, align 4
  br label %320

320:                                              ; preds = %315, %308
  br label %321

321:                                              ; preds = %320, %290
  br label %322

322:                                              ; preds = %321, %285, %282
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* @FSFATAL, align 4
  %325 = load i32, i32* @FSERROR, align 4
  %326 = or i32 %324, %325
  %327 = and i32 %323, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  br label %331

330:                                              ; preds = %322
  store i32 0, i32* %10, align 4
  br label %331

331:                                              ; preds = %330, %329, %239, %215, %199, %188, %173, %153, %139, %81
  %332 = load i32, i32* %7, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  %335 = call i32 (...) @finishDosDirSection()
  br label %336

336:                                              ; preds = %334, %331
  %337 = load %struct.fatEntry*, %struct.fatEntry** %6, align 8
  %338 = call i32 @free(%struct.fatEntry* %337)
  %339 = load i32, i32* %4, align 4
  %340 = call i32 @close(i32 %339)
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* @FSFATMOD, align 4
  %343 = load i32, i32* @FSDIRMOD, align 4
  %344 = or i32 %342, %343
  %345 = and i32 %341, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %336
  %348 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %336
  %350 = load i32, i32* %10, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %349, %116, %67, %58
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pwarn(i8*, ...) #1

declare dso_local i32 @perr(i8*, i8*) #1

declare dso_local i32 @readboot(i32, %struct.bootblock*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @checkdirty(i32, %struct.bootblock*) #1

declare dso_local i32 @readfat(i32, %struct.bootblock*, i32, %struct.fatEntry**) #1

declare dso_local i32 @comparefat(%struct.bootblock*, %struct.fatEntry*, %struct.fatEntry*, i32) #1

declare dso_local i32 @free(%struct.fatEntry*) #1

declare dso_local i32 @checkfat(%struct.bootblock*, %struct.fatEntry*) #1

declare dso_local i32 @resetDosDirSection(%struct.bootblock*, %struct.fatEntry*) #1

declare dso_local i32 @handleDirTree(i32, %struct.bootblock*, %struct.fatEntry*) #1

declare dso_local i32 @checklost(i32, %struct.bootblock*, %struct.fatEntry*) #1

declare dso_local i64 @ask(i32, i8*) #1

declare dso_local i32 @writefat(i32, %struct.bootblock*, %struct.fatEntry*, i32) #1

declare dso_local i32 @finishDosDirSection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
