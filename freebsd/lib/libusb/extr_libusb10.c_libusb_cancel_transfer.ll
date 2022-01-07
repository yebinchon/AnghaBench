; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_cancel_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_cancel_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32, i32, %struct.libusb_device_handle* }
%struct.libusb_device_handle = type { i32 }
%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.libusb_device = type { i64, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@LIBUSB_DEBUG_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"libusb_cancel_transfer enter\00", align 1
@LIBUSB_SUPER_XFER_ST_PEND = common dso_local global i64 0, align 8
@LIBUSB_TRANSFER_CANCELLED = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"libusb_cancel_transfer leave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_cancel_transfer(%struct.libusb_transfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb_transfer*, align 8
  %4 = alloca %struct.libusb20_transfer*, align 8
  %5 = alloca %struct.libusb20_transfer*, align 8
  %6 = alloca %struct.libusb_super_transfer*, align 8
  %7 = alloca %struct.libusb_device*, align 8
  %8 = alloca %struct.libusb_device_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %3, align 8
  %11 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %12 = icmp eq %struct.libusb_transfer* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %14, i32* %2, align 4
  br label %160

15:                                               ; preds = %1
  %16 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %17 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %16, i32 0, i32 2
  %18 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %17, align 8
  store %struct.libusb_device_handle* %18, %struct.libusb_device_handle** %8, align 8
  %19 = icmp eq %struct.libusb_device_handle* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %21, i32* %2, align 4
  br label %160

22:                                               ; preds = %15
  %23 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %24 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %27 = call %struct.libusb_device* @libusb_get_device(%struct.libusb_device_handle* %26)
  store %struct.libusb_device* %27, %struct.libusb_device** %7, align 8
  %28 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %29 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %32 = call i32 @DPRINTF(i32 %30, i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %34 = bitcast %struct.libusb_transfer* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 -16
  %36 = bitcast i32* %35 to %struct.libusb_super_transfer*
  store %struct.libusb_super_transfer* %36, %struct.libusb_super_transfer** %6, align 8
  store i32 0, i32* %10, align 4
  %37 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %38 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CTX_LOCK(i32 %39)
  %41 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb_device_handle* %41, i32 %42, i32 0)
  store %struct.libusb20_transfer* %43, %struct.libusb20_transfer** %4, align 8
  %44 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb_device_handle* %44, i32 %45, i32 1)
  store %struct.libusb20_transfer* %46, %struct.libusb20_transfer** %5, align 8
  %47 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %48 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LIBUSB_SUPER_XFER_ST_PEND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %22
  %53 = load i32, i32* @LIBUSB_TRANSFER_CANCELLED, align 4
  %54 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %55 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %56, i32* %10, align 4
  br label %149

57:                                               ; preds = %22
  %58 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %59 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %65 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %64, i32 0, i32 2
  %66 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %67 = load i32, i32* @entry, align 4
  %68 = call i32 @TAILQ_REMOVE(i32* %65, %struct.libusb_super_transfer* %66, i32 %67)
  %69 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %70 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %73 = load i32, i32* @LIBUSB_TRANSFER_CANCELLED, align 4
  %74 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* null, %struct.libusb_super_transfer* %72, i32 %73)
  %75 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %76 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @libusb10_wakeup_event_loop(i32 %77)
  br label %148

79:                                               ; preds = %57
  %80 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %81 = icmp eq %struct.libusb20_transfer* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %84 = icmp eq %struct.libusb20_transfer* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %86, i32* %10, align 4
  br label %147

87:                                               ; preds = %82
  %88 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %89 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %88)
  %90 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %91 = icmp eq %struct.libusb_super_transfer* %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %94 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %95 = load i32, i32* @LIBUSB_TRANSFER_CANCELLED, align 4
  %96 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %93, %struct.libusb_super_transfer* %94, i32 %95)
  %97 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %98 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %103 = call i32 @libusb20_tr_set_priv_sc1(%struct.libusb20_transfer* %102, i32* null)
  %104 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %105 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @libusb10_wakeup_event_loop(i32 %106)
  br label %114

108:                                              ; preds = %92
  %109 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %110 = call i32 @libusb20_tr_stop(%struct.libusb20_transfer* %109)
  %111 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @libusb10_submit_transfer_sub(%struct.libusb_device_handle* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  br label %146

115:                                              ; preds = %87
  %116 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %117 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %116)
  %118 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %119 = icmp eq %struct.libusb_super_transfer* %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %122 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %123 = load i32, i32* @LIBUSB_TRANSFER_CANCELLED, align 4
  %124 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %121, %struct.libusb_super_transfer* %122, i32 %123)
  %125 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %126 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %131 = call i32 @libusb20_tr_set_priv_sc1(%struct.libusb20_transfer* %130, i32* null)
  %132 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %133 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @libusb10_wakeup_event_loop(i32 %134)
  br label %142

136:                                              ; preds = %120
  %137 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %138 = call i32 @libusb20_tr_stop(%struct.libusb20_transfer* %137)
  %139 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @libusb10_submit_transfer_sub(%struct.libusb_device_handle* %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %129
  br label %145

143:                                              ; preds = %115
  %144 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %142
  br label %146

146:                                              ; preds = %145, %114
  br label %147

147:                                              ; preds = %146, %85
  br label %148

148:                                              ; preds = %147, %63
  br label %149

149:                                              ; preds = %148, %52
  %150 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %151 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @CTX_UNLOCK(i32 %152)
  %154 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %155 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %158 = call i32 @DPRINTF(i32 %156, i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %149, %20, %13
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.libusb_device* @libusb_get_device(%struct.libusb_device_handle*) #1

declare dso_local i32 @DPRINTF(i32, i32, i8*) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb_device_handle*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb10_complete_transfer(%struct.libusb20_transfer*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb10_wakeup_event_loop(i32) #1

declare dso_local %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_set_priv_sc1(%struct.libusb20_transfer*, i32*) #1

declare dso_local i32 @libusb20_tr_stop(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb10_submit_transfer_sub(%struct.libusb_device_handle*, i32) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
