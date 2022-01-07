; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_opcF7_word_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_opcF7_word_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp16_opcF7_word_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp16_opcF7_word_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = call i32 @fetch_decode_modrm(%struct.x86emu* %6)
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = call i32 @x86emu_halt_sys(%struct.x86emu* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %27 = call i32 @decode_rl_address(%struct.x86emu* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = call i32 @fetch_word_imm(%struct.x86emu* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @fetch_data_word(%struct.x86emu* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %20
  %34 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %35 = call i32 @fetch_word_imm(%struct.x86emu* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = call i32* @decode_rl_word_register(%struct.x86emu* %36)
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @test_word(%struct.x86emu* %40, i32 %41, i32 %42)
  br label %79

44:                                               ; preds = %15
  %45 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %46 = call i32 @decode_and_fetch_word(%struct.x86emu* %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %48 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %79 [
    i32 2, label %50
    i32 3, label %56
    i32 4, label %63
    i32 5, label %67
    i32 6, label %71
    i32 7, label %75
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = xor i32 %51, -1
  store i32 %52, i32* %3, align 4
  %53 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @write_back_word(%struct.x86emu* %53, i32 %54)
  br label %79

56:                                               ; preds = %44
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @neg_word(%struct.x86emu* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @write_back_word(%struct.x86emu* %60, i32 %61)
  br label %79

63:                                               ; preds = %44
  %64 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @mul_word(%struct.x86emu* %64, i32 %65)
  br label %79

67:                                               ; preds = %44
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @imul_word(%struct.x86emu* %68, i32 %69)
  br label %79

71:                                               ; preds = %44
  %72 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @div_word(%struct.x86emu* %72, i32 %73)
  br label %79

75:                                               ; preds = %44
  %76 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @idiv_word(%struct.x86emu* %76, i32 %77)
  br label %79

79:                                               ; preds = %39, %44, %75, %71, %67, %63, %56, %50
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_word_imm(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i32* @decode_rl_word_register(%struct.x86emu*) #1

declare dso_local i32 @test_word(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @decode_and_fetch_word(%struct.x86emu*) #1

declare dso_local i32 @write_back_word(%struct.x86emu*, i32) #1

declare dso_local i32 @neg_word(%struct.x86emu*, i32) #1

declare dso_local i32 @mul_word(%struct.x86emu*, i32) #1

declare dso_local i32 @imul_word(%struct.x86emu*, i32) #1

declare dso_local i32 @div_word(%struct.x86emu*, i32) #1

declare dso_local i32 @idiv_word(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
