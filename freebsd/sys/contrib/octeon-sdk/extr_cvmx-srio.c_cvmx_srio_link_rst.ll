; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_link_rst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_link_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_CIU_SOFT_PRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_srio_link_rst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %6 = call i64 @OCTEON_IS_MODEL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_SRIOMAINTX_PORT_0_LINK_REQ(i32 %11)
  %13 = call i64 @cvmx_srio_config_write32(i32 %10, i32 0, i32 -1, i32 0, i32 0, i32 %12, i32 3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %45

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_SRIOMAINTX_PORT_0_LINK_RESP(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %21 = call i64 @cvmx_srio_config_read32(i32 %17, i32 0, i32 -1, i32 0, i32 0, i32 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %45

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %38, %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CVMX_SRIOMAINTX_PORT_0_LINK_RESP(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %35 = call i64 @cvmx_srio_config_read32(i32 %31, i32 0, i32 -1, i32 0, i32 0, i32 %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %45

38:                                               ; preds = %30
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* @CVMX_CIU_SOFT_PRST, align 4
  %41 = call i32 @cvmx_write_csr(i32 %40, i32 1)
  %42 = call i32 @cvmx_wait(i32 10)
  %43 = load i32, i32* @CVMX_CIU_SOFT_PRST, align 4
  %44 = call i32 @cvmx_write_csr(i32 %43, i32 0)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %37, %23, %15, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i64 @cvmx_srio_config_write32(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_PORT_0_LINK_REQ(i32) #1

declare dso_local i64 @cvmx_srio_config_read32(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CVMX_SRIOMAINTX_PORT_0_LINK_RESP(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
