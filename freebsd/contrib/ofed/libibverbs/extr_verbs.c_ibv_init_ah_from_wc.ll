; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_init_ah_from_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_init_ah_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_wc = type { i32 }
%struct.ibv_grh = type { i32 }
%struct.ibv_ah_attr = type { i32 }
%struct.ip = type { i32 }

@IBV_WC_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_init_ah_from_wc(%struct.ibv_context* %0, i32 %1, %struct.ibv_wc* %2, %struct.ibv_grh* %3, %struct.ibv_ah_attr* %4) #0 {
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_wc*, align 8
  %9 = alloca %struct.ibv_grh*, align 8
  %10 = alloca %struct.ibv_ah_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ibv_wc* %2, %struct.ibv_wc** %8, align 8
  store %struct.ibv_grh* %3, %struct.ibv_grh** %9, align 8
  store %struct.ibv_ah_attr* %4, %struct.ibv_ah_attr** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %10, align 8
  %14 = call i32 @memset(%struct.ibv_ah_attr* %13, i32 0, i32 4)
  %15 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %10, align 8
  %16 = load %struct.ibv_wc*, %struct.ibv_wc** %8, align 8
  %17 = load %struct.ibv_grh*, %struct.ibv_grh** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @set_ah_attr_generic_fields(%struct.ibv_ah_attr* %15, %struct.ibv_wc* %16, %struct.ibv_grh* %17, i32 %18)
  %20 = load %struct.ibv_wc*, %struct.ibv_wc** %8, align 8
  %21 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IBV_WC_GRH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %5
  %27 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %10, align 8
  %28 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ibv_grh*, %struct.ibv_grh** %9, align 8
  %30 = call i32 @get_grh_header_version(%struct.ibv_grh* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %35 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %10, align 8
  %36 = load %struct.ibv_grh*, %struct.ibv_grh** %9, align 8
  %37 = bitcast %struct.ibv_grh* %36 to i8*
  %38 = getelementptr i8, i8* %37, i64 20
  %39 = bitcast i8* %38 to %struct.ip*
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @set_ah_attr_by_ipv4(%struct.ibv_context* %34, %struct.ibv_ah_attr* %35, %struct.ip* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %53

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %47 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %10, align 8
  %48 = load %struct.ibv_grh*, %struct.ibv_grh** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @set_ah_attr_by_ipv6(%struct.ibv_context* %46, %struct.ibv_ah_attr* %47, %struct.ibv_grh* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %52

51:                                               ; preds = %42
  store i32 -1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %45
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %5
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.ibv_ah_attr*, i32, i32) #1

declare dso_local i32 @set_ah_attr_generic_fields(%struct.ibv_ah_attr*, %struct.ibv_wc*, %struct.ibv_grh*, i32) #1

declare dso_local i32 @get_grh_header_version(%struct.ibv_grh*) #1

declare dso_local i32 @set_ah_attr_by_ipv4(%struct.ibv_context*, %struct.ibv_ah_attr*, %struct.ip*, i32) #1

declare dso_local i32 @set_ah_attr_by_ipv6(%struct.ibv_context*, %struct.ibv_ah_attr*, %struct.ibv_grh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
