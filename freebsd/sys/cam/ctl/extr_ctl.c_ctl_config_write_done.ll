; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 (%union.ctl_io.0*)* }
%union.ctl_io.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }

@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_config_write_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_4__*
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %21 = bitcast %union.ctl_io* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CTL_STATUS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CTL_STATUS_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %30 = bitcast %union.ctl_io* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CTL_STATUS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @CTL_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %28, %19
  %38 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %39 = bitcast %union.ctl_io* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %40, align 8
  %42 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %43 = bitcast %union.ctl_io* %42 to %union.ctl_io.0*
  %44 = call i32 %41(%union.ctl_io.0* %43)
  br label %68

45:                                               ; preds = %28, %11, %1
  %46 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %47 = bitcast %union.ctl_io* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %55 = bitcast %union.ctl_io* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %3, align 8
  br label %59

58:                                               ; preds = %45
  store i32* null, i32** %3, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %61 = call i32 @ctl_done(%union.ctl_io* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @M_CTL, align 4
  %67 = call i32 @free(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %37, %64, %59
  ret void
}

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
