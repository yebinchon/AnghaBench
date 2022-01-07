; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_set_group_idle_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_set_group_idle_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@wpas_p2p_group_idle_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"P2P: Cancelled P2P group idle timeout\00", align 1
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@P2P_MAX_CLIENT_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"P2P: Do not use P2P group idle timeout during provisioning\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"P2P: Do not use P2P group idle timeout while waiting for initial 4-way handshake to complete\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"P2P: Set P2P group idle timeout to %u seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_set_group_idle_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_set_group_idle_timeout(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load i32, i32* @wpas_p2p_group_idle_timeout, align 4
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = call i64 @eloop_cancel_timeout(i32 %4, %struct.wpa_supplicant* %5, i32* null)
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %11
  br label %88

24:                                               ; preds = %16
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @P2P_MAX_CLIENT_IDLE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @P2P_MAX_CLIENT_IDLE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %40, %24
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %88

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %53
  br label %88

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %88

72:                                               ; preds = %64
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  br label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @wpas_p2p_group_idle_timeout, align 4
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %87 = call i32 @eloop_register_timeout(i32 %84, i32 0, i32 %85, %struct.wpa_supplicant* %86, i32* null)
  br label %88

88:                                               ; preds = %80, %77, %69, %62, %49, %23
  ret void
}

declare dso_local i64 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
