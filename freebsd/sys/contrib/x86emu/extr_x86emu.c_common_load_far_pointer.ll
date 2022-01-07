; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_load_far_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_load_far_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32*)* @common_load_far_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_load_far_pointer(%struct.x86emu* %0, i32* %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %8 = call i32 @fetch_decode_modrm(%struct.x86emu* %7)
  %9 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %10 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = call i32 @x86emu_halt_sys(%struct.x86emu* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %18 = call i32* @decode_rh_word_register(%struct.x86emu* %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %20 = call i64 @decode_rl_address(%struct.x86emu* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @fetch_data_word(%struct.x86emu* %21, i64 %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 2
  %28 = call i32 @fetch_data_word(%struct.x86emu* %25, i64 %27)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32* @decode_rh_word_register(%struct.x86emu*) #1

declare dso_local i64 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_word(%struct.x86emu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
