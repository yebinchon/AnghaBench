; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_map_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_map_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i64*, i64, i32, i32, i32 (i32, i64)* }

@UINT32_MAX = common dso_local global i64 0, align 8
@CTL_PORT_STATUS_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_lun_map_unset(%struct.ctl_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ctl_port* %0, %struct.ctl_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %8 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %11
  %19 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %20 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* @UINT32_MAX, align 8
  %26 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %27 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %25, i64* %30, align 8
  %31 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %32 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CTL_PORT_STATUS_ONLINE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %18
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @UINT32_MAX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %43 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %42, i32 0, i32 4
  %44 = load i32 (i32, i64)*, i32 (i32, i64)** %43, align 8
  %45 = icmp ne i32 (i32, i64)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %48 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %47, i32 0, i32 4
  %49 = load i32 (i32, i64)*, i32 (i32, i64)** %48, align 8
  %50 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %51 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 %49(i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %57 = call i32 @ctl_isc_announce_port(%struct.ctl_port* %56)
  br label %58

58:                                               ; preds = %55, %37, %18
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ctl_isc_announce_port(%struct.ctl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
