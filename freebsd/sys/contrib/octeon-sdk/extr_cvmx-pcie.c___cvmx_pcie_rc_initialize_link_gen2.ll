; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_link_gen2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_link_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_pcie_rc_initialize_link_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pcie_rc_initialize_link_gen2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CVMX_PEMX_CTL_STATUS(i32 %8)
  %10 = call i32 @cvmx_read_csr(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @CVMX_PEMX_CTL_STATUS(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cvmx_write_csr(i32 %15, i32 %17)
  %19 = call i64 (...) @cvmx_get_cycle()
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %45, %1
  %21 = call i64 (...) @cvmx_get_cycle()
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %25 = call i64 @cvmx_clock_get_rate(i32 %24)
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %75

28:                                               ; preds = %20
  %29 = call i32 @cvmx_wait(i32 10000)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CVMX_PCIERCX_CFG032(i32 %31)
  %33 = call i8* @cvmx_pcie_cfgx_read(i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ true, %35 ], [ %44, %40 ]
  br i1 %46, label %20, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @CVMX_PCIERCX_CFG448(i32 %49)
  %51 = call i8* @cvmx_pcie_cfgx_read(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %68 [
    i32 1, label %56
    i32 2, label %59
    i32 4, label %62
    i32 8, label %65
  ]

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 1677, i32* %58, align 8
  br label %68

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 867, i32* %61, align 8
  br label %68

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 462, i32* %64, align 8
  br label %68

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 258, i32* %67, align 8
  br label %68

68:                                               ; preds = %47, %65, %62, %59, %56
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CVMX_PCIERCX_CFG448(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @cvmx_pcie_cfgx_write(i32 %69, i32 %71, i8* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %27
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PEMX_CTL_STATUS(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i64 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG448(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
