; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_blacklist.c_wpa_blacklist_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_blacklist.c_wpa_blacklist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_blacklist = type { %struct.wpa_blacklist*, i32 }
%struct.wpa_supplicant = type { %struct.wpa_blacklist* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_blacklist* @wpa_blacklist_get(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_blacklist*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_blacklist*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = icmp eq %struct.wpa_supplicant* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.wpa_blacklist* null, %struct.wpa_blacklist** %3, align 8
  br label %35

13:                                               ; preds = %9
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %15, align 8
  store %struct.wpa_blacklist* %16, %struct.wpa_blacklist** %6, align 8
  br label %17

17:                                               ; preds = %30, %13
  %18 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %6, align 8
  %19 = icmp ne %struct.wpa_blacklist* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_blacklist, %struct.wpa_blacklist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i64 @os_memcmp(i32 %23, i32* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %6, align 8
  store %struct.wpa_blacklist* %29, %struct.wpa_blacklist** %3, align 8
  br label %35

30:                                               ; preds = %20
  %31 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_blacklist, %struct.wpa_blacklist* %31, i32 0, i32 0
  %33 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %32, align 8
  store %struct.wpa_blacklist* %33, %struct.wpa_blacklist** %6, align 8
  br label %17

34:                                               ; preds = %17
  store %struct.wpa_blacklist* null, %struct.wpa_blacklist** %3, align 8
  br label %35

35:                                               ; preds = %34, %28, %12
  %36 = load %struct.wpa_blacklist*, %struct.wpa_blacklist** %3, align 8
  ret %struct.wpa_blacklist* %36
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
