; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_all.c_nvme_print_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_all.c_nvme_print_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller_data = type { i32, i32, i32 }
%struct.nvme_namespace_data = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_print_ident(%struct.nvme_controller_data* %0, %struct.nvme_namespace_data* %1, %struct.sbuf* %2) #0 {
  %4 = alloca %struct.nvme_controller_data*, align 8
  %5 = alloca %struct.nvme_namespace_data*, align 8
  %6 = alloca %struct.sbuf*, align 8
  store %struct.nvme_controller_data* %0, %struct.nvme_controller_data** %4, align 8
  store %struct.nvme_namespace_data* %1, %struct.nvme_namespace_data** %5, align 8
  store %struct.sbuf* %2, %struct.sbuf** %6, align 8
  %7 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %8 = call i32 @sbuf_printf(%struct.sbuf* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %10 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cam_strvis_sbuf(%struct.sbuf* %9, i32 %12, i32 4, i32 0)
  %14 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %15 = call i32 @sbuf_printf(%struct.sbuf* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %17 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cam_strvis_sbuf(%struct.sbuf* %16, i32 %19, i32 4, i32 0)
  %21 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %22 = call i32 @sbuf_printf(%struct.sbuf* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %24 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cam_strvis_sbuf(%struct.sbuf* %23, i32 %26, i32 4, i32 0)
  %28 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %29 = call i32 @sbuf_printf(%struct.sbuf* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @cam_strvis_sbuf(%struct.sbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
