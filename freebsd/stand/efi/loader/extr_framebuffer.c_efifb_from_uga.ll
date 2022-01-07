; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_from_uga.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_from_uga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_fb = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*)* }

@PixelBlueGreenRedReserved8BitPerColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"smbios.system.maker\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Apple Inc.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"smbios.system.product\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"iMac7,1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MacBook3,1\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Hardware make/model known, but graphics not as expected.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Console may not work!\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hw.efifb.address\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Please set hw.efifb.address and hw.efifb.stride.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Unable to reliably detect frame buffer.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"hw.efifb.stride\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Unable to reliably detect the stride.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efi_fb*, %struct.TYPE_5__*)* @efifb_from_uga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efifb_from_uga(%struct.efi_fb* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efi_fb*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.efi_fb* %0, %struct.efi_fb** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*)** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 %20(%struct.TYPE_5__* %21, i32* %12, i32* %13, i32* %16, i32* %17)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @EFI_ERROR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %281

27:                                               ; preds = %2
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %30 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %33 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %35 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %40 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %27
  store i32 1, i32* %3, align 4
  br label %281

44:                                               ; preds = %38
  %45 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %46 = load i32, i32* @PixelBlueGreenRedReserved8BitPerColor, align 4
  %47 = call i32 @efifb_mask_from_pixfmt(%struct.efi_fb* %45, i32 %46, i32* null)
  %48 = call i32* (...) @efifb_uga_get_pciio()
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %51 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %50, i32 0, i32 2
  %52 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %53 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %52, i32 0, i32 3
  %54 = call i32 @efifb_uga_locate_framebuffer(i32* %49, i32* %51, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @EFI_ERROR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %60 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %59, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %62 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %44
  store i32 -1, i32* %10, align 4
  %64 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1680, i32* %12, align 4
  store i32 1050, i32* %13, align 4
  store i32 -1073741824, i32* %11, align 4
  store i32 65536, i32* %10, align 4
  store i32 1728, i32* %14, align 4
  br label %89

80:                                               ; preds = %75, %71
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 1280, i32* %12, align 4
  store i32 800, i32* %13, align 4
  store i32 -1073741824, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 2048, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %83, %80
  br label %89

89:                                               ; preds = %88, %79
  br label %90

90:                                               ; preds = %89, %67, %63
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %95 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %93
  %100 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %101 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %107 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %114 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %119 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %124 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %3, align 4
  br label %281

125:                                              ; preds = %105, %99, %93, %90
  %126 = load i32, i32* %10, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %130 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %134 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %137 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %161, %132
  %139 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %140 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %143 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = and i32 %141, %145
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %138
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %153 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %157 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %149, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %138, label %164

164:                                              ; preds = %161
  %165 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i8* %165, i8** %7, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %206

168:                                              ; preds = %164
  %169 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %170 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %281

175:                                              ; preds = %168
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %179 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %182 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 8
  %185 = call i32 @efifb_uga_find_pixel(%struct.TYPE_5__* %176, i32 0, i32* %177, i32 %180, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %205

190:                                              ; preds = %175
  %191 = load i32, i32* %10, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %196 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %201 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %193, %190
  br label %205

205:                                              ; preds = %204, %188
  br label %228

206:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  %207 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %208 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %211 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = mul nsw i32 %213, 4
  %215 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %216 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = call i8* @strtoul(i8* %217, i8** %8, i32 0)
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %221 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load i8*, i8** %8, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %206
  store i32 1, i32* %3, align 4
  br label %281

227:                                              ; preds = %206
  br label %228

228:                                              ; preds = %227, %205
  %229 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i8* %229, i8** %7, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = icmp eq i8* %230, null
  br i1 %231, label %232, label %258

232:                                              ; preds = %228
  %233 = load i32*, i32** %6, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, -1
  br i1 %237, label %238, label %255

238:                                              ; preds = %235
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = load i32*, i32** %6, align 8
  %241 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %242 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = mul nsw i32 %244, 8
  %246 = call i32 @efifb_uga_find_pixel(%struct.TYPE_5__* %239, i32 1, i32* %240, i32 %243, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, -1
  br i1 %248, label %249, label %254

249:                                              ; preds = %238
  %250 = load i32, i32* %10, align 4
  %251 = ashr i32 %250, 2
  %252 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %253 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %249, %238
  br label %257

255:                                              ; preds = %235, %232
  %256 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %254
  br label %270

258:                                              ; preds = %228
  %259 = load i8*, i8** %7, align 8
  %260 = call i8* @strtoul(i8* %259, i8** %8, i32 0)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %263 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 4
  %264 = load i8*, i8** %8, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %258
  store i32 1, i32* %3, align 4
  br label %281

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269, %257
  %271 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %272 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %275 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %273, %276
  %278 = mul nsw i32 %277, 4
  %279 = load %struct.efi_fb*, %struct.efi_fb** %4, align 8
  %280 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %270, %268, %226, %173, %111, %43, %26
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @efifb_mask_from_pixfmt(%struct.efi_fb*, i32, i32*) #1

declare dso_local i32* @efifb_uga_get_pciio(...) #1

declare dso_local i32 @efifb_uga_locate_framebuffer(i32*, i32*, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @efifb_uga_find_pixel(%struct.TYPE_5__*, i32, i32*, i32, i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
