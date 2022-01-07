; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_deinit_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_deinit_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32*, i32*, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i64, i64, %struct.wpa_supplicant* }

@NOT_P2P_GROUP_INTERFACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_global*)* @wpas_p2p_deinit_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_deinit_global(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  %5 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %5, i32 0, i32 2
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_supplicant* %7, %struct.wpa_supplicant** %3, align 8
  %8 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @wpas_p2p_service_flush(i32* %10)
  br label %12

12:                                               ; preds = %23, %1
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = icmp ne %struct.wpa_supplicant* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NOT_P2P_GROUP_INTERFACE, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 2
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %25, align 8
  store %struct.wpa_supplicant* %26, %struct.wpa_supplicant** %3, align 8
  br label %12

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %60, %27
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = icmp ne %struct.wpa_supplicant* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %33 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %32, i32 0, i32 2
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %33, align 8
  store %struct.wpa_supplicant* %34, %struct.wpa_supplicant** %4, align 8
  br label %35

35:                                               ; preds = %52, %31
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = icmp ne %struct.wpa_supplicant* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = icmp eq %struct.wpa_supplicant* %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NOT_P2P_GROUP_INTERFACE, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i1 [ true, %38 ], [ %47, %42 ]
  br label %50

50:                                               ; preds = %48, %35
  %51 = phi i1 [ false, %35 ], [ %49, %48 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 2
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %54, align 8
  store %struct.wpa_supplicant* %55, %struct.wpa_supplicant** %4, align 8
  br label %35

56:                                               ; preds = %50
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %58 = icmp eq %struct.wpa_supplicant* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %62 = call i32 @wpas_p2p_disconnect(%struct.wpa_supplicant* %61)
  br label %28

63:                                               ; preds = %59, %28
  %64 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %65 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %64, i32 0, i32 2
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %65, align 8
  store %struct.wpa_supplicant* %66, %struct.wpa_supplicant** %3, align 8
  br label %67

67:                                               ; preds = %79, %63
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %69 = icmp ne %struct.wpa_supplicant* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %77 = call i32 @wpas_p2p_group_deinit(%struct.wpa_supplicant* %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 2
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %81, align 8
  store %struct.wpa_supplicant* %82, %struct.wpa_supplicant** %3, align 8
  br label %67

83:                                               ; preds = %67
  %84 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %85 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @p2p_deinit(i32* %86)
  %88 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %89 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %91 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  ret void
}

declare dso_local i32 @wpas_p2p_service_flush(i32*) #1

declare dso_local i32 @wpas_p2p_disconnect(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_group_deinit(%struct.wpa_supplicant*) #1

declare dso_local i32 @p2p_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
