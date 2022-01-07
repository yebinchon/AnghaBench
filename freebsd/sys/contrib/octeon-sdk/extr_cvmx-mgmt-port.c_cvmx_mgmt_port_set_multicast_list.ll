; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@cvmx_mgmt_port_state_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@CVMX_IFF_ALLMULTI = common dso_local global i32 0, align 4
@CVMX_IFF_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_mgmt_port_set_multicast_list(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (...) @__cvmx_mgmt_port_num_ports()
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %82

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_mgmt_port_state_ptr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @cvmx_spinlock_lock(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CVMX_AGL_GMX_RXX_ADR_CTL(i32 %22)
  %24 = call i32 @cvmx_read_csr(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %14
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CVMX_IFF_ALLMULTI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CVMX_IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  br label %49

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CVMX_IFF_PROMISC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  br label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @CVMX_AGL_GMX_RXX_ADR_CTL(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cvmx_write_csr(i32 %62, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CVMX_IFF_PROMISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM_EN(i32 %71)
  %73 = call i32 @cvmx_write_csr(i32 %72, i32 0)
  br label %78

74:                                               ; preds = %60
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @CVMX_AGL_GMX_RXX_ADR_CAM_EN(i32 %75)
  %77 = call i32 @cvmx_write_csr(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @cvmx_spinlock_unlock(i32* %80)
  br label %82

82:                                               ; preds = %78, %13
  ret void
}

declare dso_local i32 @__cvmx_mgmt_port_num_ports(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_AGL_GMX_RXX_ADR_CAM_EN(i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
