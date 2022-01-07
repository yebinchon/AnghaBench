; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shl_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shl_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @shl_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shl_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %64

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 32, %22
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @F_CF, align 4
  %28 = call i32 @CONDITIONAL_SET_FLAG(i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @F_ZF, align 4
  %33 = call i32 @CONDITIONAL_SET_FLAG(i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, -2147483648
  %36 = load i32, i32* @F_SF, align 4
  %37 = call i32 @CONDITIONAL_SET_FLAG(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @PARITY(i32 %39)
  %41 = load i32, i32* @F_PF, align 4
  %42 = call i32 @CONDITIONAL_SET_FLAG(i32 %40, i32 %41)
  br label %45

43:                                               ; preds = %12
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, -2147483648
  %51 = icmp eq i32 %50, -2147483648
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @F_CF, align 4
  %54 = call i64 @ACCESS_FLAG(i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = xor i32 %52, %56
  %58 = load i32, i32* @F_OF, align 4
  %59 = call i32 @CONDITIONAL_SET_FLAG(i32 %57, i32 %58)
  br label %63

60:                                               ; preds = %45
  %61 = load i32, i32* @F_OF, align 4
  %62 = call i32 @CLEAR_FLAG(i32 %61)
  br label %63

63:                                               ; preds = %60, %48
  br label %80

64:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = shl i32 %65, %67
  %69 = and i32 %68, -2147483648
  %70 = load i32, i32* @F_CF, align 4
  %71 = call i32 @CONDITIONAL_SET_FLAG(i32 %69, i32 %70)
  %72 = load i32, i32* @F_OF, align 4
  %73 = call i32 @CLEAR_FLAG(i32 %72)
  %74 = load i32, i32* @F_SF, align 4
  %75 = call i32 @CLEAR_FLAG(i32 %74)
  %76 = load i32, i32* @F_PF, align 4
  %77 = call i32 @SET_FLAG(i32 %76)
  %78 = load i32, i32* @F_ZF, align 4
  %79 = call i32 @SET_FLAG(i32 %78)
  br label %80

80:                                               ; preds = %64, %63
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
