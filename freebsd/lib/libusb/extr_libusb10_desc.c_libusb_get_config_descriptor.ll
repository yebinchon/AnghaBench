; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_config_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_config_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.libusb20_device* }
%struct.libusb20_device = type { i32 }
%struct.libusb_config_descriptor = type { i64, i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.libusb_interface_descriptor* }
%struct.libusb_interface_descriptor = type { i64, i32*, %struct.libusb_endpoint_descriptor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libusb_endpoint_descriptor = type { i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libusb20_config = type { i32, %struct.libusb20_interface*, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.libusb20_interface = type { i32, i32, %struct.libusb20_endpoint*, %struct.TYPE_15__, %struct.TYPE_11__, %struct.libusb20_interface* }
%struct.libusb20_endpoint = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_config_descriptor(%struct.TYPE_17__* %0, i32 %1, %struct.libusb_config_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb_config_descriptor**, align 8
  %8 = alloca %struct.libusb20_device*, align 8
  %9 = alloca %struct.libusb20_config*, align 8
  %10 = alloca %struct.libusb20_interface*, align 8
  %11 = alloca %struct.libusb20_endpoint*, align 8
  %12 = alloca %struct.libusb_config_descriptor*, align 8
  %13 = alloca %struct.libusb_interface_descriptor*, align 8
  %14 = alloca %struct.libusb_endpoint_descriptor*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.libusb_config_descriptor** %2, %struct.libusb_config_descriptor*** %7, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = icmp eq %struct.TYPE_17__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  %27 = icmp eq %struct.libusb_config_descriptor** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %29, i32* %4, align 4
  br label %614

30:                                               ; preds = %25
  %31 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  store %struct.libusb_config_descriptor* null, %struct.libusb_config_descriptor** %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.libusb20_device*, %struct.libusb20_device** %33, align 8
  store %struct.libusb20_device* %34, %struct.libusb20_device** %8, align 8
  %35 = load %struct.libusb20_device*, %struct.libusb20_device** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device* %35, i32 %36)
  store %struct.libusb20_config* %37, %struct.libusb20_config** %9, align 8
  %38 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %39 = icmp eq %struct.libusb20_config* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %41, i32* %4, align 4
  br label %614

42:                                               ; preds = %30
  %43 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %44 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %17, align 4
  store i32 %45, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %46 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %47 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @N_ALIGN(i64 %49)
  store i64 %50, i64* %16, align 8
  store i32 0, i32* %20, align 4
  br label %51

51:                                               ; preds = %147, %42
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %150

55:                                               ; preds = %51
  %56 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %57 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %56, i32 0, i32 1
  %58 = load %struct.libusb20_interface*, %struct.libusb20_interface** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %58, i64 %60
  store %struct.libusb20_interface* %61, %struct.libusb20_interface** %10, align 8
  %62 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %63 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @N_ALIGN(i64 %65)
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %16, align 8
  %69 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %70 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %18, align 4
  %74 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %75 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %22, align 4
  %77 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %78 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %77, i32 0, i32 2
  %79 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %78, align 8
  store %struct.libusb20_endpoint* %79, %struct.libusb20_endpoint** %11, align 8
  br label %80

80:                                               ; preds = %84, %55
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %22, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %86 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @N_ALIGN(i64 %88)
  %90 = load i64, i64* %16, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %16, align 8
  %92 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %93 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %92, i32 1
  store %struct.libusb20_endpoint* %93, %struct.libusb20_endpoint** %11, align 8
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %96 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %21, align 4
  %98 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %99 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %19, align 4
  %103 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %104 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %103, i32 0, i32 5
  %105 = load %struct.libusb20_interface*, %struct.libusb20_interface** %104, align 8
  store %struct.libusb20_interface* %105, %struct.libusb20_interface** %10, align 8
  br label %106

106:                                              ; preds = %143, %94
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %21, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %106
  %111 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %112 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @N_ALIGN(i64 %114)
  %116 = load i64, i64* %16, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %16, align 8
  %118 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %119 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %18, align 4
  %123 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %124 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %22, align 4
  %126 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %127 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %126, i32 0, i32 2
  %128 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %127, align 8
  store %struct.libusb20_endpoint* %128, %struct.libusb20_endpoint** %11, align 8
  br label %129

129:                                              ; preds = %133, %110
  %130 = load i32, i32* %22, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %22, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %135 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @N_ALIGN(i64 %137)
  %139 = load i64, i64* %16, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %16, align 8
  %141 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %142 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %141, i32 1
  store %struct.libusb20_endpoint* %142, %struct.libusb20_endpoint** %11, align 8
  br label %129

143:                                              ; preds = %129
  %144 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %145 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %144, i32 1
  store %struct.libusb20_interface* %145, %struct.libusb20_interface** %10, align 8
  br label %106

146:                                              ; preds = %106
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %51

150:                                              ; preds = %51
  %151 = load i64, i64* %16, align 8
  %152 = add i64 %151, 4
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 16
  %156 = add i64 %152, %155
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 64
  %160 = add i64 %156, %159
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 48
  %164 = add i64 %160, %163
  store i64 %164, i64* %16, align 8
  %165 = load i64, i64* %16, align 8
  %166 = call i64 @N_ALIGN(i64 %165)
  store i64 %166, i64* %16, align 8
  %167 = load i64, i64* %16, align 8
  %168 = call %struct.libusb_config_descriptor* @malloc(i64 %167)
  store %struct.libusb_config_descriptor* %168, %struct.libusb_config_descriptor** %12, align 8
  %169 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %170 = icmp eq %struct.libusb_config_descriptor* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %150
  %172 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %173 = call i32 @free(%struct.libusb20_config* %172)
  %174 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %174, i32* %4, align 4
  br label %614

175:                                              ; preds = %150
  %176 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %177 = load i64, i64* %16, align 8
  %178 = call i32 @memset(%struct.libusb_config_descriptor* %176, i32 0, i64 %177)
  %179 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %180 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %179, i64 1
  %181 = bitcast %struct.libusb_config_descriptor* %180 to %struct.TYPE_16__*
  %182 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %183 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %182, i32 0, i32 2
  store %struct.TYPE_16__* %181, %struct.TYPE_16__** %183, align 8
  %184 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %185 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %184, i32 0, i32 2
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i64 %188
  %190 = bitcast %struct.TYPE_16__* %189 to %struct.libusb_interface_descriptor*
  store %struct.libusb_interface_descriptor* %190, %struct.libusb_interface_descriptor** %13, align 8
  %191 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %191, i64 %193
  %195 = bitcast %struct.libusb_interface_descriptor* %194 to %struct.libusb_endpoint_descriptor*
  store %struct.libusb_endpoint_descriptor* %195, %struct.libusb_endpoint_descriptor** %14, align 8
  %196 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %196, i64 %198
  %200 = bitcast %struct.libusb_endpoint_descriptor* %199 to i32*
  store i32* %200, i32** %15, align 8
  %201 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %202 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %206 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %205, i32 0, i32 10
  store i32 %204, i32* %206, align 4
  %207 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %208 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %212 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 8
  %213 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %214 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %218 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  %219 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %220 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %224 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 8
  %225 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %226 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %230 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 4
  %231 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %232 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %236 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %238 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %242 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 4
  %243 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %244 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %248 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %250 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %279

254:                                              ; preds = %175
  %255 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %256 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %260 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  %261 = load i32*, i32** %15, align 8
  %262 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %263 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %262, i32 0, i32 1
  store i32* %261, i32** %263, align 8
  %264 = load i32*, i32** %15, align 8
  %265 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %266 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %270 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @memcpy(i32* %264, i32 %268, i64 %271)
  %273 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %274 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @N_ALIGN(i64 %275)
  %277 = load i32*, i32** %15, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 %276
  store i32* %278, i32** %15, align 8
  br label %279

279:                                              ; preds = %254, %175
  store i32 0, i32* %20, align 4
  br label %280

280:                                              ; preds = %346, %279
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %17, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %349

284:                                              ; preds = %280
  %285 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %286 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %287 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %286, i32 0, i32 2
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = load i32, i32* %20, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 1
  store %struct.libusb_interface_descriptor* %285, %struct.libusb_interface_descriptor** %292, align 8
  %293 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %294 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %295 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %294, i32 0, i32 2
  store %struct.libusb_endpoint_descriptor* %293, %struct.libusb_endpoint_descriptor** %295, align 8
  %296 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %297 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %296, i32 0, i32 1
  %298 = load %struct.libusb20_interface*, %struct.libusb20_interface** %297, align 8
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %298, i64 %300
  %302 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %304, i64 %305
  store %struct.libusb_endpoint_descriptor* %306, %struct.libusb_endpoint_descriptor** %14, align 8
  %307 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %308 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %307, i32 1
  store %struct.libusb_interface_descriptor* %308, %struct.libusb_interface_descriptor** %13, align 8
  store i32 0, i32* %21, align 4
  br label %309

309:                                              ; preds = %342, %284
  %310 = load i32, i32* %21, align 4
  %311 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %312 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %311, i32 0, i32 1
  %313 = load %struct.libusb20_interface*, %struct.libusb20_interface** %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %313, i64 %315
  %317 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %310, %318
  br i1 %319, label %320, label %345

320:                                              ; preds = %309
  %321 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %322 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %323 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %322, i32 0, i32 2
  store %struct.libusb_endpoint_descriptor* %321, %struct.libusb_endpoint_descriptor** %323, align 8
  %324 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %325 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %324, i32 0, i32 1
  %326 = load %struct.libusb20_interface*, %struct.libusb20_interface** %325, align 8
  %327 = load i32, i32* %20, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %326, i64 %328
  %330 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %329, i32 0, i32 5
  %331 = load %struct.libusb20_interface*, %struct.libusb20_interface** %330, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %331, i64 %333
  %335 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %337, i64 %338
  store %struct.libusb_endpoint_descriptor* %339, %struct.libusb_endpoint_descriptor** %14, align 8
  %340 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %341 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %340, i32 1
  store %struct.libusb_interface_descriptor* %341, %struct.libusb_interface_descriptor** %13, align 8
  br label %342

342:                                              ; preds = %320
  %343 = load i32, i32* %21, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %21, align 4
  br label %309

345:                                              ; preds = %309
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %20, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %20, align 4
  br label %280

349:                                              ; preds = %280
  store i32 0, i32* %20, align 4
  br label %350

350:                                              ; preds = %606, %349
  %351 = load i32, i32* %20, align 4
  %352 = load i32, i32* %17, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %609

354:                                              ; preds = %350
  %355 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %356 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %355, i32 0, i32 1
  %357 = load %struct.libusb20_interface*, %struct.libusb20_interface** %356, align 8
  %358 = load i32, i32* %20, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %357, i64 %359
  store %struct.libusb20_interface* %360, %struct.libusb20_interface** %10, align 8
  %361 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %362 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 1
  %365 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %366 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %365, i32 0, i32 2
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = load i32, i32* %20, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  store i32 %364, i32* %371, align 8
  store i32 0, i32* %21, align 4
  br label %372

372:                                              ; preds = %602, %354
  %373 = load i32, i32* %21, align 4
  %374 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %375 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %374, i32 0, i32 2
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %375, align 8
  %377 = load i32, i32* %20, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %373, %381
  br i1 %382, label %383, label %605

383:                                              ; preds = %372
  %384 = load i32, i32* %21, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %388 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %387, i32 0, i32 1
  %389 = load %struct.libusb20_interface*, %struct.libusb20_interface** %388, align 8
  %390 = load i32, i32* %20, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %389, i64 %391
  %393 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %392, i32 0, i32 5
  %394 = load %struct.libusb20_interface*, %struct.libusb20_interface** %393, align 8
  %395 = load i32, i32* %21, align 4
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %394, i64 %397
  store %struct.libusb20_interface* %398, %struct.libusb20_interface** %10, align 8
  br label %399

399:                                              ; preds = %386, %383
  %400 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %401 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %400, i32 0, i32 2
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %401, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  %407 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %406, align 8
  %408 = load i32, i32* %21, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %407, i64 %409
  store %struct.libusb_interface_descriptor* %410, %struct.libusb_interface_descriptor** %13, align 8
  %411 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %412 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %416 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %415, i32 0, i32 11
  store i32 %414, i32* %416, align 8
  %417 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %418 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %417, i32 0, i32 4
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %422 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %421, i32 0, i32 10
  store i32 %420, i32* %422, align 4
  %423 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %424 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %428 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %427, i32 0, i32 9
  store i32 %426, i32* %428, align 8
  %429 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %430 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %429, i32 0, i32 4
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %434 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %433, i32 0, i32 8
  store i32 %432, i32* %434, align 4
  %435 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %436 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %435, i32 0, i32 4
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %440 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %439, i32 0, i32 7
  store i32 %438, i32* %440, align 8
  %441 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %442 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %446 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %445, i32 0, i32 6
  store i32 %444, i32* %446, align 4
  %447 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %448 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %447, i32 0, i32 4
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %452 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %451, i32 0, i32 5
  store i32 %450, i32* %452, align 8
  %453 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %454 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %458 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %457, i32 0, i32 4
  store i32 %456, i32* %458, align 4
  %459 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %460 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %459, i32 0, i32 4
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %464 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %463, i32 0, i32 3
  store i32 %462, i32* %464, align 8
  %465 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %466 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %465, i32 0, i32 3
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %497

470:                                              ; preds = %399
  %471 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %472 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %476 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %475, i32 0, i32 0
  store i64 %474, i64* %476, align 8
  %477 = load i32*, i32** %15, align 8
  %478 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %479 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %478, i32 0, i32 1
  store i32* %477, i32** %479, align 8
  %480 = load i32*, i32** %15, align 8
  %481 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %482 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %481, i32 0, i32 3
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %486 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %485, i32 0, i32 3
  %487 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @memcpy(i32* %480, i32 %484, i64 %488)
  %490 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %491 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %490, i32 0, i32 3
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = call i64 @N_ALIGN(i64 %493)
  %495 = load i32*, i32** %15, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 %494
  store i32* %496, i32** %15, align 8
  br label %497

497:                                              ; preds = %470, %399
  store i32 0, i32* %22, align 4
  br label %498

498:                                              ; preds = %598, %497
  %499 = load i32, i32* %22, align 4
  %500 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %501 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = icmp slt i32 %499, %502
  br i1 %503, label %504, label %601

504:                                              ; preds = %498
  %505 = load %struct.libusb20_interface*, %struct.libusb20_interface** %10, align 8
  %506 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %505, i32 0, i32 2
  %507 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %506, align 8
  %508 = load i32, i32* %22, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %507, i64 %509
  store %struct.libusb20_endpoint* %510, %struct.libusb20_endpoint** %11, align 8
  %511 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %13, align 8
  %512 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %511, i32 0, i32 2
  %513 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %512, align 8
  %514 = load i32, i32* %22, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %513, i64 %515
  store %struct.libusb_endpoint_descriptor* %516, %struct.libusb_endpoint_descriptor** %14, align 8
  %517 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %518 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 7
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %522 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %521, i32 0, i32 9
  store i32 %520, i32* %522, align 4
  %523 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %524 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 6
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %528 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %527, i32 0, i32 8
  store i32 %526, i32* %528, align 8
  %529 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %530 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 5
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %534 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %533, i32 0, i32 7
  store i32 %532, i32* %534, align 4
  %535 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %536 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %540 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %539, i32 0, i32 6
  store i32 %538, i32* %540, align 8
  %541 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %542 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %546 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %545, i32 0, i32 5
  store i32 %544, i32* %546, align 4
  %547 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %548 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %552 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %551, i32 0, i32 4
  store i32 %550, i32* %552, align 8
  %553 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %554 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %558 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %557, i32 0, i32 3
  store i32 %556, i32* %558, align 4
  %559 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %560 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %564 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %563, i32 0, i32 2
  store i32 %562, i32* %564, align 8
  %565 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %566 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %597

570:                                              ; preds = %504
  %571 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %572 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %576 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %575, i32 0, i32 0
  store i64 %574, i64* %576, align 8
  %577 = load i32*, i32** %15, align 8
  %578 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %14, align 8
  %579 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %578, i32 0, i32 1
  store i32* %577, i32** %579, align 8
  %580 = load i32*, i32** %15, align 8
  %581 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %582 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 8
  %585 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %586 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = call i32 @memcpy(i32* %580, i32 %584, i64 %588)
  %590 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %11, align 8
  %591 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = call i64 @N_ALIGN(i64 %593)
  %595 = load i32*, i32** %15, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 %594
  store i32* %596, i32** %15, align 8
  br label %597

597:                                              ; preds = %570, %504
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %22, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %22, align 4
  br label %498

601:                                              ; preds = %498
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %21, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %21, align 4
  br label %372

605:                                              ; preds = %372
  br label %606

606:                                              ; preds = %605
  %607 = load i32, i32* %20, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %20, align 4
  br label %350

609:                                              ; preds = %350
  %610 = load %struct.libusb20_config*, %struct.libusb20_config** %9, align 8
  %611 = call i32 @free(%struct.libusb20_config* %610)
  %612 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %12, align 8
  %613 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  store %struct.libusb_config_descriptor* %612, %struct.libusb_config_descriptor** %613, align 8
  store i32 0, i32* %4, align 4
  br label %614

614:                                              ; preds = %609, %171, %40, %28
  %615 = load i32, i32* %4, align 4
  ret i32 %615
}

declare dso_local %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device*, i32) #1

declare dso_local i64 @N_ALIGN(i64) #1

declare dso_local %struct.libusb_config_descriptor* @malloc(i64) #1

declare dso_local i32 @free(%struct.libusb20_config*) #1

declare dso_local i32 @memset(%struct.libusb_config_descriptor*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
