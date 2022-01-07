; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_realstrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_realstrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@BD_NO_MEDIA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIOSDISK_SECSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"bd_strategy: %d bytes I/O not multiple of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"open_disk %p\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"too large I/O: %zu bytes\00", align 1
@DEVT_DISK = common dso_local global i64 0, align 8
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"short I/O %d\00", align 1
@BIO_BUFFER_SIZE = common dso_local global i64 0, align 8
@V86_IO_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"BUG: Real mode buffer is too small\00", align 1
@V86_IO_BUFFER = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"read %d from %lld to %p\00", align 1
@BD_RD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"write %d from %lld to %p\00", align 1
@BD_WR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @bd_realstrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_realstrategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %28, %struct.disk_devdesc** %14, align 8
  store i8* null, i8** %24, align 8
  %29 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %30 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %29, i32 0, i32 1
  %31 = call %struct.TYPE_7__* @bd_get_bdinfo(%struct.TYPE_8__* %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %15, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %6
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BD_NO_MEDIA, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @BD_NO_MEDIA, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34, %6
  %43 = load i32, i32* @EIO, align 4
  store i32 %43, i32* %7, align 4
  br label %369

44:                                               ; preds = %34
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @BIOSDISK_SECSIZE, align 8
  %50 = urem i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %44
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @BIOSDISK_SECSIZE, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %7, align 4
  br label %369

57:                                               ; preds = %47
  %58 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %59 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.disk_devdesc* %58)
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @BIOSDISK_SECSIZE, align 8
  %62 = mul i64 %60, %61
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = udiv i64 %63, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = urem i64 %68, %71
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @INT_MAX, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = load i64, i64* %11, align 8
  %78 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %7, align 4
  br label %369

80:                                               ; preds = %57
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = udiv i64 %81, %84
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %19, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = urem i64 %89, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88, %80
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %19, align 8
  %102 = add i64 %100, %101
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* %7, align 4
  br label %369

106:                                              ; preds = %98
  %107 = load i64*, i64** %13, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64*, i64** %13, align 8
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %109, %106
  store i64 0, i64* %18, align 8
  store i64 0, i64* %16, align 8
  %112 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %113 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DEVT_DISK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %111
  %121 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %122 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %123 = call i64 @disk_ioctl(%struct.disk_devdesc* %121, i32 %122, i64* %16)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %16, align 8
  %130 = udiv i64 %129, %128
  store i64 %130, i64* %16, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %133 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %18, align 8
  br label %135

135:                                              ; preds = %131, %111
  %136 = load i64, i64* %16, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %18, align 8
  %143 = sub i64 %141, %142
  store i64 %143, i64* %16, align 8
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %18, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %16, align 8
  %152 = add i64 %150, %151
  %153 = icmp uge i64 %149, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148, %144
  %155 = load i32, i32* @EIO, align 4
  store i32 %155, i32* %7, align 4
  br label %369

156:                                              ; preds = %148
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %19, align 8
  %159 = add i64 %157, %158
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %160, %161
  %163 = icmp uge i64 %159, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %156
  %165 = load i64, i64* %18, align 8
  %166 = load i64, i64* %16, align 8
  %167 = add i64 %165, %166
  %168 = load i64, i64* %10, align 8
  %169 = sub i64 %167, %168
  store i64 %169, i64* %19, align 8
  %170 = load i64, i64* %19, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = mul i64 %170, %173
  store i64 %174, i64* %11, align 8
  %175 = load i64, i64* %19, align 8
  %176 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %175)
  br label %177

177:                                              ; preds = %164, %156
  %178 = load i64, i64* @BIO_BUFFER_SIZE, align 8
  %179 = load i64, i64* %11, align 8
  %180 = call i8* @min(i64 %178, i64 %179)
  %181 = ptrtoint i8* %180 to i64
  store i64 %181, i64* %22, align 8
  br label %182

182:                                              ; preds = %194, %177
  %183 = load i64, i64* %22, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ugt i64 %183, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %182
  %189 = load i64, i64* %22, align 8
  %190 = call i8* @bio_alloc(i64 %189)
  store i8* %190, i8** %24, align 8
  %191 = load i8*, i8** %24, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %200

