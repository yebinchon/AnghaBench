; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_data_submit_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_data_submit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%union.ctl_io.0*)* }
%union.ctl_io.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }

@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_data_submit_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %3 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %4 = bitcast %union.ctl_io* %3 to %struct.TYPE_4__*
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %12 = bitcast %union.ctl_io* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %10
  %19 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %20 = bitcast %union.ctl_io* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CTL_STATUS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CTL_STATUS_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %29 = bitcast %union.ctl_io* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CTL_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CTL_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27, %18
  %37 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %38 = bitcast %union.ctl_io* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %39, align 8
  %41 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %42 = bitcast %union.ctl_io* %41 to %union.ctl_io.0*
  %43 = call i32 %40(%union.ctl_io.0* %42)
  br label %47

44:                                               ; preds = %27, %10, %1
  %45 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %46 = call i32 @ctl_done(%union.ctl_io* %45)
  br label %47

47:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
