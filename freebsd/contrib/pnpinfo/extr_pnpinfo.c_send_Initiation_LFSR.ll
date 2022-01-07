; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_send_Initiation_LFSR.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_send_Initiation_LFSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNP_CONFIG_CONTROL = common dso_local global i32 0, align 4
@_PNP_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_Initiation_LFSR() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PNP_CONFIG_CONTROL, align 4
  %4 = call i32 @pnp_write(i32 %3, i32 2)
  %5 = load i32, i32* @_PNP_ADDRESS, align 4
  %6 = call i32 @outb(i32 %5, i32 0)
  %7 = load i32, i32* @_PNP_ADDRESS, align 4
  %8 = call i32 @outb(i32 %7, i32 0)
  store i32 106, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %25, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, i32* @_PNP_ADDRESS, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @outb(i32 %13, i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 1
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = ashr i32 %19, 1
  %21 = xor i32 %18, %20
  %22 = shl i32 %21, 7
  %23 = and i32 %22, 255
  %24 = or i32 %17, %23
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %9

28:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pnp_write(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