194:                                              ; preds = %188
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %22, align 8
  %199 = sub i64 %198, %197
  store i64 %199, i64* %22, align 8
  br label %182

200:                                              ; preds = %193, %182
  %201 = load i8*, i8** %24, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = load i64, i64* @V86_IO_BUFFER_SIZE, align 8
  store i64 %204, i64* %22, align 8
  %205 = load i64, i64* %22, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = udiv i64 %205, %208
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %203
  %214 = load i32, i32* @V86_IO_BUFFER, align 4
  %215 = call i8* @PTOV(i32 %214)
  store i8* %215, i8** %24, align 8
  br label %216

216:                                              ; preds = %213, %200
  %217 = load i64, i64* %11, align 8
  store i64 %217, i64* %23, align 8
  store i32 0, i32* %25, align 4
  br label %218

218:                                              ; preds = %336, %216
  %219 = load i64, i64* %19, align 8
  %220 = icmp ugt i64 %219, 0
  br i1 %220, label %221, label %351

221:                                              ; preds = %218
  %222 = load i64, i64* %19, align 8
  %223 = load i64, i64* %22, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = udiv i64 %223, %226
  %228 = call i8* @min(i64 %222, i64 %227)
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* %26, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @F_MASK, align 4
  %232 = and i32 %230, %231
  switch i32 %232, label %334 [
    i32 129, label %233
    i32 128, label %269
  ]

233:                                              ; preds = %221
  %234 = load i32, i32* %26, align 4
  %235 = load i64, i64* %10, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %234, i64 %235, i8* %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %26, align 4
  %242 = sext i32 %241 to i64
  %243 = mul i64 %240, %242
  %244 = load i64, i64* %20, align 8
  %245 = sub i64 %243, %244
  store i64 %245, i64* %21, align 8
  %246 = load i64, i64* %23, align 8
  %247 = load i64, i64* %21, align 8
  %248 = icmp ult i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %233
  %250 = load i64, i64* %23, align 8
  store i64 %250, i64* %21, align 8
  br label %251

251:                                              ; preds = %249, %233
  %252 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %254 = load i64, i64* %10, align 8
  %255 = load i32, i32* %26, align 4
  %256 = load i8*, i8** %24, align 8
  %257 = load i32, i32* @BD_RD, align 4
  %258 = call i32 @bd_io(%struct.disk_devdesc* %252, %struct.TYPE_7__* %253, i64 %254, i32 %255, i8* %256, i32 %257)
  store i32 %258, i32* %25, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = load i32, i32* @EIO, align 4
  store i32 %261, i32* %25, align 4
  br label %358

262:                                              ; preds = %251
  %263 = load i8*, i8** %24, align 8
  %264 = load i64, i64* %20, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  %266 = load i8*, i8** %12, align 8
  %267 = load i64, i64* %21, align 8
  %268 = call i32 @bcopy(i8* %265, i8* %266, i64 %267)
  br label %336

269:                                              ; preds = %221
  %270 = load i32, i32* %26, align 4
  %271 = load i64, i64* %10, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %270, i64 %271, i8* %272)
  %274 = load i64, i64* %20, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %269
  store i32 1, i32* %26, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %20, align 8
  %281 = sub i64 %279, %280
  store i64 %281, i64* %21, align 8
  %282 = load i64, i64* %21, align 8
  %283 = load i64, i64* %23, align 8
  %284 = call i8* @min(i64 %282, i64 %283)
  %285 = ptrtoint i8* %284 to i64
  store i64 %285, i64* %21, align 8
  %286 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %288 = load i64, i64* %10, align 8
  %289 = load i32, i32* %26, align 4
  %290 = load i8*, i8** %24, align 8
  %291 = load i32, i32* @BD_RD, align 4
  %292 = call i32 @bd_io(%struct.disk_devdesc* %286, %struct.TYPE_7__* %287, i64 %288, i32 %289, i8* %290, i32 %291)
  store i32 %292, i32* %25, align 4
  br label %316

