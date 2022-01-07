; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_config_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@SGLS_SERVICE_ACTION = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_config_read(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_3__*
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %29 [
    i32 128, label %10
  ]

10:                                               ; preds = %1
  %11 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %12 = bitcast %union.ctl_io* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SGLS_SERVICE_ACTION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %21 = call i32 @ctl_backend_ramdisk_gls(%union.ctl_io* %20)
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %10
  %23 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_3__*
  %25 = call i32 @ctl_set_invalid_field(%struct.TYPE_3__* %24, i32 1, i32 1, i32 1, i32 1, i32 4)
  %26 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %27 = call i32 @ctl_config_read_done(%union.ctl_io* %26)
  %28 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %31 = bitcast %union.ctl_io* %30 to %struct.TYPE_3__*
  %32 = call i32 @ctl_set_invalid_opcode(%struct.TYPE_3__* %31)
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = call i32 @ctl_config_read_done(%union.ctl_io* %33)
  %35 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %22, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ctl_backend_ramdisk_gls(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_read_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
