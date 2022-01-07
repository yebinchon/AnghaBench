; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/libvendor/extr_osm_vendor_mlx_ts.c___osm_transport_gen_dummy_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/libvendor/extr_osm_vendor_mlx_ts.c___osm_transport_gen_dummy_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.ib_mad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_get_port_info_ioctl = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@TS_IB_IOCGPORTINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__osm_transport_gen_dummy_mad(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.ib_mad, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.ib_get_port_info_ioctl, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = call i32 @memset(%struct.ib_mad* %3, i32 0, i32 44)
  %12 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 10
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = call i32 @cl_ntoh16(i32 2)
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 9
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 3
  store i32 65535, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ib_get_port_info_ioctl, %struct.ib_get_port_info_ioctl* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TS_IB_IOCGPORTINFO, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, %struct.ib_get_port_info_ioctl* %5)
  store i32 %45, i32* %6, align 4
  %46 = getelementptr inbounds %struct.ib_get_port_info_ioctl, %struct.ib_get_port_info_ioctl* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 4
  store i32 39321, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @write(i32 %53, %struct.ib_mad* %3, i32 44)
  ret void
}

declare dso_local i32 @memset(%struct.ib_mad*, i32, i32) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ib_get_port_info_ioctl*) #1

declare dso_local i32 @write(i32, %struct.ib_mad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
