; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_sleep_mode_exit_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_sleep_mode_exit_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }

@WNM_SLEEP_EXIT_CONFIRM = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"WNM: Key Data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"WNM: Ignore Key Data in WNM-Sleep Mode Response - PMF not enabled\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"WNM: Invalid Key Data element length\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"WNM: Remaining data\00", align 1
@WNM_SLEEP_SUBELEM_GTK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"WNM: Too short GTK subelem\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"WNM: Invalid GTK subelem\00", align 1
@WNM_SLEEP_SUBELEM_IGTK = common dso_local global i32 0, align 4
@WPA_IGTK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i32)* @wnm_sleep_mode_exit_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wnm_sleep_mode_exit_success(%struct.wpa_supplicant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = load i32, i32* @WNM_SLEEP_EXIT_CONFIRM, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant* %10, i32 %11, i32 %14, i32* null, i32* null)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @wpa_hexdump_key(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wpa_sm_pmf_enabled(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 @wpa_msg(%struct.wpa_supplicant* %36, i32 %37, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %125

39:                                               ; preds = %29, %3
  br label %40

40:                                               ; preds = %124, %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sgt i64 %46, 1
  br i1 %47, label %48, label %125

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = icmp sgt i64 %53, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %48
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ugt i32* %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @wpa_hexdump(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %69, i32 %76)
  br label %78

78:                                               ; preds = %67, %61
  br label %125

79:                                               ; preds = %48
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WNM_SLEEP_SUBELEM_GTK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %79
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %125

92:                                               ; preds = %84
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 11, %99
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp sgt i32 %106, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %102, %92
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 @wpa_printf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %125

111:                                              ; preds = %105
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %113 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @WNM_SLEEP_SUBELEM_GTK, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @wpa_wnmsleep_install_key(i32 %114, i32 %115, i32* %116)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 13, %118
  %120 = load i32*, i32** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %7, align 8
  br label %124

123:                                              ; preds = %79
  br label %125

124:                                              ; preds = %111
  br label %40

125:                                              ; preds = %35, %123, %108, %89, %78, %40
  ret void
}

declare dso_local i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant*, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_sm_pmf_enabled(i32) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_wnmsleep_install_key(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
