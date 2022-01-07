; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_termio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_termio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.linux_termio = type { i32, i32, i32, i32, i32, i32 }
%struct.linux_termios = type { i32, i32, i32, i32, i32, i32 }

@LINUX_NCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termios*, %struct.linux_termio*)* @bsd_to_linux_termio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_termio(%struct.termios* %0, %struct.linux_termio* %1) #0 {
  %3 = alloca %struct.termios*, align 8
  %4 = alloca %struct.linux_termio*, align 8
  %5 = alloca %struct.linux_termios, align 4
  store %struct.termios* %0, %struct.termios** %3, align 8
  store %struct.linux_termio* %1, %struct.linux_termio** %4, align 8
  %6 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %7 = call i32 @memset(%struct.linux_termio* %6, i32 0, i32 24)
  %8 = load %struct.termios*, %struct.termios** %3, align 8
  %9 = call i32 @bsd_to_linux_termios(%struct.termios* %8, %struct.linux_termios* %5)
  %10 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %13 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %17 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %21 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %25 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %29 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.linux_termio*, %struct.linux_termio** %4, align 8
  %31 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LINUX_NCC, align 4
  %36 = call i32 @memcpy(i32 %32, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @memset(%struct.linux_termio*, i32, i32) #1

declare dso_local i32 @bsd_to_linux_termios(%struct.termios*, %struct.linux_termios*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
