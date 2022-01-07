; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_bitstring16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_bitstring16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32)* @common_bitstring16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_bitstring16(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %10 = call i32 @fetch_decode_modrm(%struct.x86emu* %9)
  %11 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %12 = call i32* @decode_rh_word_register(%struct.x86emu* %11)
  store i32* %12, i32** %7, align 8
  %13 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 4
  %17 = call i32 @decode_and_fetch_word_disp(%struct.x86emu* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @F_CF, align 4
  %27 = call i32 @CONDITIONAL_SET_FLAG(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %49 [
    i32 0, label %29
    i32 1, label %30
    i32 2, label %36
    i32 3, label %43
  ]

29:                                               ; preds = %2
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @write_back_word(%struct.x86emu* %31, i32 %34)
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @write_back_word(%struct.x86emu* %37, i32 %41)
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = xor i32 %45, %46
  %48 = call i32 @write_back_word(%struct.x86emu* %44, i32 %47)
  br label %49

49:                                               ; preds = %2, %43, %36, %30, %29
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32* @decode_rh_word_register(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_word_disp(%struct.x86emu*, i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @write_back_word(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
