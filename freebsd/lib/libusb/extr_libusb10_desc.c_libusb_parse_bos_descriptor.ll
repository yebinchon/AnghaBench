; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_parse_bos_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_parse_bos_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_bos_descriptor = type { i32, i32, i32, i32, %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor*, i32** }
%struct.libusb_ss_usb_device_capability_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libusb_usb_2_0_device_capability_descriptor = type { i32, i32, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_DT_BOS_SIZE = common dso_local global i32 0, align 4
@LIBUSB_DT_BOS = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4
@LIBUSB_DT_DEVICE_CAPABILITY = common dso_local global i32 0, align 4
@LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE = common dso_local global i32 0, align 4
@LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE = common dso_local global i32 0, align 4
@LIBUSB_ERROR_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_parse_bos_descriptor(i8* %0, i32 %1, %struct.libusb_bos_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb_bos_descriptor**, align 8
  %8 = alloca %struct.libusb_bos_descriptor*, align 8
  %9 = alloca %struct.libusb_usb_2_0_device_capability_descriptor*, align 8
  %10 = alloca %struct.libusb_ss_usb_device_capability_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.libusb_bos_descriptor** %2, %struct.libusb_bos_descriptor*** %7, align 8
  store %struct.libusb_usb_2_0_device_capability_descriptor* null, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  store %struct.libusb_ss_usb_device_capability_descriptor* null, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.libusb_bos_descriptor**, %struct.libusb_bos_descriptor*** %7, align 8
  %18 = icmp eq %struct.libusb_bos_descriptor** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %23, i32* %4, align 4
  br label %324

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 65535, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  store %struct.libusb_bos_descriptor* null, %struct.libusb_bos_descriptor** %8, align 8
  %29 = load %struct.libusb_bos_descriptor**, %struct.libusb_bos_descriptor*** %7, align 8
  store %struct.libusb_bos_descriptor* null, %struct.libusb_bos_descriptor** %29, align 8
  br label %30

30:                                               ; preds = %305, %28
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %315

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %33
  br label %315

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @LIBUSB_DT_BOS_SIZE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %121

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @LIBUSB_DT_BOS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %121

57:                                               ; preds = %53
  %58 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %59 = icmp eq %struct.libusb_bos_descriptor* %58, null
  br i1 %59, label %60, label %121

60:                                               ; preds = %57
  %61 = call i8* @malloc(i32 88)
  %62 = bitcast i8* %61 to %struct.libusb_bos_descriptor*
  store %struct.libusb_bos_descriptor* %62, %struct.libusb_bos_descriptor** %8, align 8
  %63 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %64 = icmp eq %struct.libusb_bos_descriptor* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %66, i32* %4, align 4
  br label %324

67:                                               ; preds = %60
  %68 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %69 = load %struct.libusb_bos_descriptor**, %struct.libusb_bos_descriptor*** %7, align 8
  store %struct.libusb_bos_descriptor* %68, %struct.libusb_bos_descriptor** %69, align 8
  %70 = load i32, i32* @LIBUSB_DT_BOS_SIZE, align 4
  %71 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %72 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %75 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = or i32 %79, %84
  %86 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %87 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %93 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %94, i32 0, i32 5
  store %struct.libusb_usb_2_0_device_capability_descriptor* null, %struct.libusb_usb_2_0_device_capability_descriptor** %95, align 8
  %96 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %97 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %96, i32 0, i32 4
  store %struct.libusb_ss_usb_device_capability_descriptor* null, %struct.libusb_ss_usb_device_capability_descriptor** %97, align 8
  %98 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %99 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32** @calloc(i32 %100, i32 8)
  %102 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %103 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %102, i32 0, i32 6
  store i32** %101, i32*** %103, align 8
  %104 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %105 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %104, i32 0, i32 6
  %106 = load i32**, i32*** %105, align 8
  %107 = icmp eq i32** %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %67
  %109 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %110 = call i32 @free(%struct.libusb_bos_descriptor* %109)
  %111 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %111, i32* %4, align 4
  br label %324

112:                                              ; preds = %67
  %113 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %114 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %113, i64 1
  %115 = bitcast %struct.libusb_bos_descriptor* %114 to i8*
  %116 = bitcast i8* %115 to %struct.libusb_usb_2_0_device_capability_descriptor*
  store %struct.libusb_usb_2_0_device_capability_descriptor* %116, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %117 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %118 = getelementptr inbounds %struct.libusb_usb_2_0_device_capability_descriptor, %struct.libusb_usb_2_0_device_capability_descriptor* %117, i64 1
  %119 = bitcast %struct.libusb_usb_2_0_device_capability_descriptor* %118 to i8*
  %120 = bitcast i8* %119 to %struct.libusb_ss_usb_device_capability_descriptor*
  store %struct.libusb_ss_usb_device_capability_descriptor* %120, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  br label %121

121:                                              ; preds = %112, %57, %53, %49
  %122 = load i32, i32* %12, align 4
  %123 = icmp sge i32 %122, 3
  br i1 %123, label %124, label %305

124:                                              ; preds = %121
  %125 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %126 = icmp ne %struct.libusb_bos_descriptor* %125, null
  br i1 %126, label %127, label %305

127:                                              ; preds = %124
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @LIBUSB_DT_DEVICE_CAPABILITY, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %305

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %134 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %172

137:                                              ; preds = %131
  %138 = load i32, i32* %12, align 4
  %139 = call i8* @malloc(i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %142 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %141, i32 0, i32 6
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  store i32* %140, i32** %146, align 8
  %147 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %148 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %147, i32 0, i32 6
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %137
  %156 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %157 = call i32 @libusb_free_bos_descriptor(%struct.libusb_bos_descriptor* %156)
  %158 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %158, i32* %4, align 4
  br label %324

159:                                              ; preds = %137
  %160 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %161 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %160, i32 0, i32 6
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @memcpy(i32* %166, i8* %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %159, %131
  %173 = load i8*, i8** %5, align 8
  %174 = bitcast i8* %173 to i32*
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %303 [
    i32 128, label %177
    i32 129, label %231
  ]

177:                                              ; preds = %172
  %178 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %179 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %178, i32 0, i32 5
  %180 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %179, align 8
  %181 = icmp ne %struct.libusb_usb_2_0_device_capability_descriptor* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %184 = icmp eq %struct.libusb_usb_2_0_device_capability_descriptor* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %177
  br label %304

186:                                              ; preds = %182
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %304

191:                                              ; preds = %186
  %192 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %193 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %194 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %193, i32 0, i32 5
  store %struct.libusb_usb_2_0_device_capability_descriptor* %192, %struct.libusb_usb_2_0_device_capability_descriptor** %194, align 8
  %195 = load i32, i32* @LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE, align 4
  %196 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %197 = getelementptr inbounds %struct.libusb_usb_2_0_device_capability_descriptor, %struct.libusb_usb_2_0_device_capability_descriptor* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %200 = getelementptr inbounds %struct.libusb_usb_2_0_device_capability_descriptor, %struct.libusb_usb_2_0_device_capability_descriptor* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = bitcast i8* %201 to i32*
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %206 = getelementptr inbounds %struct.libusb_usb_2_0_device_capability_descriptor, %struct.libusb_usb_2_0_device_capability_descriptor* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = bitcast i8* %207 to i32*
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** %5, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 8
  %216 = or i32 %210, %215
  %217 = load i8*, i8** %5, align 8
  %218 = bitcast i8* %217 to i32*
  %219 = getelementptr inbounds i32, i32* %218, i64 5
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 16
  %222 = or i32 %216, %221
  %223 = load i8*, i8** %5, align 8
  %224 = bitcast i8* %223 to i32*
  %225 = getelementptr inbounds i32, i32* %224, i64 6
  %226 = load i32, i32* %225, align 4
  %227 = shl i32 %226, 24
  %228 = or i32 %222, %227
  %229 = load %struct.libusb_usb_2_0_device_capability_descriptor*, %struct.libusb_usb_2_0_device_capability_descriptor** %9, align 8
  %230 = getelementptr inbounds %struct.libusb_usb_2_0_device_capability_descriptor, %struct.libusb_usb_2_0_device_capability_descriptor* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  br label %304

231:                                              ; preds = %172
  %232 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %233 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %232, i32 0, i32 4
  %234 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %233, align 8
  %235 = icmp ne %struct.libusb_ss_usb_device_capability_descriptor* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %238 = icmp eq %struct.libusb_ss_usb_device_capability_descriptor* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %231
  br label %304

240:                                              ; preds = %236
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %304

245:                                              ; preds = %240
  %246 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %247 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %248 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %247, i32 0, i32 4
  store %struct.libusb_ss_usb_device_capability_descriptor* %246, %struct.libusb_ss_usb_device_capability_descriptor** %248, align 8
  %249 = load i32, i32* @LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE, align 4
  %250 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %251 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %254 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load i8*, i8** %5, align 8
  %256 = bitcast i8* %255 to i32*
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %260 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  %261 = load i8*, i8** %5, align 8
  %262 = bitcast i8* %261 to i32*
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %266 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = load i8*, i8** %5, align 8
  %268 = bitcast i8* %267 to i32*
  %269 = getelementptr inbounds i32, i32* %268, i64 4
  %270 = load i32, i32* %269, align 4
  %271 = load i8*, i8** %5, align 8
  %272 = bitcast i8* %271 to i32*
  %273 = getelementptr inbounds i32, i32* %272, i64 5
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %274, 8
  %276 = or i32 %270, %275
  %277 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %278 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 4
  %279 = load i8*, i8** %5, align 8
  %280 = bitcast i8* %279 to i32*
  %281 = getelementptr inbounds i32, i32* %280, i64 6
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %284 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 4
  %285 = load i8*, i8** %5, align 8
  %286 = bitcast i8* %285 to i32*
  %287 = getelementptr inbounds i32, i32* %286, i64 7
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %290 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %289, i32 0, i32 6
  store i32 %288, i32* %290, align 4
  %291 = load i8*, i8** %5, align 8
  %292 = bitcast i8* %291 to i32*
  %293 = getelementptr inbounds i32, i32* %292, i64 8
  %294 = load i32, i32* %293, align 4
  %295 = load i8*, i8** %5, align 8
  %296 = bitcast i8* %295 to i32*
  %297 = getelementptr inbounds i32, i32* %296, i64 9
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 8
  %300 = or i32 %294, %299
  %301 = load %struct.libusb_ss_usb_device_capability_descriptor*, %struct.libusb_ss_usb_device_capability_descriptor** %10, align 8
  %302 = getelementptr inbounds %struct.libusb_ss_usb_device_capability_descriptor, %struct.libusb_ss_usb_device_capability_descriptor* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  br label %304

303:                                              ; preds = %172
  br label %304

304:                                              ; preds = %303, %245, %244, %239, %191, %190, %185
  br label %305

305:                                              ; preds = %304, %127, %124, %121
  %306 = load i8*, i8** %5, align 8
  %307 = bitcast i8* %306 to i32*
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = bitcast i32* %310 to i8*
  store i8* %311, i8** %5, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sub nsw i32 %313, %312
  store i32 %314, i32* %6, align 4
  br label %30

315:                                              ; preds = %48, %30
  %316 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %317 = icmp ne %struct.libusb_bos_descriptor* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32, i32* %11, align 4
  %320 = load %struct.libusb_bos_descriptor*, %struct.libusb_bos_descriptor** %8, align 8
  %321 = getelementptr inbounds %struct.libusb_bos_descriptor, %struct.libusb_bos_descriptor* %320, i32 0, i32 3
  store i32 %319, i32* %321, align 4
  store i32 0, i32* %4, align 4
  br label %324

322:                                              ; preds = %315
  %323 = load i32, i32* @LIBUSB_ERROR_IO, align 4
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %322, %318, %155, %108, %65, %22
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.libusb_bos_descriptor*) #1

declare dso_local i32 @libusb_free_bos_descriptor(%struct.libusb_bos_descriptor*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
