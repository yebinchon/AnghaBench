; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_get_m1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_get_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64, i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS ER: Failed to parse M1\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_ap_get_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_get_m1(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %7 = call i64 @wps_parse_msg(%struct.wpabuf* %6, %struct.wps_parse_attr* %5)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %48

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %18 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @os_memcpy(i32 %19, i64 %21, i32 8)
  br label %23

23:                                               ; preds = %16, %12
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %39 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @os_memcpy(i32 %40, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  %46 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %47 = call i32 @wps_er_subscribe(%struct.wps_er_ap* %46)
  br label %48

48:                                               ; preds = %45, %9
  ret void
}

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i64, i32) #1

declare dso_local i32 @wps_er_subscribe(%struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
