; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-errata.c___cvmx_helper_errata_qlm_disable_2nd_order_cdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-errata.c___cvmx_helper_errata_qlm_disable_2nd_order_cdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@CVMX_CIU_QLM_JTGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %6 = call i32 @cvmx_read_csr(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = call i32 (...) @cvmx_helper_qlm_jtag_init()
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %13
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %19, i32 64)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %21, i32 4, i32 3)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %23, i32 9)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %25, i32 1, i32 1)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %27, i32 190)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @cvmx_helper_qlm_jtag_update(i32 %33)
  br label %35

35:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_init(...) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_shift_zeros(i32, i32) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_shift(i32, i32, i32) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
