; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_over_max_bss_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_over_max_bss_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_cred = type { i32 }
%struct.wpa_bss = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@WLAN_EID_BSS_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*)* @cred_over_max_bss_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_over_max_bss_load(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %6, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %7, align 8
  %10 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %11 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %17 = load i32, i32* @WLAN_EID_BSS_LOAD, align 4
  %18 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %16, i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %15
  store i32 0, i32* %4, align 4
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %30 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %31 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32* [ %39, %34 ], [ null, %40 ]
  %43 = call i32 @interworking_home_sp_cred(%struct.wpa_supplicant* %28, %struct.wpa_cred* %29, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %56

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %52 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %46, %26, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @interworking_home_sp_cred(%struct.wpa_supplicant*, %struct.wpa_cred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
