; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i32, i64, %struct.wpa_supplicant*, %struct.wpa_supplicant*, i32 }

@INITIAL_SCAN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_supplicant* (%struct.wpa_supplicant*)* @wpa_supplicant_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_supplicant* @wpa_supplicant_alloc(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = call %struct.wpa_supplicant* @os_zalloc(i32 48)
  store %struct.wpa_supplicant* %5, %struct.wpa_supplicant** %4, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %7 = icmp eq %struct.wpa_supplicant* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %2, align 8
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* @INITIAL_SCAN_REQ, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  store i32 5, i32* %14, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = icmp ne %struct.wpa_supplicant* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  br label %23

21:                                               ; preds = %9
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi %struct.wpa_supplicant* [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 5
  store %struct.wpa_supplicant* %24, %struct.wpa_supplicant** %26, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 5
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %28, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 6
  store %struct.wpa_supplicant* %29, %struct.wpa_supplicant** %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 3
  %36 = call i32 @dl_list_init(i32* %35)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 2
  %39 = call i32 @dl_list_init(i32* %38)
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %40, %struct.wpa_supplicant** %2, align 8
  br label %41

41:                                               ; preds = %23, %8
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  ret %struct.wpa_supplicant* %42
}

declare dso_local %struct.wpa_supplicant* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
