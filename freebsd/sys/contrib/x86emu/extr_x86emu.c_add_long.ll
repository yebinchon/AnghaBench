; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_add_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_add_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @add_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 65535
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 16
  %23 = add nsw i32 %20, %22
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 16
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 65536
  %29 = load i32, i32* @F_CF, align 4
  %30 = call i32 @CONDITIONAL_SET_FLAG(i32 %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @F_ZF, align 4
  %35 = call i32 @CONDITIONAL_SET_FLAG(i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, -2147483648
  %38 = load i32, i32* @F_SF, align 4
  %39 = call i32 @CONDITIONAL_SET_FLAG(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @PARITY(i32 %41)
  %43 = load i32, i32* @F_PF, align 4
  %44 = call i32 @CONDITIONAL_SET_FLAG(i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = or i32 %47, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 30
  %57 = call i32 @XOR2(i32 %56)
  %58 = load i32, i32* @F_OF, align 4
  %59 = call i32 @CONDITIONAL_SET_FLAG(i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 8
  %62 = load i32, i32* @F_AF, align 4
  %63 = call i32 @CONDITIONAL_SET_FLAG(i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
