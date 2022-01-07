; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ctl_fe_ioctl_params = type { i32, i32, i32 }

@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@CTL_IOCTL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @cfi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_fe_ioctl_params*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_4__*
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_fe_ioctl_params*
  store %struct.ctl_fe_ioctl_params* %12, %struct.ctl_fe_ioctl_params** %3, align 8
  %13 = load %struct.ctl_fe_ioctl_params*, %struct.ctl_fe_ioctl_params** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* @CTL_IOCTL_DONE, align 4
  %17 = load %struct.ctl_fe_ioctl_params*, %struct.ctl_fe_ioctl_params** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ctl_fe_ioctl_params*, %struct.ctl_fe_ioctl_params** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %19, i32 0, i32 1
  %21 = call i32 @cv_broadcast(i32* %20)
  %22 = load %struct.ctl_fe_ioctl_params*, %struct.ctl_fe_ioctl_params** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %22, i32 0, i32 0
  %24 = call i32 @mtx_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
