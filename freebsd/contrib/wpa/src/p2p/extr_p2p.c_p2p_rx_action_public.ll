; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_rx_action_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_rx_action_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }

@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32*, i32*, i32*, i32*, i64, i32)* @p2p_rx_action_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_rx_action_public(%struct.p2p_data* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.p2p_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i64, i64* %13, align 8
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %83

18:                                               ; preds = %7
  %19 = load i32*, i32** %12, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %83 [
    i32 128, label %22
    i32 130, label %47
    i32 129, label %56
    i32 132, label %65
    i32 131, label %74
  ]

22:                                               ; preds = %18
  %23 = load i32*, i32** %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %83

30:                                               ; preds = %22
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @WPA_GET_BE32(i32* %31)
  %33 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %83

36:                                               ; preds = %30
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub i64 %39, 4
  store i64 %40, i64* %13, align 8
  %41 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @p2p_rx_p2p_action(%struct.p2p_data* %41, i32* %42, i32* %43, i64 %44, i32 %45)
  br label %83

47:                                               ; preds = %18
  %48 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i64, i64* %13, align 8
  %53 = sub i64 %52, 1
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @p2p_rx_gas_initial_req(%struct.p2p_data* %48, i32* %49, i32* %51, i64 %53, i32 %54)
  br label %83

56:                                               ; preds = %18
  %57 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i64, i64* %13, align 8
  %62 = sub i64 %61, 1
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @p2p_rx_gas_initial_resp(%struct.p2p_data* %57, i32* %58, i32* %60, i64 %62, i32 %63)
  br label %83

65:                                               ; preds = %18
  %66 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, 1
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @p2p_rx_gas_comeback_req(%struct.p2p_data* %66, i32* %67, i32* %69, i64 %71, i32 %72)
  br label %83

74:                                               ; preds = %18
  %75 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %79, 1
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @p2p_rx_gas_comeback_resp(%struct.p2p_data* %75, i32* %76, i32* %78, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %17, %29, %35, %18, %74, %65, %56, %47, %36
  ret void
}

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @p2p_rx_p2p_action(%struct.p2p_data*, i32*, i32*, i64, i32) #1

declare dso_local i32 @p2p_rx_gas_initial_req(%struct.p2p_data*, i32*, i32*, i64, i32) #1

declare dso_local i32 @p2p_rx_gas_initial_resp(%struct.p2p_data*, i32*, i32*, i64, i32) #1

declare dso_local i32 @p2p_rx_gas_comeback_req(%struct.p2p_data*, i32*, i32*, i64, i32) #1

declare dso_local i32 @p2p_rx_gas_comeback_resp(%struct.p2p_data*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
