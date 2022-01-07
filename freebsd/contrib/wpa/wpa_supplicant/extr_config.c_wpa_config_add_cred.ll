; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_add_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_add_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i32, %struct.wpa_cred*, i32 }
%struct.wpa_config = type { %struct.wpa_cred* }

@DEFAULT_USER_SELECTED_SIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_cred* @wpa_config_add_cred(%struct.wpa_config* %0) #0 {
  %2 = alloca %struct.wpa_cred*, align 8
  %3 = alloca %struct.wpa_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_cred*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %3, align 8
  store %struct.wpa_cred* null, %struct.wpa_cred** %6, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.wpa_config*, %struct.wpa_config** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %7, i32 0, i32 0
  %9 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  store %struct.wpa_cred* %9, %struct.wpa_cred** %5, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %12 = icmp ne %struct.wpa_cred* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  store %struct.wpa_cred* %24, %struct.wpa_cred** %6, align 8
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %25, i32 0, i32 1
  %27 = load %struct.wpa_cred*, %struct.wpa_cred** %26, align 8
  store %struct.wpa_cred* %27, %struct.wpa_cred** %5, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = call %struct.wpa_cred* @os_zalloc(i32 24)
  store %struct.wpa_cred* %31, %struct.wpa_cred** %5, align 8
  %32 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %33 = icmp eq %struct.wpa_cred* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.wpa_cred* null, %struct.wpa_cred** %2, align 8
  br label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @DEFAULT_USER_SELECTED_SIM, align 4
  %40 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %43 = icmp ne %struct.wpa_cred* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %46 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %46, i32 0, i32 1
  store %struct.wpa_cred* %45, %struct.wpa_cred** %47, align 8
  br label %52

48:                                               ; preds = %35
  %49 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %50 = load %struct.wpa_config*, %struct.wpa_config** %3, align 8
  %51 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %50, i32 0, i32 0
  store %struct.wpa_cred* %49, %struct.wpa_cred** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  store %struct.wpa_cred* %53, %struct.wpa_cred** %2, align 8
  br label %54

54:                                               ; preds = %52, %34
  %55 = load %struct.wpa_cred*, %struct.wpa_cred** %2, align 8
  ret %struct.wpa_cred* %55
}

declare dso_local %struct.wpa_cred* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
