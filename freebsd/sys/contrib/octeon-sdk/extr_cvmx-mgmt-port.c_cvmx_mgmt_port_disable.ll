; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CVMX_MGMT_PORT_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_mgmt_port_state_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@CVMX_MGMT_PORT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_mgmt_port_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (...) @__cvmx_mgmt_port_num_ports()
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @CVMX_MGMT_PORT_INVALID_PARAM, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_mgmt_port_state_ptr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @cvmx_spinlock_lock(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CVMX_AGL_GMX_PRTX_CFG(i32 %22)
  %24 = call i32 @cvmx_read_csr(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @CVMX_AGL_GMX_PRTX_CFG(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cvmx_write_csr(i32 %29, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @cvmx_spinlock_unlock(i32* %34)
  %36 = load i32, i32* @CVMX_MGMT_PORT_SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %14, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @__cvmx_mgmt_port_num_ports(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_PRTX_CFG(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
