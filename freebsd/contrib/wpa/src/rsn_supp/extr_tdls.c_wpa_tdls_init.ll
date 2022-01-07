; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i64, i64, i32*, i32, i64, i64 }

@ETH_P_80211_ENCAP = common dso_local global i32 0, align 4
@wpa_supplicant_rx_tdls = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TDLS: Failed to open l2_packet connection\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"TDLS: TDLS operation%s supported by driver\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"TDLS: Driver uses %s link setup\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"TDLS: Driver %s TDLS channel switching\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"supports\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"does not support\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_tdls_init(%struct.wpa_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  %4 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %5 = icmp eq %struct.wpa_sm* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

7:                                                ; preds = %1
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  br label %20

16:                                               ; preds = %7
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i64 [ %15, %12 ], [ %19, %16 ]
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ETH_P_80211_ENCAP, align 4
  %26 = load i32, i32* @wpa_supplicant_rx_tdls, align 4
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %28 = call i32* @l2_packet_init(i64 %21, i32 %24, i32 %25, i32 %26, %struct.wpa_sm* %27, i32 0)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

38:                                               ; preds = %20
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 0
  %42 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %42, i32 0, i32 2
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %45 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %44, i32 0, i32 1
  %46 = call i64 @wpa_sm_tdls_get_capa(%struct.wpa_sm* %39, i32* %41, i64* %43, i64* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %50 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %38
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %53, %35, %6
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32* @l2_packet_init(i64, i32, i32, i32, %struct.wpa_sm*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpa_sm_tdls_get_capa(%struct.wpa_sm*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
