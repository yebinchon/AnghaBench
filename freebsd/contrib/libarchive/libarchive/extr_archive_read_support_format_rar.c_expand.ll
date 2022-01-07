; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rar = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32, i32, i64, %struct.rar_br }
%struct.rar_br = type { i32 }

@expand.lengthbases = internal constant [28 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\14\18\1C (08@P`p\80\A0\C0\E0", align 16
@expand.lengthbits = internal constant [28 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@expand.offsetbases = internal constant [60 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 98304, i32 131072, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720896, i32 786432, i32 851968, i32 917504, i32 983040, i32 1048576, i32 1310720, i32 1572864, i32 1835008, i32 2097152, i32 2359296, i32 2621440, i32 2883584, i32 3145728, i32 3407872, i32 3670016, i32 3932160], align 16
@expand.offsetbits = internal constant [60 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\12\12\12\12\12\12\12\12\12\12\12\12", align 16
@expand.shortbases = internal constant [8 x i8] c"\00\04\08\10 @\80\C0", align 1
@expand.shortbits = internal constant [8 x i8] c"\02\02\03\04\05\06\06\06", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Parsing filters is unsupported.\00", align 1
@ARCHIVE_FAILED = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Truncated RAR file data\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Bad RAR file data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64)* @expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.rar*, align 8
  %16 = alloca %struct.rar_br*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rar*
  store %struct.rar* %22, %struct.rar** %15, align 8
  %23 = load %struct.rar*, %struct.rar** %15, align 8
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %23, i32 0, i32 16
  store %struct.rar_br* %24, %struct.rar_br** %16, align 8
  %25 = load %struct.rar*, %struct.rar** %15, align 8
  %26 = getelementptr inbounds %struct.rar, %struct.rar* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.rar*, %struct.rar** %15, align 8
  %32 = getelementptr inbounds %struct.rar, %struct.rar* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %30, %2
  br label %35

35:                                               ; preds = %34, %95, %144, %162, %577
  %36 = load %struct.rar*, %struct.rar** %15, align 8
  %37 = getelementptr inbounds %struct.rar, %struct.rar* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.rar*, %struct.rar** %15, align 8
  %42 = getelementptr inbounds %struct.rar, %struct.rar* %41, i32 0, i32 13
  %43 = call i64 @lzss_position(i32* %42)
  %44 = load %struct.rar*, %struct.rar** %15, align 8
  %45 = getelementptr inbounds %struct.rar, %struct.rar* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = load i64, i64* %5, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.rar*, %struct.rar** %15, align 8
  %53 = load %struct.rar*, %struct.rar** %15, align 8
  %54 = getelementptr inbounds %struct.rar, %struct.rar* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rar*, %struct.rar** %15, align 8
  %57 = getelementptr inbounds %struct.rar, %struct.rar* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lzss_emit_match(%struct.rar* %52, i32 %55, i32 %58)
  %60 = load %struct.rar*, %struct.rar** %15, align 8
  %61 = getelementptr inbounds %struct.rar, %struct.rar* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %51, %40, %35
  %63 = load %struct.rar*, %struct.rar** %15, align 8
  %64 = getelementptr inbounds %struct.rar, %struct.rar* %63, i32 0, i32 15
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load %struct.rar*, %struct.rar** %15, align 8
  %69 = getelementptr inbounds %struct.rar, %struct.rar* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.rar*, %struct.rar** %15, align 8
  %74 = getelementptr inbounds %struct.rar, %struct.rar* %73, i32 0, i32 13
  %75 = call i64 @lzss_position(i32* %74)
  %76 = load i64, i64* %5, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %67, %62
  %79 = load %struct.rar*, %struct.rar** %15, align 8
  %80 = getelementptr inbounds %struct.rar, %struct.rar* %79, i32 0, i32 13
  %81 = call i64 @lzss_position(i32* %80)
  store i64 %81, i64* %3, align 8
  br label %600

82:                                               ; preds = %72
  %83 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %84 = load %struct.rar*, %struct.rar** %15, align 8
  %85 = getelementptr inbounds %struct.rar, %struct.rar* %84, i32 0, i32 14
  %86 = call i32 @read_next_symbol(%struct.archive_read* %83, i32* %85)
  store i32 %86, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %89, i64* %3, align 8
  br label %600

90:                                               ; preds = %82
  %91 = load %struct.rar*, %struct.rar** %15, align 8
  %92 = getelementptr inbounds %struct.rar, %struct.rar* %91, i32 0, i32 1
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 256
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.rar*, %struct.rar** %15, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @lzss_emit_literal(%struct.rar* %96, i32 %97)
  br label %35

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 256
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %104 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %105 = call i32 @rar_br_read_ahead(%struct.archive_read* %103, %struct.rar_br* %104, i8 zeroext 1)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %586

108:                                              ; preds = %102
  %109 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %110 = call i32 @rar_br_bits(%struct.rar_br* %109, i8 zeroext 1)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %14, align 1
  %115 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %116 = call i32 @rar_br_consume(%struct.rar_br* %115, i8 zeroext 1)
  %117 = load i8, i8* %14, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %108
  %120 = load %struct.rar*, %struct.rar** %15, align 8
  %121 = getelementptr inbounds %struct.rar, %struct.rar* %120, i32 0, i32 4
  store i32 1, i32* %121, align 4
  %122 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %123 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %124 = call i32 @rar_br_read_ahead(%struct.archive_read* %122, %struct.rar_br* %123, i8 zeroext 1)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %586

127:                                              ; preds = %119
  %128 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %129 = call i32 @rar_br_bits(%struct.rar_br* %128, i8 zeroext 1)
  %130 = load %struct.rar*, %struct.rar** %15, align 8
  %131 = getelementptr inbounds %struct.rar, %struct.rar* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %133 = call i32 @rar_br_consume(%struct.rar_br* %132, i8 zeroext 1)
  %134 = load %struct.rar*, %struct.rar** %15, align 8
  %135 = getelementptr inbounds %struct.rar, %struct.rar* %134, i32 0, i32 13
  %136 = call i64 @lzss_position(i32* %135)
  store i64 %136, i64* %3, align 8
  br label %600

137:                                              ; preds = %108
  %138 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %139 = call i64 @parse_codes(%struct.archive_read* %138)
  %140 = load i64, i64* @ARCHIVE_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %143, i64* %3, align 8
  br label %600

144:                                              ; preds = %137
  br label %35

145:                                              ; preds = %99
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 257
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %150 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %149, i32 0, i32 0
  %151 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %152 = call i32 @archive_set_error(i32* %150, i32 %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %153 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %153, i64* %3, align 8
  br label %600

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 258
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load %struct.rar*, %struct.rar** %15, align 8
  %159 = getelementptr inbounds %struct.rar, %struct.rar* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %35

163:                                              ; preds = %157
  %164 = load %struct.rar*, %struct.rar** %15, align 8
  %165 = getelementptr inbounds %struct.rar, %struct.rar* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %7, align 4
  %167 = load %struct.rar*, %struct.rar** %15, align 8
  %168 = getelementptr inbounds %struct.rar, %struct.rar* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %8, align 4
  br label %574

170:                                              ; preds = %154
  %171 = load i32, i32* %6, align 4
  %172 = icmp sle i32 %171, 262
  br i1 %172, label %173, label %264

173:                                              ; preds = %170
  %174 = load i32, i32* %6, align 4
  %175 = sub nsw i32 %174, 259
  store i32 %175, i32* %9, align 4
  %176 = load %struct.rar*, %struct.rar** %15, align 8
  %177 = getelementptr inbounds %struct.rar, %struct.rar* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %7, align 4
  %183 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %184 = load %struct.rar*, %struct.rar** %15, align 8
  %185 = getelementptr inbounds %struct.rar, %struct.rar* %184, i32 0, i32 12
  %186 = call i32 @read_next_symbol(%struct.archive_read* %183, i32* %185)
  store i32 %186, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %594

189:                                              ; preds = %173
  %190 = load i32, i32* %10, align 4
  %191 = icmp sgt i32 %190, 28
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %594

193:                                              ; preds = %189
  %194 = load i32, i32* %10, align 4
  %195 = icmp sgt i32 %194, 28
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %594

197:                                              ; preds = %193
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbases, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %202, 2
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %197
  %211 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %212 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = call i32 @rar_br_read_ahead(%struct.archive_read* %211, %struct.rar_br* %212, i8 zeroext %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %210
  br label %586

220:                                              ; preds = %210
  %221 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = call i32 @rar_br_bits(%struct.rar_br* %221, i8 zeroext %225)
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %8, align 4
  %229 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = call i32 @rar_br_consume(%struct.rar_br* %229, i8 zeroext %233)
  br label %235

235:                                              ; preds = %220, %197
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %255, %235
  %238 = load i32, i32* %11, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %237
  %241 = load %struct.rar*, %struct.rar** %15, align 8
  %242 = getelementptr inbounds %struct.rar, %struct.rar* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.rar*, %struct.rar** %15, align 8
  %250 = getelementptr inbounds %struct.rar, %struct.rar* %249, i32 0, i32 6
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %248, i32* %254, align 4
  br label %255

255:                                              ; preds = %240
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %11, align 4
  br label %237

258:                                              ; preds = %237
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.rar*, %struct.rar** %15, align 8
  %261 = getelementptr inbounds %struct.rar, %struct.rar* %260, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 %259, i32* %263, align 4
  br label %573

264:                                              ; preds = %170
  %265 = load i32, i32* %6, align 4
  %266 = icmp sle i32 %265, 270
  br i1 %266, label %267, label %338

267:                                              ; preds = %264
  %268 = load i32, i32* %6, align 4
  %269 = sub nsw i32 %268, 263
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbases, i64 0, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %6, align 4
  %276 = sub nsw i32 %275, 263
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %310

282:                                              ; preds = %267
  %283 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %284 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sub nsw i32 %285, 263
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = call i32 @rar_br_read_ahead(%struct.archive_read* %283, %struct.rar_br* %284, i8 zeroext %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %282
  br label %586

293:                                              ; preds = %282
  %294 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sub nsw i32 %295, 263
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = call i32 @rar_br_bits(%struct.rar_br* %294, i8 zeroext %299)
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %7, align 4
  %303 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sub nsw i32 %304, 263
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = call i32 @rar_br_consume(%struct.rar_br* %303, i8 zeroext %308)
  br label %310

310:                                              ; preds = %293, %267
  store i32 2, i32* %8, align 4
  store i32 3, i32* %11, align 4
  br label %311

311:                                              ; preds = %329, %310
  %312 = load i32, i32* %11, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %311
  %315 = load %struct.rar*, %struct.rar** %15, align 8
  %316 = getelementptr inbounds %struct.rar, %struct.rar* %315, i32 0, i32 6
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.rar*, %struct.rar** %15, align 8
  %324 = getelementptr inbounds %struct.rar, %struct.rar* %323, i32 0, i32 6
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %322, i32* %328, align 4
  br label %329

329:                                              ; preds = %314
  %330 = load i32, i32* %11, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %11, align 4
  br label %311

332:                                              ; preds = %311
  %333 = load i32, i32* %7, align 4
  %334 = load %struct.rar*, %struct.rar** %15, align 8
  %335 = getelementptr inbounds %struct.rar, %struct.rar* %334, i32 0, i32 6
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  store i32 %333, i32* %337, align 4
  br label %572

338:                                              ; preds = %264
  %339 = load i32, i32* %6, align 4
  %340 = sub nsw i32 %339, 271
  %341 = icmp sgt i32 %340, 28
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  br label %594

343:                                              ; preds = %338
  %344 = load i32, i32* %6, align 4
  %345 = sub nsw i32 %344, 271
  %346 = icmp sgt i32 %345, 28
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  br label %594

348:                                              ; preds = %343
  %349 = load i32, i32* %6, align 4
  %350 = sub nsw i32 %349, 271
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbases, i64 0, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = add nsw i32 %354, 3
  store i32 %355, i32* %8, align 4
  %356 = load i32, i32* %6, align 4
  %357 = sub nsw i32 %356, 271
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %391

363:                                              ; preds = %348
  %364 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %365 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sub nsw i32 %366, 271
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = call i32 @rar_br_read_ahead(%struct.archive_read* %364, %struct.rar_br* %365, i8 zeroext %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %363
  br label %586

374:                                              ; preds = %363
  %375 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sub nsw i32 %376, 271
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = call i32 @rar_br_bits(%struct.rar_br* %375, i8 zeroext %380)
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, %381
  store i32 %383, i32* %8, align 4
  %384 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sub nsw i32 %385, 271
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = call i32 @rar_br_consume(%struct.rar_br* %384, i8 zeroext %389)
  br label %391

391:                                              ; preds = %374, %348
  %392 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %393 = load %struct.rar*, %struct.rar** %15, align 8
  %394 = getelementptr inbounds %struct.rar, %struct.rar* %393, i32 0, i32 11
  %395 = call i32 @read_next_symbol(%struct.archive_read* %392, i32* %394)
  store i32 %395, i32* %12, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %391
  br label %594

398:                                              ; preds = %391
  %399 = load i32, i32* %12, align 4
  %400 = icmp sgt i32 %399, 60
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  br label %594

402:                                              ; preds = %398
  %403 = load i32, i32* %12, align 4
  %404 = icmp sgt i32 %403, 60
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %594

406:                                              ; preds = %402
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [60 x i32], [60 x i32]* @expand.offsetbases, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, 1
  store i32 %411, i32* %7, align 4
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %418, label %532

418:                                              ; preds = %406
  %419 = load i32, i32* %12, align 4
  %420 = icmp sgt i32 %419, 9
  br i1 %420, label %421, label %506

421:                                              ; preds = %418
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %423
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = icmp sgt i32 %426, 4
  br i1 %427, label %428, label %463

428:                                              ; preds = %421
  %429 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %430 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %431 = load i32, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = sub nsw i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = call i32 @rar_br_read_ahead(%struct.archive_read* %429, %struct.rar_br* %430, i8 zeroext %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %428
  br label %586

441:                                              ; preds = %428
  %442 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = sub nsw i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = call i32 @rar_br_bits(%struct.rar_br* %442, i8 zeroext %449)
  %451 = shl i32 %450, 4
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %7, align 4
  %454 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = sub nsw i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = call i32 @rar_br_consume(%struct.rar_br* %454, i8 zeroext %461)
  br label %463

463:                                              ; preds = %441, %421
  %464 = load %struct.rar*, %struct.rar** %15, align 8
  %465 = getelementptr inbounds %struct.rar, %struct.rar* %464, i32 0, i32 7
  %466 = load i32, i32* %465, align 8
  %467 = icmp sgt i32 %466, 0
  br i1 %467, label %468, label %478

468:                                              ; preds = %463
  %469 = load %struct.rar*, %struct.rar** %15, align 8
  %470 = getelementptr inbounds %struct.rar, %struct.rar* %469, i32 0, i32 7
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %470, align 8
  %473 = load %struct.rar*, %struct.rar** %15, align 8
  %474 = getelementptr inbounds %struct.rar, %struct.rar* %473, i32 0, i32 8
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %7, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* %7, align 4
  br label %505

478:                                              ; preds = %463
  %479 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %480 = load %struct.rar*, %struct.rar** %15, align 8
  %481 = getelementptr inbounds %struct.rar, %struct.rar* %480, i32 0, i32 10
  %482 = call i32 @read_next_symbol(%struct.archive_read* %479, i32* %481)
  store i32 %482, i32* %13, align 4
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %478
  %485 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %485, i64* %3, align 8
  br label %600

486:                                              ; preds = %478
  %487 = load i32, i32* %13, align 4
  %488 = icmp eq i32 %487, 16
  br i1 %488, label %489, label %497

489:                                              ; preds = %486
  %490 = load %struct.rar*, %struct.rar** %15, align 8
  %491 = getelementptr inbounds %struct.rar, %struct.rar* %490, i32 0, i32 7
  store i32 15, i32* %491, align 8
  %492 = load %struct.rar*, %struct.rar** %15, align 8
  %493 = getelementptr inbounds %struct.rar, %struct.rar* %492, i32 0, i32 8
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %7, align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* %7, align 4
  br label %504

497:                                              ; preds = %486
  %498 = load i32, i32* %13, align 4
  %499 = load i32, i32* %7, align 4
  %500 = add nsw i32 %499, %498
  store i32 %500, i32* %7, align 4
  %501 = load i32, i32* %13, align 4
  %502 = load %struct.rar*, %struct.rar** %15, align 8
  %503 = getelementptr inbounds %struct.rar, %struct.rar* %502, i32 0, i32 8
  store i32 %501, i32* %503, align 4
  br label %504

504:                                              ; preds = %497, %489
  br label %505

505:                                              ; preds = %504, %468
  br label %531

506:                                              ; preds = %418
  %507 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %508 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %509 = load i32, i32* %12, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %510
  %512 = load i8, i8* %511, align 1
  %513 = call i32 @rar_br_read_ahead(%struct.archive_read* %507, %struct.rar_br* %508, i8 zeroext %512)
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %506
  br label %586

516:                                              ; preds = %506
  %517 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %519
  %521 = load i8, i8* %520, align 1
  %522 = call i32 @rar_br_bits(%struct.rar_br* %517, i8 zeroext %521)
  %523 = load i32, i32* %7, align 4
  %524 = add nsw i32 %523, %522
  store i32 %524, i32* %7, align 4
  %525 = load %struct.rar_br*, %struct.rar_br** %16, align 8
  %526 = load i32, i32* %12, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = call i32 @rar_br_consume(%struct.rar_br* %525, i8 zeroext %529)
  br label %531

531:                                              ; preds = %516, %505
  br label %532

532:                                              ; preds = %531, %406
  %533 = load i32, i32* %7, align 4
  %534 = icmp sge i32 %533, 262144
  br i1 %534, label %535, label %538

535:                                              ; preds = %532
  %536 = load i32, i32* %8, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %8, align 4
  br label %538

538:                                              ; preds = %535, %532
  %539 = load i32, i32* %7, align 4
  %540 = icmp sge i32 %539, 8192
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  %542 = load i32, i32* %8, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %8, align 4
  br label %544

544:                                              ; preds = %541, %538
  store i32 3, i32* %11, align 4
  br label %545

545:                                              ; preds = %563, %544
  %546 = load i32, i32* %11, align 4
  %547 = icmp sgt i32 %546, 0
  br i1 %547, label %548, label %566

548:                                              ; preds = %545
  %549 = load %struct.rar*, %struct.rar** %15, align 8
  %550 = getelementptr inbounds %struct.rar, %struct.rar* %549, i32 0, i32 6
  %551 = load i32*, i32** %550, align 8
  %552 = load i32, i32* %11, align 4
  %553 = sub nsw i32 %552, 1
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %551, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.rar*, %struct.rar** %15, align 8
  %558 = getelementptr inbounds %struct.rar, %struct.rar* %557, i32 0, i32 6
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* %11, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  store i32 %556, i32* %562, align 4
  br label %563

563:                                              ; preds = %548
  %564 = load i32, i32* %11, align 4
  %565 = add nsw i32 %564, -1
  store i32 %565, i32* %11, align 4
  br label %545

566:                                              ; preds = %545
  %567 = load i32, i32* %7, align 4
  %568 = load %struct.rar*, %struct.rar** %15, align 8
  %569 = getelementptr inbounds %struct.rar, %struct.rar* %568, i32 0, i32 6
  %570 = load i32*, i32** %569, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 0
  store i32 %567, i32* %571, align 4
  br label %572

572:                                              ; preds = %566, %332
  br label %573

573:                                              ; preds = %572, %258
  br label %574

574:                                              ; preds = %573, %163
  br label %575

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  %578 = load i32, i32* %7, align 4
  %579 = load %struct.rar*, %struct.rar** %15, align 8
  %580 = getelementptr inbounds %struct.rar, %struct.rar* %579, i32 0, i32 3
  store i32 %578, i32* %580, align 8
  %581 = load i32, i32* %8, align 4
  %582 = load %struct.rar*, %struct.rar** %15, align 8
  %583 = getelementptr inbounds %struct.rar, %struct.rar* %582, i32 0, i32 2
  store i32 %581, i32* %583, align 4
  %584 = load %struct.rar*, %struct.rar** %15, align 8
  %585 = getelementptr inbounds %struct.rar, %struct.rar* %584, i32 0, i32 1
  store i32 1, i32* %585, align 8
  br label %35

586:                                              ; preds = %515, %440, %373, %292, %219, %126, %107
  %587 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %588 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %587, i32 0, i32 0
  %589 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %590 = call i32 @archive_set_error(i32* %588, i32 %589, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %591 = load %struct.rar*, %struct.rar** %15, align 8
  %592 = getelementptr inbounds %struct.rar, %struct.rar* %591, i32 0, i32 9
  store i64 0, i64* %592, align 8
  %593 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %593, i64* %3, align 8
  br label %600

594:                                              ; preds = %405, %401, %397, %347, %342, %196, %192, %188
  %595 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %596 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %595, i32 0, i32 0
  %597 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %598 = call i32 @archive_set_error(i32* %596, i32 %597, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %599 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %599, i64* %3, align 8
  br label %600

600:                                              ; preds = %594, %586, %484, %148, %142, %127, %88, %78
  %601 = load i64, i64* %3, align 8
  ret i64 %601
}

declare dso_local i64 @lzss_position(i32*) #1

declare dso_local i32 @lzss_emit_match(%struct.rar*, i32, i32) #1

declare dso_local i32 @read_next_symbol(%struct.archive_read*, i32*) #1

declare dso_local i32 @lzss_emit_literal(%struct.rar*, i32) #1

declare dso_local i32 @rar_br_read_ahead(%struct.archive_read*, %struct.rar_br*, i8 zeroext) #1

declare dso_local i32 @rar_br_bits(%struct.rar_br*, i8 zeroext) #1

declare dso_local i32 @rar_br_consume(%struct.rar_br*, i8 zeroext) #1

declare dso_local i64 @parse_codes(%struct.archive_read*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
