; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_thunderx_bcast_tlbi_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_thunderx_bcast_tlbi_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_PART_THUNDERX_81XX = common dso_local global i64 0, align 8
@bcast_tlbi_workaround = common dso_local global i32 0, align 4
@CPU_PART_THUNDERX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_thunderx_bcast_tlbi_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_thunderx_bcast_tlbi_workaround() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @get_midr()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @CPU_PART(i32 %3)
  %5 = load i64, i64* @CPU_PART_THUNDERX_81XX, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @bcast_tlbi_workaround, align 4
  %9 = call i32 @PCPU_SET(i32 %8, i32 1)
  br label %36

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @CPU_PART(i32 %11)
  %13 = load i64, i64* @CPU_PART_THUNDERX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @CPU_VAR(i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @bcast_tlbi_workaround, align 4
  %21 = call i32 @PCPU_SET(i32 %20, i32 1)
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @CPU_VAR(i32 %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @CPU_REV(i32 %27)
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @bcast_tlbi_workaround, align 4
  %32 = call i32 @PCPU_SET(i32 %31, i32 1)
  br label %33

33:                                               ; preds = %30, %26, %22
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %10
  br label %36

36:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @get_midr(...) #1

declare dso_local i64 @CPU_PART(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @CPU_VAR(i32) #1

declare dso_local i32 @CPU_REV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
