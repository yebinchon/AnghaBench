; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_map_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_map_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i64*, i64, i32, i32, i32 (i32, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@CTL_PORT_STATUS_ONLINE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_lun_map_set(%struct.ctl_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ctl_port* %0, %struct.ctl_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %11 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %16 = call i32 @ctl_lun_map_init(%struct.ctl_port* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %25 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %22
  %31 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %32 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %39 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %44 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CTL_PORT_STATUS_ONLINE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %30
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @UINT32_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %55 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %54, i32 0, i32 4
  %56 = load i32 (i32, i64)*, i32 (i32, i64)** %55, align 8
  %57 = icmp ne i32 (i32, i64)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %60 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %59, i32 0, i32 4
  %61 = load i32 (i32, i64)*, i32 (i32, i64)** %60, align 8
  %62 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %63 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 %61(i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %69 = call i32 @ctl_isc_announce_port(%struct.ctl_port* %68)
  br label %70

70:                                               ; preds = %67, %49, %30
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %28, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ctl_lun_map_init(%struct.ctl_port*) #1

declare dso_local i32 @ctl_isc_announce_port(%struct.ctl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
