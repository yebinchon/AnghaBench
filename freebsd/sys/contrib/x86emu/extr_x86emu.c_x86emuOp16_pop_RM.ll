; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_pop_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_pop_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp16_pop_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp16_pop_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = call i32 @fetch_decode_modrm(%struct.x86emu* %6)
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = call i32 @decode_rl_address(%struct.x86emu* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %16 = call i32 @pop_word(%struct.x86emu* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @store_data_word(%struct.x86emu* %17, i32 %18, i32 %19)
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = call i32* @decode_rl_word_register(%struct.x86emu* %22)
  store i32* %23, i32** %5, align 8
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = call i32 @pop_word(%struct.x86emu* %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @pop_word(%struct.x86emu*) #1

declare dso_local i32 @store_data_word(%struct.x86emu*, i32, i32) #1

declare dso_local i32* @decode_rl_word_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
