; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp2_32_btX_I.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp2_32_btX_I.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp2_32_btX_I to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp2_32_btX_I(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %7 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %8 = call i32 @fetch_decode_modrm(%struct.x86emu* %7)
  %9 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %10 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %15 = call i32 @x86emu_halt_sys(%struct.x86emu* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %18 = call i32 @decode_and_fetch_long_imm8(%struct.x86emu* %17, i32* %6)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 31
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %45 [
    i32 5, label %26
    i32 6, label %32
    i32 7, label %39
  ]

26:                                               ; preds = %16
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @write_back_long(%struct.x86emu* %27, i32 %30)
  br label %45

32:                                               ; preds = %16
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @write_back_long(%struct.x86emu* %33, i32 %37)
  br label %45

39:                                               ; preds = %16
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %41, %42
  %44 = call i32 @write_back_long(%struct.x86emu* %40, i32 %43)
  br label %45

45:                                               ; preds = %16, %39, %32, %26
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @F_CF, align 4
  %50 = call i32 @CONDITIONAL_SET_FLAG(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_long_imm8(%struct.x86emu*, i32*) #1

declare dso_local i32 @write_back_long(%struct.x86emu*, i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
