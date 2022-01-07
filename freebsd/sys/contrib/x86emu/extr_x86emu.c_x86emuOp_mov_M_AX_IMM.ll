; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_mov_M_AX_IMM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_mov_M_AX_IMM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_mov_M_AX_IMM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_mov_M_AX_IMM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %5 = call i32 @fetch_word_imm(%struct.x86emu* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @store_data_long(%struct.x86emu* %14, i32 %15, i32 %19)
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @store_data_word(%struct.x86emu* %22, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @fetch_word_imm(%struct.x86emu*) #1

declare dso_local i32 @store_data_long(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @store_data_word(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
