; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_boot.c_readboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_boot.c_readboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@DOSBOOTBLOCKSIZE = common dso_local global i32 0, align 4
@FSOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not read boot block\00", align 1
@FSFATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid signature in boot block: %02x%02x\00", align 1
@DOSBOOTBLOCKSIZE_REAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid sector size: %u\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid cluster size: %u\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid reserved sectors: %u\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid number of FATs: %u\00", align 1
@FAT32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Invalid 16-bit total sector count on FAT32: %u\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Invalid 16-bit FAT sector count on FAT32: %u\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"FAT32 with sector count of zero\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"FAT with sector count of zero\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Invalid FAT sector count\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"EXFAT   \00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"exFAT filesystem is not supported.\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unknown file system version: %x.%x\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Invalid FAT32 Extended BIOS Parameter Block\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"could not read fsinfo block\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RRaA\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"rrAa\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Invalid signature in fsinfo block\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Fix\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Unable to write bpbFSInfo\00", align 1
@FSBOOTMOD = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [35 x i8] c"Invalid FATs(%u) with FATsecs(%zu)\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Cluster offset too large (%u clusters)\0A\00", align 1
@CLUST_FIRST = common dso_local global i64 0, align 8
@CLUST_RSRVD = common dso_local global i32 0, align 4
@CLUST12_MASK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"Filesystem too big (%u clusters) for non-FAT32 partition\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"FAT size too small, %u entries won't fit into %u sectors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readboot(i32 %0, %struct.bootblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bootblock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.bootblock* %1, %struct.bootblock** %5, align 8
  %11 = load i32, i32* @DOSBOOTBLOCKSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @DOSBOOTBLOCKSIZE, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i32, i32* @FSOK, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nuw i64 4, %12
  %22 = trunc i64 %21 to i32
  %23 = call i32 @read(i32 %20, i32* %14, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = mul nuw i64 4, %12
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 @perr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FSFATAL, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

30:                                               ; preds = %2
  %31 = getelementptr inbounds i32, i32* %14, i64 510
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 85
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %14, i64 511
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 170
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds i32, i32* %14, i64 511
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %14, i64 510
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @FSFATAL, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

45:                                               ; preds = %34
  %46 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %47 = call i32 @memset(%struct.bootblock* %46, i32 0, i32 120)
  %48 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %49 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = getelementptr inbounds i32, i32* %14, i64 11
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %14, i64 12
  %53 = load i32, i32* %52, align 16
  %54 = shl i32 %53, 8
  %55 = add nsw i32 %51, %54
  %56 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %57 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %59 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DOSBOOTBLOCKSIZE_REAL, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %45
  %64 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %65 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DOSBOOTBLOCKSIZE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %71 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @powerof2(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69, %63, %45
  %76 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %77 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @FSFATAL, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

81:                                               ; preds = %69
  %82 = getelementptr inbounds i32, i32* %14, i64 13
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %85 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %87 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %92 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @powerof2(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90, %81
  %97 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %98 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @FSFATAL, align 4
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

102:                                              ; preds = %90
  %103 = getelementptr inbounds i32, i32* %14, i64 14
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds i32, i32* %14, i64 15
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = add nsw i32 %104, %107
  %109 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %110 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %112 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %117 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @FSFATAL, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

121:                                              ; preds = %102
  %122 = getelementptr inbounds i32, i32* %14, i64 16
  %123 = load i32, i32* %122, align 16
  %124 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %125 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %127 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %132 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @FSFATAL, align 4
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

136:                                              ; preds = %121
  %137 = getelementptr inbounds i32, i32* %14, i64 17
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds i32, i32* %14, i64 18
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 8
  %142 = add nsw i32 %138, %141
  %143 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %144 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %146 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* @FAT32, align 4
  %151 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %152 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %136
  %156 = getelementptr inbounds i32, i32* %14, i64 19
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds i32, i32* %14, i64 20
  %159 = load i32, i32* %158, align 16
  %160 = shl i32 %159, 8
  %161 = add nsw i32 %157, %160
  %162 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %163 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %165 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %155
  %169 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %170 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FAT32, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %177 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @FSFATAL, align 4
  store i32 %180, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

181:                                              ; preds = %168, %155
  %182 = getelementptr inbounds i32, i32* %14, i64 21
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %185 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  %186 = getelementptr inbounds i32, i32* %14, i64 22
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds i32, i32* %14, i64 23
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 8
  %191 = add nsw i32 %187, %190
  %192 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %193 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %192, i32 0, i32 9
  store i32 %191, i32* %193, align 4
  %194 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %195 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %181
  %199 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %200 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @FAT32, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %207 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @FSFATAL, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

211:                                              ; preds = %198, %181
  %212 = getelementptr inbounds i32, i32* %14, i64 24
  %213 = load i32, i32* %212, align 16
  %214 = getelementptr inbounds i32, i32* %14, i64 25
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 8
  %217 = add nsw i32 %213, %216
  %218 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %219 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  %220 = getelementptr inbounds i32, i32* %14, i64 26
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds i32, i32* %14, i64 27
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 8
  %225 = add nsw i32 %221, %224
  %226 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %227 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %226, i32 0, i32 11
  store i32 %225, i32* %227, align 4
  %228 = getelementptr inbounds i32, i32* %14, i64 28
  %229 = load i32, i32* %228, align 16
  %230 = getelementptr inbounds i32, i32* %14, i64 29
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 8
  %233 = add nsw i32 %229, %232
  %234 = getelementptr inbounds i32, i32* %14, i64 30
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 %235, 16
  %237 = add nsw i32 %233, %236
  %238 = getelementptr inbounds i32, i32* %14, i64 31
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 24
  %241 = add nsw i32 %237, %240
  %242 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %243 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %242, i32 0, i32 12
  store i32 %241, i32* %243, align 8
  %244 = getelementptr inbounds i32, i32* %14, i64 32
  %245 = load i32, i32* %244, align 16
  %246 = getelementptr inbounds i32, i32* %14, i64 33
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 8
  %249 = add nsw i32 %245, %248
  %250 = getelementptr inbounds i32, i32* %14, i64 34
  %251 = load i32, i32* %250, align 8
  %252 = shl i32 %251, 16
  %253 = add nsw i32 %249, %252
  %254 = getelementptr inbounds i32, i32* %14, i64 35
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 24
  %257 = add nsw i32 %253, %256
  %258 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %259 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %258, i32 0, i32 13
  store i32 %257, i32* %259, align 4
  %260 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %261 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %260, i32 0, i32 13
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %289

264:                                              ; preds = %211
  %265 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %266 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @FAT32, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %273 = load i32, i32* @FSFATAL, align 4
  store i32 %273, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

274:                                              ; preds = %264
  %275 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %276 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %281 = load i32, i32* @FSFATAL, align 4
  store i32 %281, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %285 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %288 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %287, i32 0, i32 14
  store i32 %286, i32* %288, align 8
  br label %303

289:                                              ; preds = %211
  %290 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %291 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %296 = load i32, i32* @FSFATAL, align 4
  store i32 %296, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

297:                                              ; preds = %289
  %298 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %299 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %298, i32 0, i32 13
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %302 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %301, i32 0, i32 14
  store i32 %300, i32* %302, align 8
  br label %303

303:                                              ; preds = %297, %283
  %304 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %305 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @FAT32, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %553

310:                                              ; preds = %303
  %311 = getelementptr inbounds i32, i32* %14, i64 3
  %312 = call i64 @memcmp(i32* %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %316 = load i32, i32* @FSFATAL, align 4
  store i32 %316, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

317:                                              ; preds = %310
  %318 = getelementptr inbounds i32, i32* %14, i64 36
  %319 = load i32, i32* %318, align 16
  %320 = getelementptr inbounds i32, i32* %14, i64 37
  %321 = load i32, i32* %320, align 4
  %322 = shl i32 %321, 8
  %323 = add nsw i32 %319, %322
  %324 = getelementptr inbounds i32, i32* %14, i64 38
  %325 = load i32, i32* %324, align 8
  %326 = shl i32 %325, 16
  %327 = add nsw i32 %323, %326
  %328 = getelementptr inbounds i32, i32* %14, i64 39
  %329 = load i32, i32* %328, align 4
  %330 = shl i32 %329, 24
  %331 = add nsw i32 %327, %330
  %332 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %333 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %332, i32 0, i32 15
  store i32 %331, i32* %333, align 4
  %334 = getelementptr inbounds i32, i32* %14, i64 40
  %335 = load i32, i32* %334, align 16
  %336 = and i32 %335, 128
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %317
  %339 = getelementptr inbounds i32, i32* %14, i64 40
  %340 = load i32, i32* %339, align 16
  %341 = and i32 %340, 15
  %342 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %343 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  br label %344

344:                                              ; preds = %338, %317
  %345 = getelementptr inbounds i32, i32* %14, i64 42
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds i32, i32* %14, i64 43
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %348, %344
  %353 = getelementptr inbounds i32, i32* %14, i64 43
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds i32, i32* %14, i64 42
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %354, i32 %356)
  %358 = load i32, i32* @FSFATAL, align 4
  store i32 %358, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

359:                                              ; preds = %348
  %360 = getelementptr inbounds i32, i32* %14, i64 44
  %361 = load i32, i32* %360, align 16
  %362 = getelementptr inbounds i32, i32* %14, i64 45
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 8
  %365 = add nsw i32 %361, %364
  %366 = getelementptr inbounds i32, i32* %14, i64 46
  %367 = load i32, i32* %366, align 8
  %368 = shl i32 %367, 16
  %369 = add nsw i32 %365, %368
  %370 = getelementptr inbounds i32, i32* %14, i64 47
  %371 = load i32, i32* %370, align 4
  %372 = shl i32 %371, 24
  %373 = add nsw i32 %369, %372
  %374 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %375 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %374, i32 0, i32 16
  store i32 %373, i32* %375, align 8
  %376 = getelementptr inbounds i32, i32* %14, i64 48
  %377 = load i32, i32* %376, align 16
  %378 = getelementptr inbounds i32, i32* %14, i64 49
  %379 = load i32, i32* %378, align 4
  %380 = shl i32 %379, 8
  %381 = add nsw i32 %377, %380
  %382 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %383 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %382, i32 0, i32 17
  store i32 %381, i32* %383, align 4
  %384 = getelementptr inbounds i32, i32* %14, i64 50
  %385 = load i32, i32* %384, align 8
  %386 = getelementptr inbounds i32, i32* %14, i64 51
  %387 = load i32, i32* %386, align 4
  %388 = shl i32 %387, 8
  %389 = add nsw i32 %385, %388
  %390 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %391 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %390, i32 0, i32 18
  store i32 %389, i32* %391, align 8
  %392 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %393 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %392, i32 0, i32 17
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %359
  %397 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  %398 = load i32, i32* @FSFATAL, align 4
  store i32 %398, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

399:                                              ; preds = %359
  %400 = load i32, i32* %4, align 4
  %401 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %402 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %401, i32 0, i32 17
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %405 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 %403, %406
  %408 = load i32, i32* @SEEK_SET, align 4
  %409 = call i32 @lseek(i32 %400, i32 %407, i32 %408)
  %410 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %411 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %410, i32 0, i32 17
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %414 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = mul nsw i32 %412, %415
  %417 = icmp ne i32 %409, %416
  br i1 %417, label %426, label %418

418:                                              ; preds = %399
  %419 = load i32, i32* %4, align 4
  %420 = mul nuw i64 4, %17
  %421 = trunc i64 %420 to i32
  %422 = call i32 @read(i32 %419, i32* %18, i32 %421)
  %423 = sext i32 %422 to i64
  %424 = mul nuw i64 4, %17
  %425 = icmp ne i64 %423, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %418, %399
  %427 = call i32 @perr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %428 = load i32, i32* @FSFATAL, align 4
  store i32 %428, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

429:                                              ; preds = %418
  %430 = call i64 @memcmp(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %468, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds i32, i32* %18, i64 484
  %434 = call i64 @memcmp(i32* %433, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %468, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds i32, i32* %18, i64 508
  %438 = load i32, i32* %437, align 16
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %468, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds i32, i32* %18, i64 509
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %468, label %444

444:                                              ; preds = %440
  %445 = getelementptr inbounds i32, i32* %18, i64 510
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 85
  br i1 %447, label %468, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds i32, i32* %18, i64 511
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 170
  br i1 %451, label %468, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds i32, i32* %18, i64 1020
  %454 = load i32, i32* %453, align 16
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %468, label %456

456:                                              ; preds = %452
  %457 = getelementptr inbounds i32, i32* %18, i64 1021
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %468, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds i32, i32* %18, i64 1022
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %462, 85
  br i1 %463, label %468, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds i32, i32* %18, i64 1023
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 170
  br i1 %467, label %468, label %519

468:                                              ; preds = %464, %460, %456, %452, %448, %444, %440, %436, %432, %429
  %469 = call i32 @pwarn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %470 = call i64 @ask(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %515

472:                                              ; preds = %468
  %473 = call i32 @memcpy(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %474 = getelementptr inbounds i32, i32* %18, i64 484
  %475 = call i32 @memcpy(i32* %474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %476 = getelementptr inbounds i32, i32* %18, i64 509
  store i32 0, i32* %476, align 4
  %477 = getelementptr inbounds i32, i32* %18, i64 508
  store i32 0, i32* %477, align 16
  %478 = getelementptr inbounds i32, i32* %18, i64 510
  store i32 85, i32* %478, align 8
  %479 = getelementptr inbounds i32, i32* %18, i64 511
  store i32 170, i32* %479, align 4
  %480 = getelementptr inbounds i32, i32* %18, i64 1021
  store i32 0, i32* %480, align 4
  %481 = getelementptr inbounds i32, i32* %18, i64 1020
  store i32 0, i32* %481, align 16
  %482 = getelementptr inbounds i32, i32* %18, i64 1022
  store i32 85, i32* %482, align 8
  %483 = getelementptr inbounds i32, i32* %18, i64 1023
  store i32 170, i32* %483, align 4
  %484 = load i32, i32* %4, align 4
  %485 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %486 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %485, i32 0, i32 17
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %489 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = mul nsw i32 %487, %490
  %492 = load i32, i32* @SEEK_SET, align 4
  %493 = call i32 @lseek(i32 %484, i32 %491, i32 %492)
  %494 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %495 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %494, i32 0, i32 17
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %498 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = mul nsw i32 %496, %499
  %501 = icmp ne i32 %493, %500
  br i1 %501, label %510, label %502

502:                                              ; preds = %472
  %503 = load i32, i32* %4, align 4
  %504 = mul nuw i64 4, %17
  %505 = trunc i64 %504 to i32
  %506 = call i32 @write(i32 %503, i32* %18, i32 %505)
  %507 = sext i32 %506 to i64
  %508 = mul nuw i64 4, %17
  %509 = icmp ne i64 %507, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %502, %472
  %511 = call i32 @perr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %512 = load i32, i32* @FSFATAL, align 4
  store i32 %512, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

513:                                              ; preds = %502
  %514 = load i32, i32* @FSBOOTMOD, align 4
  store i32 %514, i32* %9, align 4
  br label %518

515:                                              ; preds = %468
  %516 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %517 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %516, i32 0, i32 17
  store i32 0, i32* %517, align 4
  br label %518

518:                                              ; preds = %515, %513
  br label %552

519:                                              ; preds = %464
  %520 = getelementptr inbounds i32, i32* %18, i64 488
  %521 = load i32, i32* %520, align 16
  %522 = getelementptr inbounds i32, i32* %18, i64 489
  %523 = load i32, i32* %522, align 4
  %524 = shl i32 %523, 8
  %525 = add nsw i32 %521, %524
  %526 = getelementptr inbounds i32, i32* %18, i64 490
  %527 = load i32, i32* %526, align 8
  %528 = shl i32 %527, 16
  %529 = add nsw i32 %525, %528
  %530 = getelementptr inbounds i32, i32* %18, i64 491
  %531 = load i32, i32* %530, align 4
  %532 = shl i32 %531, 24
  %533 = add nsw i32 %529, %532
  %534 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %535 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %534, i32 0, i32 19
  store i32 %533, i32* %535, align 4
  %536 = getelementptr inbounds i32, i32* %18, i64 492
  %537 = load i32, i32* %536, align 16
  %538 = getelementptr inbounds i32, i32* %18, i64 493
  %539 = load i32, i32* %538, align 4
  %540 = shl i32 %539, 8
  %541 = add nsw i32 %537, %540
  %542 = getelementptr inbounds i32, i32* %18, i64 494
  %543 = load i32, i32* %542, align 8
  %544 = shl i32 %543, 16
  %545 = add nsw i32 %541, %544
  %546 = getelementptr inbounds i32, i32* %18, i64 495
  %547 = load i32, i32* %546, align 4
  %548 = shl i32 %547, 24
  %549 = add nsw i32 %545, %548
  %550 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %551 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %550, i32 0, i32 20
  store i32 %549, i32* %551, align 8
  br label %552

552:                                              ; preds = %519, %518
  br label %559

553:                                              ; preds = %303
  %554 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %555 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %554, i32 0, i32 9
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %558 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %557, i32 0, i32 15
  store i32 %556, i32* %558, align 4
  br label %559

559:                                              ; preds = %553, %552
  %560 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %561 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %560, i32 0, i32 15
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* @UINT32_MAX, align 4
  %564 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %565 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %564, i32 0, i32 4
  %566 = load i32, i32* %565, align 8
  %567 = sdiv i32 %563, %566
  %568 = icmp sgt i32 %562, %567
  br i1 %568, label %569, label %579

569:                                              ; preds = %559
  %570 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %571 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %574 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %573, i32 0, i32 15
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 %572, i64 %576)
  %578 = load i32, i32* @FSFATAL, align 4
  store i32 %578, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

579:                                              ; preds = %559
  %580 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %581 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %580, i32 0, i32 5
  %582 = load i32, i32* %581, align 4
  %583 = mul nsw i32 %582, 32
  %584 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %585 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %583, %586
  %588 = sub nsw i32 %587, 1
  %589 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %590 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = sdiv i32 %588, %591
  %593 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %594 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %593, i32 0, i32 3
  %595 = load i32, i32* %594, align 4
  %596 = add nsw i32 %592, %595
  %597 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %598 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %597, i32 0, i32 4
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %601 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %600, i32 0, i32 15
  %602 = load i32, i32* %601, align 4
  %603 = mul nsw i32 %599, %602
  %604 = add nsw i32 %596, %603
  %605 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %606 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %605, i32 0, i32 21
  store i32 %604, i32* %606, align 4
  %607 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %608 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %607, i32 0, i32 21
  %609 = load i32, i32* %608, align 4
  %610 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %611 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 8
  %613 = add nsw i32 %609, %612
  %614 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %615 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %614, i32 0, i32 14
  %616 = load i32, i32* %615, align 8
  %617 = icmp sgt i32 %613, %616
  br i1 %617, label %618, label %624

618:                                              ; preds = %579
  %619 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %620 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %619, i32 0, i32 21
  %621 = load i32, i32* %620, align 4
  %622 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %621)
  %623 = load i32, i32* @FSFATAL, align 4
  store i32 %623, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

624:                                              ; preds = %579
  %625 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %626 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %625, i32 0, i32 14
  %627 = load i32, i32* %626, align 8
  %628 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %629 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %628, i32 0, i32 21
  %630 = load i32, i32* %629, align 4
  %631 = sub nsw i32 %627, %630
  %632 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %633 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 8
  %635 = sdiv i32 %631, %634
  %636 = sext i32 %635 to i64
  %637 = load i64, i64* @CLUST_FIRST, align 8
  %638 = add nsw i64 %636, %637
  %639 = trunc i64 %638 to i32
  %640 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %641 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %640, i32 0, i32 22
  store i32 %639, i32* %641, align 8
  %642 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %643 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %642, i32 0, i32 6
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* @FAT32, align 4
  %646 = and i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %651

648:                                              ; preds = %624
  %649 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %650 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %649, i32 0, i32 23
  store i32 128, i32* %650, align 4
  br label %681

651:                                              ; preds = %624
  %652 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %653 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %652, i32 0, i32 22
  %654 = load i32, i32* %653, align 8
  %655 = load i32, i32* @CLUST_RSRVD, align 4
  %656 = load i32, i32* @CLUST12_MASK, align 4
  %657 = and i32 %655, %656
  %658 = icmp slt i32 %654, %657
  br i1 %658, label %659, label %663

659:                                              ; preds = %651
  %660 = load i32, i32* @CLUST12_MASK, align 4
  %661 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %662 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %661, i32 0, i32 23
  store i32 %660, i32* %662, align 4
  br label %680

663:                                              ; preds = %651
  %664 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %665 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %664, i32 0, i32 22
  %666 = load i32, i32* %665, align 8
  %667 = load i32, i32* @CLUST_RSRVD, align 4
  %668 = and i32 %667, 129
  %669 = icmp slt i32 %666, %668
  br i1 %669, label %670, label %673

670:                                              ; preds = %663
  %671 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %672 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %671, i32 0, i32 23
  store i32 129, i32* %672, align 4
  br label %679

673:                                              ; preds = %663
  %674 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %675 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %674, i32 0, i32 22
  %676 = load i32, i32* %675, align 8
  %677 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0), i32 %676)
  %678 = load i32, i32* @FSFATAL, align 4
  store i32 %678, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

679:                                              ; preds = %670
  br label %680

680:                                              ; preds = %679, %659
  br label %681

681:                                              ; preds = %680, %648
  %682 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %683 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %682, i32 0, i32 23
  %684 = load i32, i32* %683, align 4
  switch i32 %684, label %707 [
    i32 128, label %685
    i32 129, label %696
  ]

685:                                              ; preds = %681
  %686 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %687 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %686, i32 0, i32 15
  %688 = load i32, i32* %687, align 4
  %689 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %690 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = mul nsw i32 %688, %691
  %693 = sdiv i32 %692, 4
  %694 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %695 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %694, i32 0, i32 24
  store i32 %693, i32* %695, align 8
  br label %719

696:                                              ; preds = %681
  %697 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %698 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %697, i32 0, i32 15
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %701 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %700, i32 0, i32 1
  %702 = load i32, i32* %701, align 4
  %703 = mul nsw i32 %699, %702
  %704 = sdiv i32 %703, 2
  %705 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %706 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %705, i32 0, i32 24
  store i32 %704, i32* %706, align 8
  br label %719

707:                                              ; preds = %681
  %708 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %709 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %708, i32 0, i32 15
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %712 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = mul nsw i32 %710, %713
  %715 = mul nsw i32 %714, 2
  %716 = sdiv i32 %715, 3
  %717 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %718 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %717, i32 0, i32 24
  store i32 %716, i32* %718, align 8
  br label %719

719:                                              ; preds = %707, %696, %685
  %720 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %721 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %720, i32 0, i32 24
  %722 = load i32, i32* %721, align 8
  %723 = sext i32 %722 to i64
  %724 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %725 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %724, i32 0, i32 22
  %726 = load i32, i32* %725, align 8
  %727 = sext i32 %726 to i64
  %728 = load i64, i64* @CLUST_FIRST, align 8
  %729 = sub nsw i64 %727, %728
  %730 = icmp slt i64 %723, %729
  br i1 %730, label %731, label %740

731:                                              ; preds = %719
  %732 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %733 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %732, i32 0, i32 22
  %734 = load i32, i32* %733, align 8
  %735 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %736 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %735, i32 0, i32 15
  %737 = load i32, i32* %736, align 4
  %738 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 %734, i32 %737)
  %739 = load i32, i32* @FSFATAL, align 4
  store i32 %739, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

740:                                              ; preds = %719
  %741 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %742 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %745 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %744, i32 0, i32 2
  %746 = load i32, i32* %745, align 8
  %747 = mul nsw i32 %743, %746
  %748 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %749 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %748, i32 0, i32 25
  store i32 %747, i32* %749, align 4
  %750 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %751 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %750, i32 0, i32 26
  store i32 1, i32* %751, align 8
  %752 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %753 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %752, i32 0, i32 27
  store i64 0, i64* %753, align 8
  %754 = load i32, i32* %9, align 4
  store i32 %754, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %755

755:                                              ; preds = %740, %731, %673, %618, %569, %510, %426, %396, %352, %314, %294, %279, %271, %205, %175, %130, %115, %96, %75, %38, %27
  %756 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %756)
  %757 = load i32, i32* %3, align 4
  ret i32 %757
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @perr(i8*) #2

declare dso_local i32 @pfatal(i8*, ...) #2

declare dso_local i32 @memset(%struct.bootblock*, i32, i32) #2

declare dso_local i32 @powerof2(i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @pwarn(i8*) #2

declare dso_local i64 @ask(i32, i8*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @write(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
