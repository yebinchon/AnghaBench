; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_devid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_vpd_id_descriptor = type { i32 }
%struct.scsi_vpd_device_id = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  %5 = alloca %struct.scsi_vpd_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_vpd_device_id* %0, %struct.scsi_vpd_device_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.scsi_vpd_id_descriptor* null, %struct.scsi_vpd_id_descriptor** %4, align 8
  br label %30

13:                                               ; preds = %3
  %14 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_vpd_device_id, %struct.scsi_vpd_device_id* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @scsi_2btoul(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 16
  %21 = trunc i64 %20 to i32
  %22 = call i32 @MIN(i32 %17, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_vpd_device_id, %struct.scsi_vpd_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.scsi_vpd_id_descriptor*
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid_desc(%struct.scsi_vpd_id_descriptor* %26, i32 %27, i32 %28)
  store %struct.scsi_vpd_id_descriptor* %29, %struct.scsi_vpd_id_descriptor** %4, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  ret %struct.scsi_vpd_id_descriptor* %31
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local %struct.scsi_vpd_id_descriptor* @scsi_get_devid_desc(%struct.scsi_vpd_id_descriptor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
