; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_hpcmi_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_hpcmi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.acpi_hp_softc* }
%struct.acpi_hp_softc = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.uio = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EBADF = common dso_local global i32 0, align 4
@hp = common dso_local global i32 0, align 4
@ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE = common dso_local global i32 0, align 4
@ACPI_HP_WMI_CMI_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @acpi_hp_hpcmi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_hp_hpcmi_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_hp_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1025, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load %struct.cdev*, %struct.cdev** %5, align 8
  %25 = icmp eq %struct.cdev* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.cdev*, %struct.cdev** %5, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %28, align 8
  %30 = icmp eq %struct.acpi_hp_softc* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @EBADF, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %298

33:                                               ; preds = %26
  %34 = load %struct.cdev*, %struct.cdev** %5, align 8
  %35 = getelementptr inbounds %struct.cdev, %struct.cdev* %34, i32 0, i32 0
  %36 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %35, align 8
  store %struct.acpi_hp_softc* %36, %struct.acpi_hp_softc** %8, align 8
  %37 = load i32, i32* @hp, align 4
  %38 = call i32 @ACPI_SERIAL_BEGIN(i32 %37)
  %39 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %40 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %41, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %33
  %51 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %52 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %33
  %56 = load i32, i32* @EBADF, align 4
  store i32 %56, i32* %12, align 4
  br label %294

57:                                               ; preds = %50
  %58 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %59 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %58, i32 0, i32 5
  %60 = call i32 @sbuf_done(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %244, label %62

62:                                               ; preds = %57
  %63 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %64 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %206

67:                                               ; preds = %62
  %68 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %69 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  %71 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %72 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %14, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %14, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %14, align 8
  br label %83

83:                                               ; preds = %80, %77, %67
  %84 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %85 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  store i64 0, i64* %13, align 8
  br label %86

86:                                               ; preds = %202, %83
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %205

90:                                               ; preds = %86
  %91 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %92 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ACPI_HP_WMI_CMI_GUID, align 4
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %98 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @acpi_hp_get_cmi_block(i32 %93, i32 %94, i64 %95, i8* %23, i32 %96, i64* %15, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i64, i64* %14, align 8
  store i64 %103, i64* %13, align 8
  br label %201

104:                                              ; preds = %90
  %105 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %106 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %133, %104
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %111 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 127
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi i1 [ false, %108 ], [ %116, %114 ]
  br i1 %118, label %119, label %136

119:                                              ; preds = %117
  %120 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %121 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %120, i32 0, i32 6
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %9, align 4
  br label %136

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %108

136:                                              ; preds = %130, %117
  %137 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %138 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %177, %136
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %180

144:                                              ; preds = %140
  %145 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %146 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %145, i32 0, i32 6
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %155 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %154, i32 0, i32 6
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i64 %153, i64* %160, align 8
  %161 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %162 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %161, i32 0, i32 6
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %171 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %170, i32 0, i32 6
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i64 %169, i64* %176, align 8
  br label %177

177:                                              ; preds = %144
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %10, align 4
  br label %140

180:                                              ; preds = %140
  %181 = load i64, i64* %15, align 8
  %182 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %183 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %182, i32 0, i32 6
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i64 %181, i64* %188, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %191 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %190, i32 0, i32 6
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i64 %189, i64* %196, align 8
  %197 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %198 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %180, %102
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %13, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %13, align 8
  br label %86

205:                                              ; preds = %86
  br label %206

206:                                              ; preds = %205, %62
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %237, %206
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %210 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %240

213:                                              ; preds = %207
  %214 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %215 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @ACPI_HP_WMI_CMI_GUID, align 4
  %218 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %219 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %218, i32 0, i32 6
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %228 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @acpi_hp_get_cmi_block(i32 %216, i32 %217, i64 %225, i8* %23, i32 %226, i64* %15, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %213
  %233 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %234 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %233, i32 0, i32 5
  %235 = call i32 @sbuf_printf(i32* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %236

236:                                              ; preds = %232, %213
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %207

240:                                              ; preds = %207
  %241 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %242 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %241, i32 0, i32 5
  %243 = call i32 @sbuf_finish(i32* %242)
  br label %244

244:                                              ; preds = %240, %57
  %245 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %246 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %245, i32 0, i32 5
  %247 = call i64 @sbuf_len(i32* %246)
  %248 = icmp sle i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %251 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %250, i32 0, i32 5
  %252 = call i32 @sbuf_delete(i32* %251)
  %253 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %254 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %253, i32 0, i32 1
  store i32 -1, i32* %254, align 8
  %255 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %256 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %255, i32 0, i32 0
  store i64 0, i64* %256, align 8
  %257 = load i32, i32* @ENOMEM, align 4
  store i32 %257, i32* %12, align 4
  br label %293

258:                                              ; preds = %244
  %259 = load %struct.uio*, %struct.uio** %6, align 8
  %260 = getelementptr inbounds %struct.uio, %struct.uio* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %263 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %262, i32 0, i32 5
  %264 = call i64 @sbuf_len(i32* %263)
  %265 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %266 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = sub nsw i64 %264, %268
  %270 = call i32 @min(i32 %261, i64 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %258
  %274 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %275 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %274, i32 0, i32 5
  %276 = call i64 @sbuf_data(i32* %275)
  %277 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %278 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %276, %280
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.uio*, %struct.uio** %6, align 8
  %284 = call i32 @uiomove(i64 %281, i32 %282, %struct.uio* %283)
  br label %286

285:                                              ; preds = %258
  br label %286

286:                                              ; preds = %285, %273
  %287 = phi i32 [ %284, %273 ], [ 0, %285 ]
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %8, align 8
  %290 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %286, %249
  br label %294

294:                                              ; preds = %293, %55
  %295 = load i32, i32* @hp, align 4
  %296 = call i32 @ACPI_SERIAL_END(i32 %295)
  %297 = load i32, i32* %12, align 4
  store i32 %297, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %298

298:                                              ; preds = %294, %31
  %299 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #2

declare dso_local i32 @sbuf_done(i32*) #2

declare dso_local i64 @acpi_hp_get_cmi_block(i32, i32, i64, i8*, i32, i64*, i32) #2

declare dso_local i32 @sbuf_printf(i32*, i8*, i8*) #2

declare dso_local i32 @sbuf_finish(i32*) #2

declare dso_local i64 @sbuf_len(i32*) #2

declare dso_local i32 @sbuf_delete(i32*) #2

declare dso_local i32 @min(i32, i64) #2

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #2

declare dso_local i64 @sbuf_data(i32*) #2

declare dso_local i32 @ACPI_SERIAL_END(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
