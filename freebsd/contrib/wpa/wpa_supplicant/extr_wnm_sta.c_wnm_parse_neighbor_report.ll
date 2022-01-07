; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_parse_neighbor_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_parse_neighbor_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.neighbor_report = type { i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WNM: Too short neighbor report\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WNM: Subelement id=%u len=%u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WNM: Truncated neighbor report subelement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i32, %struct.neighbor_report*)* @wnm_parse_neighbor_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wnm_parse_neighbor_report(%struct.wpa_supplicant* %0, i32* %1, i32 %2, %struct.neighbor_report* %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.neighbor_report*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.neighbor_report* %3, %struct.neighbor_report** %8, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %97

18:                                               ; preds = %4
  %19 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %20 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @os_memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @WPA_GET_LE32(i32* %28)
  %30 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %31 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %36 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 11
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %41 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %46 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 13
  store i32* %48, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 13
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %73, %18
  %52 = load i32, i32* %9, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %58, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %86

73:                                               ; preds = %54
  %74 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @wnm_parse_neighbor_report_elem(%struct.neighbor_report* %74, i32 %75, i32 %76, i32* %77)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %6, align 8
  br label %51

86:                                               ; preds = %70, %51
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %88 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %89 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %92 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wnm_nei_get_chan(%struct.wpa_supplicant* %87, i32 %90, i32 %93)
  %95 = load %struct.neighbor_report*, %struct.neighbor_report** %8, align 8
  %96 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @WPA_GET_LE32(i32*) #1

declare dso_local i32 @wnm_parse_neighbor_report_elem(%struct.neighbor_report*, i32, i32, i32*) #1

declare dso_local i32 @wnm_nei_get_chan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
