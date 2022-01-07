; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_no_required_oi_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_no_required_oi_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i32, i32 }
%struct.wpa_bss = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@WLAN_EID_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_cred*, %struct.wpa_bss*)* @cred_no_required_oi_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_no_required_oi_match(%struct.wpa_cred* %0, %struct.wpa_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_cred*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca i32*, align 8
  store %struct.wpa_cred* %0, %struct.wpa_cred** %4, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %5, align 8
  %7 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %14 = load i32, i32* @WLAN_EID_ROAMING_CONSORTIUM, align 4
  %15 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %18
  store i32 1, i32* %3, align 4
  br label %56

31:                                               ; preds = %23, %12
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32* [ %42, %37 ], [ null, %43 ]
  %46 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @roaming_consortium_match(i32* %32, i32* %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %44, %30, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @roaming_consortium_match(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
