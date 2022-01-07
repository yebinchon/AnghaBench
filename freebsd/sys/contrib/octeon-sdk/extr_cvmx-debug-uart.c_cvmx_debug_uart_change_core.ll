; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug-uart.c_cvmx_debug_uart_change_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug-uart.c_cvmx_debug_uart_change_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cvmx_debug_uart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cvmx_debug_uart_change_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_debug_uart_change_core(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %6, 2
  %8 = call i32 @CVMX_CIU_INTX_EN0(i32 %7)
  %9 = call i8* @cvmx_read_csr(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @cvmx_debug_uart, align 4
  %12 = shl i32 1, %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  %19 = call i32 @CVMX_CIU_INTX_EN0(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @cvmx_write_csr(i32 %19, i8* %21)
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @CVMX_CIU_INTX_EN0(i32 %24)
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @cvmx_debug_uart, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @CVMX_CIU_INTX_EN0(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @cvmx_write_csr(i32 %37, i8* %39)
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
