; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_group_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_group_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i32, %struct.wpa_supplicant*, %struct.wpa_supplicant*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"P2P: Use primary interface for group operations\00", align 1
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@WPA_IF_P2P_CLIENT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"P2P: Failed to add group interface\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"P2P: Failed to initialize group interface\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"P2P: Use separate group interface %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_supplicant* (%struct.wpa_supplicant*, i32, i32)* @wpas_p2p_get_group_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = call i32 @wpas_p2p_create_iface(%struct.wpa_supplicant* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %3
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 5
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 4
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %22, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 5
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %24, align 8
  store %struct.wpa_supplicant* %25, %struct.wpa_supplicant** %5, align 8
  br label %26

26:                                               ; preds = %17, %12
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %27, i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %34, align 8
  %36 = icmp ne %struct.wpa_supplicant* %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %40, align 8
  %42 = call i32 @wpas_p2p_clone_config(%struct.wpa_supplicant* %38, %struct.wpa_supplicant* %41)
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_supplicant* %44, %struct.wpa_supplicant** %4, align 8
  br label %104

45:                                               ; preds = %3
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @WPA_IF_P2P_GO, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @WPA_IF_P2P_CLIENT, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant* %46, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = load i32, i32* @MSG_ERROR, align 4
  %60 = call i32 @wpa_msg_global(%struct.wpa_supplicant* %58, i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %104

61:                                               ; preds = %53
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.wpa_supplicant* @wpas_p2p_init_group_interface(%struct.wpa_supplicant* %62, i32 %63)
  store %struct.wpa_supplicant* %64, %struct.wpa_supplicant** %8, align 8
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %66 = icmp eq %struct.wpa_supplicant* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %69 = load i32, i32* @MSG_ERROR, align 4
  %70 = call i32 @wpa_msg_global(%struct.wpa_supplicant* %68, i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %72 = call i32 @wpas_p2p_remove_pending_group_interface(%struct.wpa_supplicant* %71)
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %104

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %81, %76, %73
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %98 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %95, i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %103, %struct.wpa_supplicant** %4, align 8
  br label %104

104:                                              ; preds = %94, %67, %57, %43
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  ret %struct.wpa_supplicant* %105
}

declare dso_local i32 @wpas_p2p_create_iface(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpas_p2p_clone_config(%struct.wpa_supplicant*, %struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_msg_global(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.wpa_supplicant* @wpas_p2p_init_group_interface(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_p2p_remove_pending_group_interface(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
