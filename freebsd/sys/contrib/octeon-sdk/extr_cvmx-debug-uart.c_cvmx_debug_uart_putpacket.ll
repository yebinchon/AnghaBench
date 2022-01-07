; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug-uart.c_cvmx_debug_uart_putpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug-uart.c_cvmx_debug_uart_putpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvmx_debug_uart_lock = common dso_local global i32 0, align 4
@cvmx_debug_uart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cvmx_debug_uart_putpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_debug_uart_putpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8], align 1
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %5, align 8
  store i8 0, i8* %4, align 1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %8

27:                                               ; preds = %8
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %29 = load i8, i8* %4, align 1
  %30 = call i32 @cvmx_debug_uart_strhex(i8* %28, i8 zeroext %29)
  %31 = call i32 @cvmx_spinlock_lock(i32* @cvmx_debug_uart_lock)
  %32 = load i32, i32* @cvmx_debug_uart, align 4
  %33 = call i32 @cvmx_uart_write_byte(i32 %32, i8 signext 36)
  %34 = load i32, i32* @cvmx_debug_uart, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @cvmx_uart_write_string(i32 %34, i8* %35)
  %37 = load i32, i32* @cvmx_debug_uart, align 4
  %38 = call i32 @cvmx_uart_write_byte(i32 %37, i8 signext 35)
  %39 = load i32, i32* @cvmx_debug_uart, align 4
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %41 = call i32 @cvmx_uart_write_string(i32 %39, i8* %40)
  %42 = call i32 @cvmx_spinlock_unlock(i32* @cvmx_debug_uart_lock)
  ret i32 0
}

declare dso_local i32 @cvmx_debug_uart_strhex(i8*, i8 zeroext) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_uart_write_byte(i32, i8 signext) #1

declare dso_local i32 @cvmx_uart_write_string(i32, i8*) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
