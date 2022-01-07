; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcF6_byte_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcF6_byte_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_opcF6_byte_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_opcF6_byte_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %5 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %6 = call i32 @fetch_decode_modrm(%struct.x86emu* %5)
  %7 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %8 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = call i32 @x86emu_halt_sys(%struct.x86emu* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %21 = call i32 @decode_and_fetch_byte_imm8(%struct.x86emu* %20, i32* %4)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @test_byte(%struct.x86emu* %22, i32 %23, i32 %24)
  br label %61

26:                                               ; preds = %14
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = call i32 @decode_and_fetch_byte(%struct.x86emu* %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %30 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %61 [
    i32 2, label %32
    i32 3, label %38
    i32 4, label %45
    i32 5, label %49
    i32 6, label %53
    i32 7, label %57
  ]

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = xor i32 %33, -1
  store i32 %34, i32* %3, align 4
  %35 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @write_back_byte(%struct.x86emu* %35, i32 %36)
  br label %61

38:                                               ; preds = %26
  %39 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @neg_byte(%struct.x86emu* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @write_back_byte(%struct.x86emu* %42, i32 %43)
  br label %61

45:                                               ; preds = %26
  %46 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @mul_byte(%struct.x86emu* %46, i32 %47)
  br label %61

49:                                               ; preds = %26
  %50 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @imul_byte(%struct.x86emu* %50, i32 %51)
  br label %61

53:                                               ; preds = %26
  %54 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @div_byte(%struct.x86emu* %54, i32 %55)
  br label %61

57:                                               ; preds = %26
  %58 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @idiv_byte(%struct.x86emu* %58, i32 %59)
  br label %61

61:                                               ; preds = %19, %26, %57, %53, %49, %45, %38, %32
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_byte_imm8(%struct.x86emu*, i32*) #1

declare dso_local i32 @test_byte(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @decode_and_fetch_byte(%struct.x86emu*) #1

declare dso_local i32 @write_back_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @neg_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @mul_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @imul_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @div_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @idiv_byte(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
