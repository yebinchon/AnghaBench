; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_set_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@CVMX_MGMT_PORT_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_mgmt_port_state_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@CVMX_MGMT_PORT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_mgmt_port_set_mac(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (...) @__cvmx_mgmt_port_num_ports()
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @CVMX_MGMT_PORT_INVALID_PARAM, align 4
  store i32 %15, i32* %3, align 4
  br label %82

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_mgmt_port_state_ptr, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = call i32 @cvmx_spinlock_lock(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CVMX_AGL_GMX_RXX_ADR_CTL(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cvmx_write_csr(i32 %32, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM0(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 40
  %40 = and i32 %39, 255
  %41 = call i32 @cvmx_write_csr(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM1(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 32
  %46 = and i32 %45, 255
  %47 = call i32 @cvmx_write_csr(i32 %43, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM2(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = call i32 @cvmx_write_csr(i32 %49, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM3(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = call i32 @cvmx_write_csr(i32 %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM4(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = call i32 @cvmx_write_csr(i32 %61, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM5(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 0
  %70 = and i32 %69, 255
  %71 = call i32 @cvmx_write_csr(i32 %67, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM_EN(i32 %72)
  %74 = call i32 @cvmx_write_csr(i32 %73, i32 1)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = call i32 @cvmx_spinlock_unlock(i32* %79)
  %81 = load i32, i32* @CVMX_MGMT_PORT_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %16, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @__cvmx_mgmt_port_num_ports(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CTL(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM0(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM1(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM2(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM3(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM4(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM5(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM_EN(i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
