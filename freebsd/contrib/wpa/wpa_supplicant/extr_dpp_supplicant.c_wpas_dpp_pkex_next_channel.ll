; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_pkex_next_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_pkex_next_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.dpp_pkex = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DPP: Try to initiate on %u MHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.dpp_pkex*)* @wpas_dpp_pkex_next_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dpp_pkex_next_channel(%struct.wpa_supplicant* %0, %struct.dpp_pkex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.dpp_pkex*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.dpp_pkex* %1, %struct.dpp_pkex** %5, align 8
  %6 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %7 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2437
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %12 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %11, i32 0, i32 0
  store i32 5745, i32* %12, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %15 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 5745
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %20 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %19, i32 0, i32 0
  store i32 5220, i32* %20, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %23 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 5220
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %28 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %27, i32 0, i32 0
  store i32 60480, i32* %28, align 4
  br label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %49

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %18
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %35 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wpas_dpp_allow_ir(%struct.wpa_supplicant* %33, i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %42 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %47 = load %struct.dpp_pkex*, %struct.dpp_pkex** %5, align 8
  %48 = call i32 @wpas_dpp_pkex_next_channel(%struct.wpa_supplicant* %46, %struct.dpp_pkex* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %39, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @wpas_dpp_allow_ir(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
