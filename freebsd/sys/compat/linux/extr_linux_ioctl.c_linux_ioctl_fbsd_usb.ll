; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_fbsd_usb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_fbsd_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32 }
%struct.ioctl_args = type { i32 }

@USB_DEVICEENUMERATE = common dso_local global i32 0, align 4
@USB_DEV_QUIRK_ADD = common dso_local global i32 0, align 4
@USB_DEV_QUIRK_GET = common dso_local global i32 0, align 4
@USB_DEV_QUIRK_REMOVE = common dso_local global i32 0, align 4
@USB_DO_REQUEST = common dso_local global i32 0, align 4
@USB_FS_CLEAR_STALL_SYNC = common dso_local global i32 0, align 4
@USB_FS_CLOSE = common dso_local global i32 0, align 4
@USB_FS_COMPLETE = common dso_local global i32 0, align 4
@USB_FS_INIT = common dso_local global i32 0, align 4
@USB_FS_OPEN = common dso_local global i32 0, align 4
@USB_FS_START = common dso_local global i32 0, align 4
@USB_FS_STOP = common dso_local global i32 0, align 4
@USB_FS_UNINIT = common dso_local global i32 0, align 4
@USB_GET_CONFIG = common dso_local global i32 0, align 4
@USB_GET_DEVICEINFO = common dso_local global i32 0, align 4
@USB_GET_DEVICE_DESC = common dso_local global i32 0, align 4
@USB_GET_FULL_DESC = common dso_local global i32 0, align 4
@USB_GET_IFACE_DRIVER = common dso_local global i32 0, align 4
@USB_GET_PLUGTIME = common dso_local global i32 0, align 4
@USB_GET_POWER_MODE = common dso_local global i32 0, align 4
@USB_GET_REPORT_DESC = common dso_local global i32 0, align 4
@USB_GET_REPORT_ID = common dso_local global i32 0, align 4
@USB_GET_TEMPLATE = common dso_local global i32 0, align 4
@USB_IFACE_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@USB_IFACE_DRIVER_DETACH = common dso_local global i32 0, align 4
@USB_QUIRK_NAME_GET = common dso_local global i32 0, align 4
@USB_READ_DIR = common dso_local global i32 0, align 4
@USB_SET_ALTINTERFACE = common dso_local global i32 0, align 4
@USB_SET_CONFIG = common dso_local global i32 0, align 4
@USB_SET_IMMED = common dso_local global i32 0, align 4
@USB_SET_POWER_MODE = common dso_local global i32 0, align 4
@USB_SET_TEMPLATE = common dso_local global i32 0, align 4
@USB_FS_OPEN_STREAM = common dso_local global i32 0, align 4
@USB_GET_DEV_PORT_PATH = common dso_local global i32 0, align 4
@USB_GET_POWER_USAGE = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_fbsd_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_fbsd_usb(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_ioctl_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %7 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %149 [
    i32 162, label %9
    i32 161, label %13
    i32 160, label %17
    i32 159, label %21
    i32 158, label %25
    i32 157, label %29
    i32 156, label %33
    i32 155, label %37
    i32 154, label %41
    i32 153, label %45
    i32 151, label %49
    i32 150, label %53
    i32 149, label %57
    i32 148, label %61
    i32 147, label %65
    i32 146, label %69
    i32 144, label %73
    i32 143, label %77
    i32 142, label %81
    i32 141, label %85
    i32 139, label %89
    i32 138, label %93
    i32 137, label %97
    i32 136, label %101
    i32 135, label %105
    i32 134, label %109
    i32 133, label %113
    i32 132, label %117
    i32 131, label %121
    i32 130, label %125
    i32 129, label %129
    i32 128, label %133
    i32 152, label %137
    i32 145, label %141
    i32 140, label %145
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @USB_DEVICEENUMERATE, align 4
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %151

13:                                               ; preds = %2
  %14 = load i32, i32* @USB_DEV_QUIRK_ADD, align 4
  %15 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %16 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %151

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_DEV_QUIRK_GET, align 4
  %19 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %20 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %151

21:                                               ; preds = %2
  %22 = load i32, i32* @USB_DEV_QUIRK_REMOVE, align 4
  %23 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %24 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %151

25:                                               ; preds = %2
  %26 = load i32, i32* @USB_DO_REQUEST, align 4
  %27 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %28 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %151

29:                                               ; preds = %2
  %30 = load i32, i32* @USB_FS_CLEAR_STALL_SYNC, align 4
  %31 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %32 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %151

33:                                               ; preds = %2
  %34 = load i32, i32* @USB_FS_CLOSE, align 4
  %35 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %36 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %151

37:                                               ; preds = %2
  %38 = load i32, i32* @USB_FS_COMPLETE, align 4
  %39 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %40 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %151

41:                                               ; preds = %2
  %42 = load i32, i32* @USB_FS_INIT, align 4
  %43 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %44 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %151

45:                                               ; preds = %2
  %46 = load i32, i32* @USB_FS_OPEN, align 4
  %47 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %48 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %151

49:                                               ; preds = %2
  %50 = load i32, i32* @USB_FS_START, align 4
  %51 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %52 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %151

53:                                               ; preds = %2
  %54 = load i32, i32* @USB_FS_STOP, align 4
  %55 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %56 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %151

57:                                               ; preds = %2
  %58 = load i32, i32* @USB_FS_UNINIT, align 4
  %59 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %60 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %151

61:                                               ; preds = %2
  %62 = load i32, i32* @USB_GET_CONFIG, align 4
  %63 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %64 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %151

65:                                               ; preds = %2
  %66 = load i32, i32* @USB_GET_DEVICEINFO, align 4
  %67 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %68 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %151

69:                                               ; preds = %2
  %70 = load i32, i32* @USB_GET_DEVICE_DESC, align 4
  %71 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %72 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %151

73:                                               ; preds = %2
  %74 = load i32, i32* @USB_GET_FULL_DESC, align 4
  %75 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %76 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %151

77:                                               ; preds = %2
  %78 = load i32, i32* @USB_GET_IFACE_DRIVER, align 4
  %79 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %80 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %151

81:                                               ; preds = %2
  %82 = load i32, i32* @USB_GET_PLUGTIME, align 4
  %83 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %84 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %151

85:                                               ; preds = %2
  %86 = load i32, i32* @USB_GET_POWER_MODE, align 4
  %87 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %88 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %151

89:                                               ; preds = %2
  %90 = load i32, i32* @USB_GET_REPORT_DESC, align 4
  %91 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %92 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %151

93:                                               ; preds = %2
  %94 = load i32, i32* @USB_GET_REPORT_ID, align 4
  %95 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %96 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %151

97:                                               ; preds = %2
  %98 = load i32, i32* @USB_GET_TEMPLATE, align 4
  %99 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %100 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %151

101:                                              ; preds = %2
  %102 = load i32, i32* @USB_IFACE_DRIVER_ACTIVE, align 4
  %103 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %104 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %151

105:                                              ; preds = %2
  %106 = load i32, i32* @USB_IFACE_DRIVER_DETACH, align 4
  %107 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %108 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %151

109:                                              ; preds = %2
  %110 = load i32, i32* @USB_QUIRK_NAME_GET, align 4
  %111 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %112 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %151

113:                                              ; preds = %2
  %114 = load i32, i32* @USB_READ_DIR, align 4
  %115 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %116 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %151

117:                                              ; preds = %2
  %118 = load i32, i32* @USB_SET_ALTINTERFACE, align 4
  %119 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %120 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %151

121:                                              ; preds = %2
  %122 = load i32, i32* @USB_SET_CONFIG, align 4
  %123 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %124 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %151

125:                                              ; preds = %2
  %126 = load i32, i32* @USB_SET_IMMED, align 4
  %127 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %128 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %151

129:                                              ; preds = %2
  %130 = load i32, i32* @USB_SET_POWER_MODE, align 4
  %131 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %132 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %151

133:                                              ; preds = %2
  %134 = load i32, i32* @USB_SET_TEMPLATE, align 4
  %135 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %136 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %151

137:                                              ; preds = %2
  %138 = load i32, i32* @USB_FS_OPEN_STREAM, align 4
  %139 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %140 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %151

141:                                              ; preds = %2
  %142 = load i32, i32* @USB_GET_DEV_PORT_PATH, align 4
  %143 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %144 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %151

145:                                              ; preds = %2
  %146 = load i32, i32* @USB_GET_POWER_USAGE, align 4
  %147 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %148 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %151

149:                                              ; preds = %2
  %150 = load i32, i32* @ENOIOCTL, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @ENOIOCTL, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.thread*, %struct.thread** %3, align 8
  %157 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %158 = bitcast %struct.linux_ioctl_args* %157 to %struct.ioctl_args*
  %159 = call i32 @sys_ioctl(%struct.thread* %156, %struct.ioctl_args* %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %155, %151
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
