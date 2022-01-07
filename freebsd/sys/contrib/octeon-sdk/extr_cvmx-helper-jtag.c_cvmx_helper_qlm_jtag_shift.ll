; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@CVMX_CIU_QLM_JTGC = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_CIU_QLM_JTGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_qlm_jtag_shift(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %10 = call i8* @cvmx_read_csr(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @OCTEON_CN6XXX, align 4
  %16 = call i32 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %20 = call i32 @OCTEON_IS_MODEL(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %18, %3
  %28 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @cvmx_write_csr(i32 %28, i8* %30)
  %32 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %33 = call i8* @cvmx_read_csr(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %45 = call i32 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %27
  %53 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @cvmx_write_csr(i32 %53, i8* %55)
  br label %57

57:                                               ; preds = %61, %52
  %58 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %59 = call i8* @cvmx_read_csr(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %57, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 32, %70
  %72 = ashr i32 %69, %71
  ret i32 %72
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