293:                                              ; preds = %269
  %294 = load i64, i64* %23, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ult i64 %294, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %293
  store i32 1, i32* %26, align 4
  %300 = load i64, i64* %23, align 8
  store i64 %300, i64* %21, align 8
  %301 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %303 = load i64, i64* %10, align 8
  %304 = load i32, i32* %26, align 4
  %305 = load i8*, i8** %24, align 8
  %306 = load i32, i32* @BD_RD, align 4
  %307 = call i32 @bd_io(%struct.disk_devdesc* %301, %struct.TYPE_7__* %302, i64 %303, i32 %304, i8* %305, i32 %306)
  store i32 %307, i32* %25, align 4
  br label %315

308:                                              ; preds = %293
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %26, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %311, %313
  store i64 %314, i64* %21, align 8
  br label %315

315:                                              ; preds = %308, %299
  br label %316

316:                                              ; preds = %315, %276
  %317 = load i8*, i8** %12, align 8
  %318 = load i8*, i8** %24, align 8
  %319 = load i64, i64* %20, align 8
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  %321 = load i64, i64* %21, align 8
  %322 = call i32 @bcopy(i8* %317, i8* %320, i64 %321)
  %323 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %325 = load i64, i64* %10, align 8
  %326 = load i32, i32* %26, align 4
  %327 = load i8*, i8** %24, align 8
  %328 = load i32, i32* @BD_WR, align 4
  %329 = call i32 @bd_io(%struct.disk_devdesc* %323, %struct.TYPE_7__* %324, i64 %325, i32 %326, i8* %327, i32 %328)
  store i32 %329, i32* %25, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %316
  %332 = load i32, i32* @EIO, align 4
  store i32 %332, i32* %25, align 4
  br label %358

333:                                              ; preds = %316
  br label %336

334:                                              ; preds = %221
  %335 = load i32, i32* @EROFS, align 4
  store i32 %335, i32* %25, align 4
  br label %358

336:                                              ; preds = %333, %262
  store i64 0, i64* %20, align 8
  %337 = load i64, i64* %21, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 %337
  store i8* %339, i8** %12, align 8
  %340 = load i64, i64* %21, align 8
  %341 = load i64, i64* %23, align 8
  %342 = sub i64 %341, %340
  store i64 %342, i64* %23, align 8
  %343 = load i32, i32* %26, align 4
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* %19, align 8
  %346 = sub i64 %345, %344
  store i64 %346, i64* %19, align 8
  %347 = load i32, i32* %26, align 4
  %348 = sext i32 %347 to i64
  %349 = load i64, i64* %10, align 8
  %350 = add i64 %349, %348
  store i64 %350, i64* %10, align 8
  br label %218

351:                                              ; preds = %218
  %352 = load i64*, i64** %13, align 8
  %353 = icmp ne i64* %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i64, i64* %11, align 8
  %356 = load i64*, i64** %13, align 8
  store i64 %355, i64* %356, align 8
  br label %357

357:                                              ; preds = %354, %351
  br label %358

358:                                              ; preds = %357, %334, %331, %260
  %359 = load i8*, i8** %24, align 8
  %360 = load i32, i32* @V86_IO_BUFFER, align 4
  %361 = call i8* @PTOV(i32 %360)
  %362 = icmp ne i8* %359, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %358
  %364 = load i8*, i8** %24, align 8
  %365 = load i64, i64* %22, align 8
  %366 = call i32 @bio_free(i8* %364, i64 %365)
  br label %367

367:                                              ; preds = %363, %358
  %368 = load i32, i32* %25, align 4
  store i32 %368, i32* %7, align 4
  br label %369

369:                                              ; preds = %367, %154, %104, %76, %52, %42
  %370 = load i32, i32* %7, align 4
  ret i32 %370
}

declare dso_local %struct.TYPE_7__* @bd_get_bdinfo(%struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @disk_ioctl(%struct.disk_devdesc*, i32, i64*) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i8* @bio_alloc(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @PTOV(i32) #1

declare dso_local i32 @bd_io(%struct.disk_devdesc*, %struct.TYPE_7__*, i64, i32, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @bio_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
