; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_time_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_time_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_time_adv(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %21 = call i64 @hostapd_update_time_adv(%struct.hostapd_data* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %3, align 8
  br label %51

25:                                               ; preds = %19, %14
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %3, align 8
  br label %51

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @wpabuf_head(i32* %36)
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @wpabuf_len(i32* %40)
  %42 = call i32 @os_memcpy(i32* %33, i32 %37, i32 %41)
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @wpabuf_len(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %32, %30, %23, %12
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i64 @hostapd_update_time_adv(%struct.hostapd_data*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpabuf_head(i32*) #1

declare dso_local i32 @wpabuf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
