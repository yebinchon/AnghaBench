; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_find_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_find_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data_desc = type { i32 }
%struct.scsi_find_desc_info = type { i32*, i32 }

@scsi_find_desc_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @scsi_find_desc(%struct.scsi_sense_data_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_sense_data_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_find_desc_info, align 8
  store %struct.scsi_sense_data_desc* %0, %struct.scsi_sense_data_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds %struct.scsi_find_desc_info, %struct.scsi_find_desc_info* %7, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.scsi_find_desc_info, %struct.scsi_find_desc_info* %7, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @scsi_find_desc_func, align 4
  %14 = call i32 @scsi_desc_iterate(%struct.scsi_sense_data_desc* %11, i32 %12, i32 %13, %struct.scsi_find_desc_info* %7)
  %15 = getelementptr inbounds %struct.scsi_find_desc_info, %struct.scsi_find_desc_info* %7, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  ret i32* %16
}

declare dso_local i32 @scsi_desc_iterate(%struct.scsi_sense_data_desc*, i32, i32, %struct.scsi_find_desc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
