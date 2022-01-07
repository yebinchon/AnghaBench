; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_termio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_termio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_termio = type { i32, i32, i32, i32, i32 }
%struct.termios = type { i32 }
%struct.linux_termios = type { i32*, i32, i32, i32, i32 }

@LINUX_NCC = common dso_local global i32 0, align 4
@LINUX_NCCS = common dso_local global i32 0, align 4
@LINUX_POSIX_VDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_termio*, %struct.termios*)* @linux_to_bsd_termio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_to_bsd_termio(%struct.linux_termio* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.linux_termio*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.linux_termios, align 8
  %6 = alloca i32, align 4
  store %struct.linux_termio* %0, %struct.linux_termio** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.linux_termio*, %struct.linux_termio** %3, align 8
  %8 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.linux_termio*, %struct.linux_termio** %3, align 8
  %12 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.linux_termio*, %struct.linux_termio** %3, align 8
  %16 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.linux_termio*, %struct.linux_termio** %3, align 8
  %20 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @LINUX_NCC, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @LINUX_NCCS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* @LINUX_POSIX_VDISABLE, align 4
  %30 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %24

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.linux_termio*, %struct.linux_termio** %3, align 8
  %42 = getelementptr inbounds %struct.linux_termio, %struct.linux_termio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LINUX_NCC, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %43, i32 %44)
  %46 = load %struct.termios*, %struct.termios** %4, align 8
  %47 = call i32 @linux_to_bsd_termios(%struct.linux_termios* %5, %struct.termios* %46)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @linux_to_bsd_termios(%struct.linux_termios*, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
