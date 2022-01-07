; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_probe_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_probe_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__cvmx_debug_mode_exception_ignore = common dso_local global i32 0, align 4
@__cvmx_debug_mode_exception_occured = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cvmx_debug_probe_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_debug_probe_load(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 1, i32* @__cvmx_debug_mode_exception_ignore, align 4
  store i64 0, i64* @__cvmx_debug_mode_exception_occured, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8 asm sideeffect ".set push\09\09\0A\09.set noreorder\09\0A\09nop\09\09\09\0A\09lbu $0, $1\09\09\0A\09nop\09\09\09\0A\09.set pop", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i8* %9) #1, !srcloc !2
  store i8 %10, i8* %7, align 1
  %11 = load i64, i64* @__cvmx_debug_mode_exception_occured, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  store i32 0, i32* @__cvmx_debug_mode_exception_ignore, align 4
  store i64 0, i64* @__cvmx_debug_mode_exception_occured, align 8
  %14 = load i8, i8* %7, align 1
  %15 = load i8*, i8** %4, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %6, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 525, i32 539, i32 583, i32 618, i32 659, i32 694}
