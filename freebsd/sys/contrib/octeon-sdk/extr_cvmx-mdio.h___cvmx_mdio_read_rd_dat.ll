; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mdio.h___cvmx_mdio_read_rd_dat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mdio.h___cvmx_mdio_read_rd_dat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CVMX_MDIO_TIMEOUT = common dso_local global i64 0, align 8
@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32)* @__cvmx_mdio_read_rd_dat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @__cvmx_mdio_read_rd_dat(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @cvmx_get_cycle()
  %6 = load i64, i64* @CVMX_MDIO_TIMEOUT, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %9 = call i32 @cvmx_clock_get_rate(i32 %8)
  %10 = mul nsw i32 %7, %9
  %11 = sdiv i32 %10, 1000000
  %12 = add nsw i32 %5, %11
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = call i32 @cvmx_wait(i32 1000)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_SMIX_RD_DAT(i32 %15)
  %17 = call i32 @cvmx_read_csr(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  br label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (...) @cvmx_get_cycle()
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %13, label %30

30:                                               ; preds = %28
  %31 = bitcast %struct.TYPE_5__* %2 to { i32, i64 }*
  %32 = load { i32, i64 }, { i32, i64 }* %31, align 8
  ret { i32, i64 } %32
}

declare dso_local i32 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SMIX_RD_DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
