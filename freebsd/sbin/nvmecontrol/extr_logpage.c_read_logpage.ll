; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_read_logpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_read_logpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i8*, i8*, i8*, i32 }
%struct.nvme_error_information_entry = type { i32 }
%struct.nvme_health_information_page = type { i32 }
%struct.nvme_firmware_page = type { i32 }
%struct.nvme_ns_list = type { i32 }
%struct.nvme_command_effects_page = type { i32 }
%struct.nvme_res_notification_page = type { i32 }
%struct.nvme_sanitize_status_page = type { i32 }
%struct.intel_log_temp_stats = type { i32 }

@NVME_OPC_GET_LOG_PAGE = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"get log page request failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"get log page request returned error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_logpage(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nvme_pt_command, align 8
  %18 = alloca %struct.nvme_error_information_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = sub i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %21, align 4
  %27 = call i32 @memset(%struct.nvme_pt_command* %17, i32 0, i32 80)
  %28 = load i32, i32* @NVME_OPC_GET_LOG_PAGE, align 4
  %29 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @htole32(i32 %31)
  %33 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %21, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 %37, 15
  %39 = or i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @htole32(i32 %44)
  %46 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %21, align 4
  %51 = ashr i32 %50, 16
  %52 = or i32 %49, %51
  %53 = call i8* @htole32(i32 %52)
  %54 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %16, align 4
  %65 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %69 = call i64 @ioctl(i32 %67, i32 %68, %struct.nvme_pt_command* %17)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %8
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %8
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %123 [
    i32 132, label %75
    i32 130, label %95
    i32 131, label %99
    i32 134, label %103
    i32 133, label %107
    i32 129, label %111
    i32 128, label %115
    i32 135, label %119
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** %15, align 8
  %77 = bitcast i8* %76 to %struct.nvme_error_information_entry*
  store %struct.nvme_error_information_entry* %77, %struct.nvme_error_information_entry** %18, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %82

82:                                               ; preds = %91, %75
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.nvme_error_information_entry*, %struct.nvme_error_information_entry** %18, align 8
  %88 = getelementptr inbounds %struct.nvme_error_information_entry, %struct.nvme_error_information_entry* %87, i32 1
  store %struct.nvme_error_information_entry* %88, %struct.nvme_error_information_entry** %18, align 8
  %89 = ptrtoint %struct.nvme_error_information_entry* %87 to i32
  %90 = call i32 @nvme_error_information_entry_swapbytes(i32 %89)
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %82

94:                                               ; preds = %82
  br label %124

95:                                               ; preds = %73
  %96 = load i8*, i8** %15, align 8
  %97 = bitcast i8* %96 to %struct.nvme_health_information_page*
  %98 = call i32 @nvme_health_information_page_swapbytes(%struct.nvme_health_information_page* %97)
  br label %124

99:                                               ; preds = %73
  %100 = load i8*, i8** %15, align 8
  %101 = bitcast i8* %100 to %struct.nvme_firmware_page*
  %102 = call i32 @nvme_firmware_page_swapbytes(%struct.nvme_firmware_page* %101)
  br label %124

103:                                              ; preds = %73
  %104 = load i8*, i8** %15, align 8
  %105 = bitcast i8* %104 to %struct.nvme_ns_list*
  %106 = call i32 @nvme_ns_list_swapbytes(%struct.nvme_ns_list* %105)
  br label %124

107:                                              ; preds = %73
  %108 = load i8*, i8** %15, align 8
  %109 = bitcast i8* %108 to %struct.nvme_command_effects_page*
  %110 = call i32 @nvme_command_effects_page_swapbytes(%struct.nvme_command_effects_page* %109)
  br label %124

111:                                              ; preds = %73
  %112 = load i8*, i8** %15, align 8
  %113 = bitcast i8* %112 to %struct.nvme_res_notification_page*
  %114 = call i32 @nvme_res_notification_page_swapbytes(%struct.nvme_res_notification_page* %113)
  br label %124

115:                                              ; preds = %73
  %116 = load i8*, i8** %15, align 8
  %117 = bitcast i8* %116 to %struct.nvme_sanitize_status_page*
  %118 = call i32 @nvme_sanitize_status_page_swapbytes(%struct.nvme_sanitize_status_page* %117)
  br label %124

119:                                              ; preds = %73
  %120 = load i8*, i8** %15, align 8
  %121 = bitcast i8* %120 to %struct.intel_log_temp_stats*
  %122 = call i32 @intel_log_temp_stats_swapbytes(%struct.intel_log_temp_stats* %121)
  br label %124

123:                                              ; preds = %73
  br label %124

124:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %94
  %125 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %17, i32 0, i32 2
  %126 = call i64 @nvme_completion_is_error(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @nvme_error_information_entry_swapbytes(i32) #1

declare dso_local i32 @nvme_health_information_page_swapbytes(%struct.nvme_health_information_page*) #1

declare dso_local i32 @nvme_firmware_page_swapbytes(%struct.nvme_firmware_page*) #1

declare dso_local i32 @nvme_ns_list_swapbytes(%struct.nvme_ns_list*) #1

declare dso_local i32 @nvme_command_effects_page_swapbytes(%struct.nvme_command_effects_page*) #1

declare dso_local i32 @nvme_res_notification_page_swapbytes(%struct.nvme_res_notification_page*) #1

declare dso_local i32 @nvme_sanitize_status_page_swapbytes(%struct.nvme_sanitize_status_page*) #1

declare dso_local i32 @intel_log_temp_stats_swapbytes(%struct.intel_log_temp_stats*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
