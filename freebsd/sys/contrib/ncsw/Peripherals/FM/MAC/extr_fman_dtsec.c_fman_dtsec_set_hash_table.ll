; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_set_hash_table(%struct.dtsec_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dtsec_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 23
  %15 = and i32 %14, 511
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  br label %28

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %25, 256
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @fman_dtsec_set_bucket(%struct.dtsec_regs* %29, i64 %30, i32 %31)
  ret void
}

declare dso_local i32 @fman_dtsec_set_bucket(%struct.dtsec_regs*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
