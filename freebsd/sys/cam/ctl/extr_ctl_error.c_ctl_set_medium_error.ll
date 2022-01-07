; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_medium_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_medium_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }

@SSD_KEY_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_set_medium_error(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  %10 = load i32, i32* @SSD_ELEM_NONE, align 4
  %11 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %8, i32 1, i32 %9, i32 17, i32 0, i32 %10)
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %14 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  %15 = load i32, i32* @SSD_ELEM_NONE, align 4
  %16 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %13, i32 1, i32 %14, i32 12, i32 2, i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
