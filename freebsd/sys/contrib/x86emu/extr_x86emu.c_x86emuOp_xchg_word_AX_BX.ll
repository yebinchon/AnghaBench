; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_xchg_word_AX_BX.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_xchg_word_AX_BX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_xchg_word_AX_BX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_xchg_word_AX_BX(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %5 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %21 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 %23, i64* %26, align 8
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  %32 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %33 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %27, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
