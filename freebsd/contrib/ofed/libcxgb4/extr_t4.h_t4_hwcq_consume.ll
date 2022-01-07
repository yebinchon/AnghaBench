; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_hwcq_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_hwcq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.t4_status_page = type { i64 }

@CIDXINC_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_cq*)* @t4_hwcq_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_hwcq_consume(%struct.t4_cq* %0) #0 {
  %2 = alloca %struct.t4_cq*, align 8
  %3 = alloca i32, align 4
  store %struct.t4_cq* %0, %struct.t4_cq** %2, align 8
  %4 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %5 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %14 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %16 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %20 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %26 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CIDXINC_M, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24, %1
  %31 = call i32 @SEINTARM_V(i32 0)
  %32 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %33 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CIDXINC_V(i32 %34)
  %36 = or i32 %31, %35
  %37 = call i32 @TIMERREG_V(i32 7)
  %38 = or i32 %36, %37
  %39 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %40 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %43 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = call i32 @INGRESSQID_V(i32 %45)
  %47 = or i32 %38, %46
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %50 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @writel(i32 %48, i32 %51)
  %53 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %54 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %30, %24
  %56 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %57 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %61 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %67 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %69 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %55
  %73 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %74 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %77 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %76, i32 0, i32 6
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %80 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %82
  %84 = bitcast %struct.TYPE_2__* %83 to %struct.t4_status_page*
  %85 = getelementptr inbounds %struct.t4_status_page, %struct.t4_status_page* %84, i32 0, i32 0
  store i64 %75, i64* %85, align 8
  ret void
}

declare dso_local i32 @SEINTARM_V(i32) #1

declare dso_local i32 @CIDXINC_V(i32) #1

declare dso_local i32 @TIMERREG_V(i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
