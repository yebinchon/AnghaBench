; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@CVMX_CIU_QLM_JTGC = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_CIU_QLM_JTGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_helper_qlm_jtag_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %6 = call i8* @cvmx_read_csr(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @OCTEON_CN6XXX, align 4
  %12 = call i32 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %16 = call i32 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 1, %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %14, %1
  %24 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @cvmx_write_csr(i32 %24, i8* %26)
  %28 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %29 = call i8* @cvmx_read_csr(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %34 = call i32 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %2, align 4
  %38 = shl i32 1, %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %23
  %42 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @cvmx_write_csr(i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %50, %41
  %47 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %48 = call i8* @cvmx_read_csr(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %46, label %55

55:                                               ; preds = %50
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
