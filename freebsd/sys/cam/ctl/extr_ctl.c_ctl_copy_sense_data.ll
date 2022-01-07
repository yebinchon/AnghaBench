; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_copy_sense_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_copy_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.ctl_io = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_ha_msg*, %union.ctl_io*)* @ctl_copy_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_copy_sense_data(%union.ctl_ha_msg* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %union.ctl_ha_msg*, align 8
  %4 = alloca %union.ctl_io*, align 8
  store %union.ctl_ha_msg* %0, %union.ctl_ha_msg** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %5 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %6 = bitcast %union.ctl_io* %5 to %struct.TYPE_8__*
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %3, align 8
  %9 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_7__*
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %3, align 8
  %12 = bitcast %union.ctl_ha_msg* %11 to %struct.TYPE_7__*
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32* %7, i32* %10, i32 %14)
  %16 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %3, align 8
  %17 = bitcast %union.ctl_ha_msg* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %21 = bitcast %union.ctl_io* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %3, align 8
  %24 = bitcast %union.ctl_ha_msg* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %3, align 8
  %31 = bitcast %union.ctl_ha_msg* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %35 = bitcast %union.ctl_io* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
