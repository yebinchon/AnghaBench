; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_config = type { i64, i32, i32, %struct.hostapd_config*, %struct.hostapd_config*, %struct.TYPE_2__, %struct.hostapd_config*, %struct.hostapd_config*, %struct.hostapd_config* }
%struct.TYPE_2__ = type { %struct.hostapd_config* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_config_free(%struct.hostapd_config* %0) #0 {
  %2 = alloca %struct.hostapd_config*, align 8
  %3 = alloca i64, align 8
  store %struct.hostapd_config* %0, %struct.hostapd_config** %2, align 8
  %4 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %5 = icmp eq %struct.hostapd_config* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %56

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %11 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %16 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %15, i32 0, i32 8
  %17 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %17, i64 %18
  %20 = call i32 @hostapd_config_free_bss(%struct.hostapd_config* byval(%struct.hostapd_config) align 8 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %26 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %25, i32 0, i32 8
  %27 = load %struct.hostapd_config*, %struct.hostapd_config** %26, align 8
  %28 = call i32 @os_free(%struct.hostapd_config* %27)
  %29 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %29, i32 0, i32 7
  %31 = load %struct.hostapd_config*, %struct.hostapd_config** %30, align 8
  %32 = call i32 @os_free(%struct.hostapd_config* %31)
  %33 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %34 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %33, i32 0, i32 6
  %35 = load %struct.hostapd_config*, %struct.hostapd_config** %34, align 8
  %36 = call i32 @os_free(%struct.hostapd_config* %35)
  %37 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %38 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.hostapd_config*, %struct.hostapd_config** %39, align 8
  %41 = call i32 @os_free(%struct.hostapd_config* %40)
  %42 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %43 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %42, i32 0, i32 4
  %44 = load %struct.hostapd_config*, %struct.hostapd_config** %43, align 8
  %45 = call i32 @os_free(%struct.hostapd_config* %44)
  %46 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %47 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wpabuf_free(i32 %48)
  %50 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %51 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wpabuf_free(i32 %52)
  %54 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  %55 = call i32 @os_free(%struct.hostapd_config* %54)
  br label %56

56:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @hostapd_config_free_bss(%struct.hostapd_config* byval(%struct.hostapd_config) align 8) #1

declare dso_local i32 @os_free(%struct.hostapd_config*) #1

declare dso_local i32 @wpabuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
