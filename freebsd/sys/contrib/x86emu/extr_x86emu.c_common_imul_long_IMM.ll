; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_imul_long_IMM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_imul_long_IMM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32)* @common_imul_long_IMM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_imul_long_IMM(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %11 = call i32 @fetch_decode_modrm(%struct.x86emu* %10)
  %12 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %13 = call i64* @decode_rh_long_register(%struct.x86emu* %12)
  store i64* %13, i64** %6, align 8
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %20 = call i64 @decode_rl_address(%struct.x86emu* %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @fetch_data_long(%struct.x86emu* %21, i64 %22)
  store i64 %23, i64* %7, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %26 = call i64* @decode_rl_long_register(%struct.x86emu* %25)
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %33 = call i64 @fetch_byte_imm(%struct.x86emu* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %37 = call i32 @fetch_long_imm(%struct.x86emu* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ugt i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @F_CF, align 4
  %47 = call i32 @SET_FLAG(i32 %46)
  %48 = load i32, i32* @F_OF, align 4
  %49 = call i32 @SET_FLAG(i32 %48)
  br label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @F_CF, align 4
  %52 = call i32 @CLEAR_FLAG(i32 %51)
  %53 = load i32, i32* @F_OF, align 4
  %54 = call i32 @CLEAR_FLAG(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i64* @decode_rh_long_register(%struct.x86emu*) #1

declare dso_local i64 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i64 @fetch_data_long(%struct.x86emu*, i64) #1

declare dso_local i64* @decode_rl_long_register(%struct.x86emu*) #1

declare dso_local i64 @fetch_byte_imm(%struct.x86emu*) #1

declare dso_local i32 @fetch_long_imm(%struct.x86emu*) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
