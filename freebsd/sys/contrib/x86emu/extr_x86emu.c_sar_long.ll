; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sar_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sar_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @sar_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sar_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, -2147483648
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = srem i32 %14, 32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 32, %23
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @F_CF, align 4
  %39 = call i32 @CONDITIONAL_SET_FLAG(i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @F_ZF, align 4
  %52 = call i32 @CONDITIONAL_SET_FLAG(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, -2147483648
  %55 = load i32, i32* @F_SF, align 4
  %56 = call i32 @CONDITIONAL_SET_FLAG(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @PARITY(i32 %58)
  %60 = load i32, i32* @F_PF, align 4
  %61 = call i32 @CONDITIONAL_SET_FLAG(i32 %59, i32 %60)
  br label %88

62:                                               ; preds = %19, %3
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 32
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  store i32 -1, i32* %8, align 4
  %69 = load i32, i32* @F_CF, align 4
  %70 = call i32 @SET_FLAG(i32 %69)
  %71 = load i32, i32* @F_ZF, align 4
  %72 = call i32 @CLEAR_FLAG(i32 %71)
  %73 = load i32, i32* @F_SF, align 4
  %74 = call i32 @SET_FLAG(i32 %73)
  %75 = load i32, i32* @F_PF, align 4
  %76 = call i32 @SET_FLAG(i32 %75)
  br label %86

77:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  %78 = load i32, i32* @F_CF, align 4
  %79 = call i32 @CLEAR_FLAG(i32 %78)
  %80 = load i32, i32* @F_ZF, align 4
  %81 = call i32 @SET_FLAG(i32 %80)
  %82 = load i32, i32* @F_SF, align 4
  %83 = call i32 @CLEAR_FLAG(i32 %82)
  %84 = load i32, i32* @F_PF, align 4
  %85 = call i32 @CLEAR_FLAG(i32 %84)
  br label %86

86:                                               ; preds = %77, %68
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
