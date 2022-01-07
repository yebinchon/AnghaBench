; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsiio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_cmd_entry = type { i32 (%struct.ctl_scsiio*)* }
%union.ctl_io = type { i32 }

@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ctl_scsiio cdb[0]=%02X\0A\00", align 1
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*)* @ctl_scsiio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_scsiio(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_cmd_entry*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %5 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %7 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @CTL_DEBUG_PRINT(i8* %12)
  %14 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %15 = call %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio* %14, i32* null)
  store %struct.ctl_cmd_entry* %15, %struct.ctl_cmd_entry** %4, align 8
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %25 = bitcast %struct.ctl_scsiio* %24 to %union.ctl_io*
  %26 = call i32 @ctl_done(%union.ctl_io* %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %28, i32 0, i32 0
  %30 = load i32 (%struct.ctl_scsiio*)*, i32 (%struct.ctl_scsiio*)** %29, align 8
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %32 = call i32 %30(%struct.ctl_scsiio* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio*, i32*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
