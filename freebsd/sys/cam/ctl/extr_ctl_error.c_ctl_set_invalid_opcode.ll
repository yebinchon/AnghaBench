; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_invalid_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_invalid_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }

@SSD_SCS_VALID = common dso_local global i32 0, align 4
@SSD_FIELDPTR_CMD = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SSD_ELEM_SKS = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_set_invalid_opcode(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %4 = load i32, i32* @SSD_SCS_VALID, align 4
  %5 = load i32, i32* @SSD_FIELDPTR_CMD, align 4
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %9 = call i32 @scsi_ulto2b(i32 0, i32* %8)
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %11 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %12 = load i32, i32* @SSD_ELEM_SKS, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %14 = load i32, i32* @SSD_ELEM_NONE, align 4
  %15 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %10, i32 1, i32 %11, i32 32, i32 0, i32 %12, i32 12, i32* %13, i32 %14)
  ret void
}

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
