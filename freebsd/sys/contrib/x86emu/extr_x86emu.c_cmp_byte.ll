; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_cmp_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_cmp_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @cmp_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_byte(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @F_CF, align 4
  %13 = call i32 @CLEAR_FLAG(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 128
  %16 = load i32, i32* @F_SF, align 4
  %17 = call i32 @CONDITIONAL_SET_FLAG(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @F_ZF, align 4
  %23 = call i32 @CONDITIONAL_SET_FLAG(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @PARITY(i32 %25)
  %27 = load i32, i32* @F_PF, align 4
  %28 = call i32 @CONDITIONAL_SET_FLAG(i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %29, %33
  %35 = load i32, i32* %5, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %36, %37
  %39 = or i32 %34, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 128
  %42 = load i32, i32* @F_CF, align 4
  %43 = call i32 @CONDITIONAL_SET_FLAG(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 6
  %46 = call i32 @XOR2(i32 %45)
  %47 = load i32, i32* @F_OF, align 4
  %48 = call i32 @CONDITIONAL_SET_FLAG(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 8
  %51 = load i32, i32* @F_AF, align 4
  %52 = call i32 @CONDITIONAL_SET_FLAG(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
