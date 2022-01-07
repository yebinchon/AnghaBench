; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%union.ctl_io.0*)*, i32* }
%union.ctl_io.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }

@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_config_read_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_4__*
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CTL_STATUS_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CTL_STATUS_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %11
  %21 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CTL_STATUS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CTL_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %20, %1
  %30 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %31 = bitcast %union.ctl_io* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %39 = bitcast %union.ctl_io* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %3, align 8
  br label %43

42:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %45 = call i32 @ctl_done(%union.ctl_io* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @M_CTL, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %72

53:                                               ; preds = %20, %11
  %54 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %55 = bitcast %union.ctl_io* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %63 = bitcast %union.ctl_io* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %64, align 8
  %66 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %67 = bitcast %union.ctl_io* %66 to %union.ctl_io.0*
  %68 = call i32 %65(%union.ctl_io.0* %67)
  br label %72

69:                                               ; preds = %53
  %70 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %71 = call i32 @ctl_datamove(%union.ctl_io* %70)
  br label %72

72:                                               ; preds = %69, %61, %52
  ret void
}

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
