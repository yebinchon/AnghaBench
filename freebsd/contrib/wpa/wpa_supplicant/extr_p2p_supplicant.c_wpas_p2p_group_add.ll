; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i64 }
%struct.p2p_go_neg_results = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"P2P: Stop any on-going P2P FIND\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_group_add(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.p2p_go_neg_results, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %8
  store i32 -1, i32* %9, align 4
  br label %88

33:                                               ; preds = %25
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @os_free(i32* %38)
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %47 = call i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant* %46)
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %33
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @wpas_p2p_select_go_freq(%struct.wpa_supplicant* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %9, align 4
  br label %88

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant* %61, %struct.p2p_go_neg_results* %18, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 -1, i32* %9, align 4
  br label %88

71:                                               ; preds = %60
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @p2p_go_params(i32* %76, %struct.p2p_go_neg_results* %18)
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %18, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %81 = call %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant* %80, i32 0, i32 1)
  store %struct.wpa_supplicant* %81, %struct.wpa_supplicant** %10, align 8
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %83 = icmp eq %struct.wpa_supplicant* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 -1, i32* %9, align 4
  br label %88

85:                                               ; preds = %71
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %87 = call i32 @wpas_start_wps_go(%struct.wpa_supplicant* %86, %struct.p2p_go_neg_results* %18, i32 0)
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %84, %70, %58, %32
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_select_go_freq(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @p2p_go_params(i32*, %struct.p2p_go_neg_results*) #1

declare dso_local %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpas_start_wps_go(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
