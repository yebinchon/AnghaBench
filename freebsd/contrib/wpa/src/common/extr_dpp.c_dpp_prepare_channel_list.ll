; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_prepare_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_prepare_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hostapd_hw_modes = type { i32 }

@DPP_BOOTSTRAP_MAX_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"DPP: Possible frequencies for initiating:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i32)* @dpp_prepare_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_prepare_channel_list(%struct.dpp_authentication* %0, %struct.hostapd_hw_modes* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @DPP_BOOTSTRAP_MAX_FREQ, align 4
  %16 = mul nsw i32 %15, 6
  %17 = add nsw i32 %16, 10
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %22 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %29 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dpp_channel_intersect(%struct.dpp_authentication* %28, %struct.hostapd_hw_modes* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %34 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dpp_channel_local_list(%struct.dpp_authentication* %33, %struct.hostapd_hw_modes* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %119

42:                                               ; preds = %37
  %43 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %44 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %47 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @freq_to_start(i32* %45, i32 %48, i32 2462)
  %50 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %51 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %54 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @freq_to_start(i32* %52, i32 %55, i32 2412)
  %57 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %58 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %61 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @freq_to_start(i32* %59, i32 %62, i32 2437)
  %64 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %65 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %67 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %72 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i8* %20, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %18
  store i8* %74, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %112, %42
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %78 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %75
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %90 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @os_snprintf(i8* %82, i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @os_snprintf_error(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %81
  br label %115

107:                                              ; preds = %81
  %108 = load i32, i32* %8, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %11, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %75

115:                                              ; preds = %106, %75
  %116 = load i8*, i8** %11, align 8
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %119

119:                                              ; preds = %115, %40
  %120 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dpp_channel_intersect(%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i32) #2

declare dso_local i32 @dpp_channel_local_list(%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i32) #2

declare dso_local i32 @freq_to_start(i32*, i32, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
