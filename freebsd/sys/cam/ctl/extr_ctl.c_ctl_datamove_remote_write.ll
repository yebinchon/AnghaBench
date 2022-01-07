; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { void (%union.ctl_io*)* }

@ctl_datamove_remote_dm_write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_datamove_remote_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_datamove_remote_write(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32, align 4
  %4 = alloca void (%union.ctl_io*)*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %5 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %6 = call i32 @ctl_datamove_remote_sgl_setup(%union.ctl_io* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %12 = call i64 @CTL_LSGL(%union.ctl_io* %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %15 = bitcast %union.ctl_io* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32* %13, i32** %16, align 8
  %17 = load i32, i32* @ctl_datamove_remote_dm_write_cb, align 4
  %18 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %22 = call %struct.TYPE_4__* @CTL_PORT(%union.ctl_io* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load void (%union.ctl_io*)*, void (%union.ctl_io*)** %23, align 8
  store void (%union.ctl_io*)* %24, void (%union.ctl_io*)** %4, align 8
  %25 = load void (%union.ctl_io*)*, void (%union.ctl_io*)** %4, align 8
  %26 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  call void %25(%union.ctl_io* %26)
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ctl_datamove_remote_sgl_setup(%union.ctl_io*) #1

declare dso_local i64 @CTL_LSGL(%union.ctl_io*) #1

declare dso_local %struct.TYPE_4__* @CTL_PORT(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
