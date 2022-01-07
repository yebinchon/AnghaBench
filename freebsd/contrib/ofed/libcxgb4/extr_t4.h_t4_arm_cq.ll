; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32, i32, i32 }

@CIDXINC_M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cq*, i32)* @t4_arm_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_arm_cq(%struct.t4_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CIDXINC_M, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = call i32 @SEINTARM_V(i32 0)
  %14 = load i64, i64* @CIDXINC_M, align 8
  %15 = call i32 @CIDXINC_V(i64 %14)
  %16 = or i32 %13, %15
  %17 = call i32 @TIMERREG_V(i32 7)
  %18 = or i32 %16, %17
  %19 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %20 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %23 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = call i32 @INGRESSQID_V(i32 %25)
  %27 = or i32 %18, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %30 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @writel(i32 %28, i32 %31)
  %33 = load i64, i64* @CIDXINC_M, align 8
  %34 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %35 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %6

38:                                               ; preds = %6
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @SEINTARM_V(i32 %39)
  %41 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %42 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @CIDXINC_V(i64 %43)
  %45 = or i32 %40, %44
  %46 = call i32 @TIMERREG_V(i32 6)
  %47 = or i32 %45, %46
  %48 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %49 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %52 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = call i32 @INGRESSQID_V(i32 %54)
  %56 = or i32 %47, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %59 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @writel(i32 %57, i32 %60)
  %62 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %63 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  ret i32 0
}

declare dso_local i32 @SEINTARM_V(i32) #1

declare dso_local i32 @CIDXINC_V(i64) #1

declare dso_local i32 @TIMERREG_V(i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
