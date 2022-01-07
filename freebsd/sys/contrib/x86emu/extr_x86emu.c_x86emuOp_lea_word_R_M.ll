; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_lea_word_R_M.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_lea_word_R_M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYSMODE_PREFIX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_lea_word_R_M to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_lea_word_R_M(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = call i32 @fetch_decode_modrm(%struct.x86emu* %6)
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = call i32 @x86emu_halt_sys(%struct.x86emu* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = call i64 @decode_rl_address(%struct.x86emu* %16)
  store i64 %17, i64* %3, align 8
  %18 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %19 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SYSMODE_PREFIX_ADDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %27 = call i64* @decode_rh_long_register(%struct.x86emu* %26)
  store i64* %27, i64** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = call i64* @decode_rh_word_register(%struct.x86emu* %31)
  store i64* %32, i64** %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i64 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i64* @decode_rh_long_register(%struct.x86emu*) #1

declare dso_local i64* @decode_rh_word_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
