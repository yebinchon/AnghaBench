; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_adc_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_adc_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @adc_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @F_CF, align 4
  %12 = call i64 @ACCESS_FLAG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65535
  %17 = add nsw i32 1, %16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 1, %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 65535
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %25, %14
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 16
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 16
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 16
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65536
  %45 = load i32, i32* @F_CF, align 4
  %46 = call i32 @CONDITIONAL_SET_FLAG(i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @F_ZF, align 4
  %51 = call i32 @CONDITIONAL_SET_FLAG(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, -2147483648
  %54 = load i32, i32* @F_SF, align 4
  %55 = call i32 @CONDITIONAL_SET_FLAG(i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 255
  %58 = call i32 @PARITY(i32 %57)
  %59 = load i32, i32* @F_PF, align 4
  %60 = call i32 @CONDITIONAL_SET_FLAG(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = or i32 %63, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 30
  %73 = call i32 @XOR2(i32 %72)
  %74 = load i32, i32* @F_OF, align 4
  %75 = call i32 @CONDITIONAL_SET_FLAG(i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 8
  %78 = load i32, i32* @F_AF, align 4
  %79 = call i32 @CONDITIONAL_SET_FLAG(i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
