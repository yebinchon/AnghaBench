; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_func_selconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_func_selconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { %struct.usb_device* }
%struct.usb_device = type { i64 }
%struct.usb_endpoint = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.usbd_interface_information = type { i64, i32, i32, %struct.usbd_pipe_information*, i32 }
%struct.usbd_pipe_information = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.usbd_urb_select_configuration = type { %struct.usbd_interface_information, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.usbd_urb = type { %struct.usbd_urb_select_configuration }

@.str = private unnamed_addr constant [30 x i8] c"select configuration is NULL\0A\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@USB_ERR_IN_USE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"setting alternate interface failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"endpoint %d and above are ignored\00", align 1
@UE_INTERRUPT = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USBD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @usbd_func_selconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbd_func_selconf(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndis_softc*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_endpoint*, align 8
  %10 = alloca %struct.usbd_interface_information*, align 8
  %11 = alloca %struct.usbd_pipe_information*, align 8
  %12 = alloca %struct.usbd_urb_select_configuration*, align 8
  %13 = alloca %union.usbd_urb*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @IRP_NDIS_DEV(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.ndis_softc* @device_get_softc(i32 %21)
  store %struct.ndis_softc* %22, %struct.ndis_softc** %7, align 8
  %23 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %23, i32 0, i32 0
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %8, align 8
  store %struct.usb_endpoint* null, %struct.usb_endpoint** %9, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call %union.usbd_urb* @usbd_geturb(i32* %26)
  store %union.usbd_urb* %27, %union.usbd_urb** %13, align 8
  %28 = load %union.usbd_urb*, %union.usbd_urb** %13, align 8
  %29 = bitcast %union.usbd_urb* %28 to %struct.usbd_urb_select_configuration*
  store %struct.usbd_urb_select_configuration* %29, %struct.usbd_urb_select_configuration** %12, align 8
  %30 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %12, align 8
  %31 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %14, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %39 = call i32 @usbd_usb2urb(i64 %38)
  store i32 %39, i32* %2, align 4
  br label %205

40:                                               ; preds = %1
  %41 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %12, align 8
  %42 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %41, i32 0, i32 0
  store %struct.usbd_interface_information* %42, %struct.usbd_interface_information** %10, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %200, %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %51 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i1 [ false, %43 ], [ %53, %49 ]
  br i1 %55, label %56, label %203

56:                                               ; preds = %54
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %59 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %62 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @usbd_set_alt_interface_index(%struct.usb_device* %57, i32 %60, i32 %63)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* @USB_ERR_IN_USE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @usbd_errstr(i64 %74)
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @usbd_usb2urb(i64 %77)
  store i32 %78, i32* %2, align 4
  br label %205

79:                                               ; preds = %68, %56
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %189, %79
  %81 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %82 = load %struct.usb_endpoint*, %struct.usb_endpoint** %9, align 8
  %83 = call %struct.usb_endpoint* @usb_endpoint_foreach(%struct.usb_device* %81, %struct.usb_endpoint* %82)
  store %struct.usb_endpoint* %83, %struct.usb_endpoint** %9, align 8
  %84 = icmp ne %struct.usb_endpoint* %83, null
  br i1 %84, label %85, label %192

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %88 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %94 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %192

97:                                               ; preds = %85
  %98 = load %struct.usb_endpoint*, %struct.usb_endpoint** %9, align 8
  %99 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %15, align 8
  %101 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %102 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %101, i32 0, i32 3
  %103 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %103, i64 %105
  store %struct.usbd_pipe_information* %106, %struct.usbd_pipe_information** %11, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %108 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %109 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %108, i32 0, i32 4
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %114 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @UGETW(i32 %117)
  %119 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %120 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @UE_GET_XFERTYPE(i32 %123)
  %125 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %126 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %129 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %132 = call i64 @usbd_setup_endpoint(i32* %127, i32 %130, %struct.TYPE_4__* %131)
  store i64 %132, i64* %16, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %97
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @usbd_usb2urb(i64 %137)
  store i32 %138, i32* %2, align 4
  br label %205

139:                                              ; preds = %97
  %140 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %141 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UE_INTERRUPT, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %189

146:                                              ; preds = %139
  %147 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @USB_SPEED_LOW, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 5
  %157 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %158 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  br label %188

159:                                              ; preds = %146
  %160 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @USB_SPEED_FULL, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %170 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %187

171:                                              ; preds = %159
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %172

172:                                              ; preds = %177, %171
  %173 = load i32, i32* %18, align 4
  %174 = mul nsw i32 %173, 2
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %18, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %172, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %11, align 8
  %186 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %165
  br label %188

188:                                              ; preds = %187, %152
  br label %189

189:                                              ; preds = %188, %145
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %80

192:                                              ; preds = %91, %80
  %193 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %194 = bitcast %struct.usbd_interface_information* %193 to i8*
  %195 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %10, align 8
  %196 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = bitcast i8* %198 to %struct.usbd_interface_information*
  store %struct.usbd_interface_information* %199, %struct.usbd_interface_information** %10, align 8
  br label %200

200:                                              ; preds = %192
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %43

203:                                              ; preds = %54
  %204 = load i32, i32* @USBD_STATUS_SUCCESS, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %136, %72, %35
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @IRP_NDIS_DEV(i32*) #1

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local %union.usbd_urb* @usbd_geturb(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_usb2urb(i64) #1

declare dso_local i64 @usbd_set_alt_interface_index(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local %struct.usb_endpoint* @usb_endpoint_foreach(%struct.usb_device*, %struct.usb_endpoint*) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i64 @UE_GET_XFERTYPE(i32) #1

declare dso_local i64 @usbd_setup_endpoint(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
