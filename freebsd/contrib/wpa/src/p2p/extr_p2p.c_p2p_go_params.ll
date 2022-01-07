; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_go_neg_results = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_go_params(%struct.p2p_data* %0, %struct.p2p_go_neg_results* %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca %struct.p2p_go_neg_results*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store %struct.p2p_go_neg_results* %1, %struct.p2p_go_neg_results** %4, align 8
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @os_memcpy(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %27 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %4, align 8
  %28 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %4, align 8
  %31 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %30, i32 0, i32 1
  %32 = call i32 @p2p_build_ssid(%struct.p2p_data* %26, i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %25, %9
  %34 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %4, align 8
  %37 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %40 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @p2p_random(i32 %38, i32 %43)
  ret i32 0
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @p2p_build_ssid(%struct.p2p_data*, i32, i32*) #1

declare dso_local i32 @p2p_random(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
