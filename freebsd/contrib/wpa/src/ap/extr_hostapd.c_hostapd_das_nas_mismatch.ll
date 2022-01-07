; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_das_nas_mismatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_das_nas_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.radius_das_attrs = type { i64, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RADIUS DAS: NAS-Identifier mismatch\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"RADIUS DAS: NAS-IP-Address mismatch\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.radius_das_attrs*)* @hostapd_das_nas_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_das_nas_mismatch(%struct.hostapd_data* %0, %struct.radius_das_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.radius_das_attrs*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.radius_das_attrs* %1, %struct.radius_das_attrs** %5, align 8
  %6 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %7 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @os_strlen(i32* %22)
  %24 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %25 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %17
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %35 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %38 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @os_memcmp(i32* %33, i64 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28, %17, %10
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %76

46:                                               ; preds = %28, %2
  %47 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %48 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %53 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %51
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %68 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @os_memcmp(i32* %66, i64 %69, i32 4)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60, %51
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %76

75:                                               ; preds = %60, %46
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72, %43
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @os_strlen(i32*) #1

declare dso_local i64 @os_memcmp(i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
