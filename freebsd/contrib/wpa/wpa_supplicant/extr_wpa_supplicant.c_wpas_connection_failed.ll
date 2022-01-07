; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_connection_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_connection_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i64, i64, i64, i64, i64, i64 }

@wpa_supplicant_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Ignore connection failure due to local request to disconnect\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Ignore connection failure indication since interface has been put into disconnected state\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Another BSS in this ESS has been seen; try it next\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Continuous association failures - consider temporary network disabling\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CONN_FAILED\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Blacklist count %d --> request scan in %d ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_connection_failed(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = call i32 @wpas_connect_work_done(%struct.wpa_supplicant* %8)
  %10 = load i32, i32* @wpa_supplicant_timeout, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %10, %struct.wpa_supplicant* %11, i32* null)
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %29, i32 %30, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %105

32:                                               ; preds = %23
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @wpa_blacklist_add(%struct.wpa_supplicant* %33, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = call i32* @get_bss_freqs_in_ess(%struct.wpa_supplicant* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @wpa_blacklist_add(%struct.wpa_supplicant* %52, i32* %53)
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @os_free(i32* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %48, %43
  br label %63

63:                                               ; preds = %62, %38, %32
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %82 = call i32 @wpas_auth_failed(%struct.wpa_supplicant* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73, %63
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %89 [
    i32 1, label %85
    i32 2, label %86
    i32 3, label %87
    i32 4, label %88
  ]

85:                                               ; preds = %83
  store i32 100, i32* %5, align 4
  br label %90

86:                                               ; preds = %83
  store i32 500, i32* %5, align 4
  br label %90

87:                                               ; preds = %83
  store i32 1000, i32* %5, align 4
  br label %90

88:                                               ; preds = %83
  store i32 5000, i32* %5, align 4
  br label %90

89:                                               ; preds = %83
  store i32 10000, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %88, %87, %86, %85
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %91, i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sdiv i32 %99, 1000
  %101 = load i32, i32* %5, align 4
  %102 = srem i32 %101, 1000
  %103 = mul nsw i32 1000, %102
  %104 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %98, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %90, %28, %17
  ret void
}

declare dso_local i32 @wpas_connect_work_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_blacklist_add(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32* @get_bss_freqs_in_ess(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_auth_failed(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
