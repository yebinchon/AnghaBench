; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_done_ws.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_done_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_io = type { %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_io*)* @ctl_be_block_cw_done_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cw_done_ws(%struct.ctl_be_block_io* %0) #0 {
  %2 = alloca %struct.ctl_be_block_io*, align 8
  %3 = alloca %union.ctl_io*, align 8
  store %struct.ctl_be_block_io* %0, %struct.ctl_be_block_io** %2, align 8
  %4 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %4, i32 0, i32 0
  %6 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  store %union.ctl_io* %6, %union.ctl_io** %3, align 8
  %7 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %8 = call i32 @ctl_free_beio(%struct.ctl_be_block_io* %7)
  %9 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %10 = bitcast %union.ctl_io* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %18 = bitcast %union.ctl_io* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CTL_STATUS_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CTL_STATUS_NONE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %27 = bitcast %union.ctl_io* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CTL_STATUS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @CTL_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %1
  %35 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %36 = call i32 @ctl_config_write_done(%union.ctl_io* %35)
  br label %40

37:                                               ; preds = %25, %16
  %38 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %39 = call i32 @ctl_be_block_config_write(%union.ctl_io* %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @ctl_free_beio(%struct.ctl_be_block_io*) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_config_write(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
