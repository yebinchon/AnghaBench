; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_in_word_AX_DX.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_in_word_AX_DX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__, i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_in_word_AX_DX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_in_word_AX_DX(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %3 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %4 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %11, i32 0, i32 2
  %13 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %12, align 8
  %14 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %15 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %13(%struct.x86emu* %14, i32 %18)
  %20 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %21 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 1
  %26 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %25, align 8
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %26(%struct.x86emu* %27, i32 %31)
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
