; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_setup_file_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_setup_file_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i64, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { %struct.isofile* }
%struct.isofile = type { %struct.TYPE_18__*, %struct.TYPE_18__, i32, %struct.isofile* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_15__ = type { i32, %struct.isoent* }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.isoent* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.isoent* }
%struct.TYPE_10__ = type { i32, %struct.isoent*, %struct.isoent* }

@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_BITS = common dso_local global i32 0, align 4
@OPT_RR_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*, i32)* @isoent_setup_file_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isoent_setup_file_location(%struct.iso9660* %0, i32 %1) #0 {
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.isofile*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iso9660* %0, %struct.iso9660** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %15 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %5, align 8
  %20 = icmp ne %struct.isoent* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.isoent*, %struct.isoent** %5, align 8
  %24 = getelementptr inbounds %struct.isoent, %struct.isoent* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.isoent*, %struct.isoent** %5, align 8
  %29 = getelementptr inbounds %struct.isoent, %struct.isoent* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @archive_entry_size(i32 %32)
  %34 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @LOGICAL_BLOCK_BITS, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %45 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %21, %2
  %49 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %50 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.isoent*, %struct.isoent** %51, align 8
  store %struct.isoent* %52, %struct.isoent** %5, align 8
  %53 = icmp ne %struct.isoent* %52, null
  br i1 %53, label %54, label %99

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.isoent*, %struct.isoent** %5, align 8
  %57 = getelementptr inbounds %struct.isoent, %struct.isoent* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %62 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @fd_boot_image_size(i32 %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load %struct.isoent*, %struct.isoent** %5, align 8
  %70 = getelementptr inbounds %struct.isoent, %struct.isoent* %69, i32 0, i32 3
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @archive_entry_size(i32 %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %68, %54
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* @LOGICAL_BLOCK_BITS, align 4
  %83 = ashr i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %90 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.isoent*, %struct.isoent** %5, align 8
  %95 = getelementptr inbounds %struct.isoent, %struct.isoent* %94, i32 0, i32 3
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %76, %48
  store i32 0, i32* %10, align 4
  store i32 -16, i32* %12, align 4
  %100 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %101 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %99
  %106 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %107 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  store i32 1, i32* %11, align 4
  %112 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %113 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.isoent*, %struct.isoent** %114, align 8
  store %struct.isoent* %115, %struct.isoent** %6, align 8
  br label %121

116:                                              ; preds = %105, %99
  store i32 0, i32* %11, align 4
  %117 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %118 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load %struct.isoent*, %struct.isoent** %119, align 8
  store %struct.isoent* %120, %struct.isoent** %6, align 8
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %194, %121
  %123 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %124 = load %struct.isoent*, %struct.isoent** %6, align 8
  %125 = call i32 @_isoent_file_location(%struct.iso9660* %123, %struct.isoent* %124, i32* %12)
  %126 = load %struct.isoent*, %struct.isoent** %6, align 8
  %127 = getelementptr inbounds %struct.isoent, %struct.isoent* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.isoent*, %struct.isoent** %128, align 8
  %130 = icmp ne %struct.isoent* %129, null
  br i1 %130, label %131, label %170

131:                                              ; preds = %122
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %131
  %135 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %136 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OPT_RR_DISABLED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 2
  %144 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %145 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %163, label %149

149:                                              ; preds = %141, %134
  %150 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %151 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  %158 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %159 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %155, %141, %131
  %164 = load %struct.isoent*, %struct.isoent** %6, align 8
  %165 = getelementptr inbounds %struct.isoent, %struct.isoent* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.isoent*, %struct.isoent** %166, align 8
  store %struct.isoent* %167, %struct.isoent** %6, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %194

170:                                              ; preds = %155, %149, %122
  br label %171

171:                                              ; preds = %192, %170
  %172 = load %struct.isoent*, %struct.isoent** %6, align 8
  %173 = load %struct.isoent*, %struct.isoent** %6, align 8
  %174 = getelementptr inbounds %struct.isoent, %struct.isoent* %173, i32 0, i32 1
  %175 = load %struct.isoent*, %struct.isoent** %174, align 8
  %176 = icmp ne %struct.isoent* %172, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load %struct.isoent*, %struct.isoent** %6, align 8
  %179 = getelementptr inbounds %struct.isoent, %struct.isoent* %178, i32 0, i32 0
  %180 = load %struct.isoent*, %struct.isoent** %179, align 8
  %181 = icmp eq %struct.isoent* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.isoent*, %struct.isoent** %6, align 8
  %184 = getelementptr inbounds %struct.isoent, %struct.isoent* %183, i32 0, i32 1
  %185 = load %struct.isoent*, %struct.isoent** %184, align 8
  store %struct.isoent* %185, %struct.isoent** %6, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %10, align 4
  br label %192

188:                                              ; preds = %177
  %189 = load %struct.isoent*, %struct.isoent** %6, align 8
  %190 = getelementptr inbounds %struct.isoent, %struct.isoent* %189, i32 0, i32 0
  %191 = load %struct.isoent*, %struct.isoent** %190, align 8
  store %struct.isoent* %191, %struct.isoent** %6, align 8
  br label %193

192:                                              ; preds = %182
  br label %171

193:                                              ; preds = %188, %171
  br label %194

194:                                              ; preds = %193, %163
  %195 = load %struct.isoent*, %struct.isoent** %6, align 8
  %196 = load %struct.isoent*, %struct.isoent** %6, align 8
  %197 = getelementptr inbounds %struct.isoent, %struct.isoent* %196, i32 0, i32 1
  %198 = load %struct.isoent*, %struct.isoent** %197, align 8
  %199 = icmp ne %struct.isoent* %195, %198
  br i1 %199, label %122, label %200

200:                                              ; preds = %194
  store i32 0, i32* %13, align 4
  %201 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %202 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load %struct.isofile*, %struct.isofile** %203, align 8
  store %struct.isofile* %204, %struct.isofile** %7, align 8
  br label %205

205:                                              ; preds = %256, %200
  %206 = load %struct.isofile*, %struct.isofile** %7, align 8
  %207 = icmp ne %struct.isofile* %206, null
  br i1 %207, label %208, label %260

208:                                              ; preds = %205
  %209 = load %struct.isofile*, %struct.isofile** %7, align 8
  %210 = getelementptr inbounds %struct.isofile, %struct.isofile* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  br label %256

214:                                              ; preds = %208
  %215 = load %struct.isofile*, %struct.isofile** %7, align 8
  %216 = getelementptr inbounds %struct.isofile, %struct.isofile* %215, i32 0, i32 1
  %217 = load %struct.isofile*, %struct.isofile** %7, align 8
  %218 = getelementptr inbounds %struct.isofile, %struct.isofile* %217, i32 0, i32 0
  store %struct.TYPE_18__* %216, %struct.TYPE_18__** %218, align 8
  br label %219

219:                                              ; preds = %250, %214
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.isofile*, %struct.isofile** %7, align 8
  %222 = getelementptr inbounds %struct.isofile, %struct.isofile* %221, i32 0, i32 0
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  store i32 %220, i32* %224, align 8
  %225 = load %struct.isofile*, %struct.isofile** %7, align 8
  %226 = getelementptr inbounds %struct.isofile, %struct.isofile* %225, i32 0, i32 0
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %4, align 4
  %234 = load %struct.isofile*, %struct.isofile** %7, align 8
  %235 = getelementptr inbounds %struct.isofile, %struct.isofile* %234, i32 0, i32 0
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %238
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %13, align 4
  %243 = load %struct.isofile*, %struct.isofile** %7, align 8
  %244 = getelementptr inbounds %struct.isofile, %struct.isofile* %243, i32 0, i32 0
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = load %struct.isofile*, %struct.isofile** %7, align 8
  %249 = getelementptr inbounds %struct.isofile, %struct.isofile* %248, i32 0, i32 0
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %249, align 8
  br label %250

250:                                              ; preds = %219
  %251 = load %struct.isofile*, %struct.isofile** %7, align 8
  %252 = getelementptr inbounds %struct.isofile, %struct.isofile* %251, i32 0, i32 0
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = icmp ne %struct.TYPE_18__* %253, null
  br i1 %254, label %219, label %255

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %213
  %257 = load %struct.isofile*, %struct.isofile** %7, align 8
  %258 = getelementptr inbounds %struct.isofile, %struct.isofile* %257, i32 0, i32 3
  %259 = load %struct.isofile*, %struct.isofile** %258, align 8
  store %struct.isofile* %259, %struct.isofile** %7, align 8
  br label %205

260:                                              ; preds = %205
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %264 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, %262
  store i64 %266, i64* %264, align 8
  ret void
}

declare dso_local i32 @archive_entry_size(i32) #1

declare dso_local i64 @fd_boot_image_size(i32) #1

declare dso_local i32 @_isoent_file_location(%struct.iso9660*, %struct.isoent*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
