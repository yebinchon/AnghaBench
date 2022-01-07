; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_qp_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_qp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64, i32 }

@RS_QP_MAX_SIZE = common dso_local global i32 0, align 4
@RS_QP_MIN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @rs_set_qp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_qp_size(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %4 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %5 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @ucma_max_qpsize(i32 %6)
  %8 = load i32, i32* @RS_QP_MAX_SIZE, align 4
  %9 = call i64 @min(i32 %7, i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %11 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RS_QP_MIN_SIZE, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @RS_QP_MIN_SIZE, align 8
  %27 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %39 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %51

40:                                               ; preds = %30
  %41 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %42 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RS_QP_MIN_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @RS_QP_MIN_SIZE, align 8
  %48 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %49 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %36
  ret void
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @ucma_max_qpsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
