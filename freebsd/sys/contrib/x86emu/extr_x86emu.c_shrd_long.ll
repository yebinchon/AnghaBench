; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shrd_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shrd_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32, i32)* @shrd_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrd_long(%struct.x86emu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.x86emu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %65

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = srem i32 %15, 32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 %21, 1
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 32, %29
  %31 = shl i32 %28, %30
  %32 = or i32 %27, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @F_CF, align 4
  %35 = call i32 @CONDITIONAL_SET_FLAG(i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @F_ZF, align 4
  %40 = call i32 @CONDITIONAL_SET_FLAG(i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, -2147483648
  %43 = load i32, i32* @F_SF, align 4
  %44 = call i32 @CONDITIONAL_SET_FLAG(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @PARITY(i32 %46)
  %48 = load i32, i32* @F_PF, align 4
  %49 = call i32 @CONDITIONAL_SET_FLAG(i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %14
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %19
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = lshr i32 %56, 30
  %58 = call i32 @XOR2(i32 %57)
  %59 = load i32, i32* @F_OF, align 4
  %60 = call i32 @CONDITIONAL_SET_FLAG(i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @F_OF, align 4
  %63 = call i32 @CLEAR_FLAG(i32 %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %76

65:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %66 = load i32, i32* @F_CF, align 4
  %67 = call i32 @CLEAR_FLAG(i32 %66)
  %68 = load i32, i32* @F_OF, align 4
  %69 = call i32 @CLEAR_FLAG(i32 %68)
  %70 = load i32, i32* @F_ZF, align 4
  %71 = call i32 @SET_FLAG(i32 %70)
  %72 = load i32, i32* @F_SF, align 4
  %73 = call i32 @CLEAR_FLAG(i32 %72)
  %74 = load i32, i32* @F_PF, align 4
  %75 = call i32 @CLEAR_FLAG(i32 %74)
  br label %76

76:                                               ; preds = %65, %64
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
