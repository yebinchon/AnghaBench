; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_ieee802_1x_create_preshared_mka_hapd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_ieee802_1x_create_preshared_mka_hapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sta_info = type { i32 }
%struct.mka_key = type { i32, i32, i32 }
%struct.mka_key_name = type { i32, i32, i32 }

@MKA_PSK_SET = common dso_local global i32 0, align 4
@DO_NOT_SECURE = common dso_local global i64 0, align 8
@PSK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ieee802_1x_create_preshared_mka_hapd(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.mka_key*, align 8
  %6 = alloca %struct.mka_key_name*, align 8
  %7 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MKA_PSK_SET, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @MKA_PSK_SET, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %111

18:                                               ; preds = %2
  %19 = call %struct.mka_key_name* @os_zalloc(i32 12)
  store %struct.mka_key_name* %19, %struct.mka_key_name** %6, align 8
  %20 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %21 = icmp ne %struct.mka_key_name* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %111

23:                                               ; preds = %18
  %24 = call %struct.mka_key_name* @os_zalloc(i32 12)
  %25 = bitcast %struct.mka_key_name* %24 to %struct.mka_key*
  store %struct.mka_key* %25, %struct.mka_key** %5, align 8
  %26 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %27 = icmp ne %struct.mka_key* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %108

29:                                               ; preds = %23
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = call i64 @ieee802_1x_alloc_kay_sm_hapd(%struct.hostapd_data* %30, %struct.sta_info* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29
  br label %104

40:                                               ; preds = %34
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DO_NOT_SECURE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %101

49:                                               ; preds = %40
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %56 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %58 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %66 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @os_memcpy(i32 %59, i32 %64, i32 %67)
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %70 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %75 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %77 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %85 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @os_memcpy(i32 %78, i32 %83, i32 %86)
  %88 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %89 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %92 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %93 = bitcast %struct.mka_key* %92 to %struct.mka_key_name*
  %94 = load i32, i32* @PSK, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i8* @ieee802_1x_kay_create_mka(%struct.TYPE_4__* %90, %struct.mka_key_name* %91, %struct.mka_key_name* %93, i32 0, i32 %94, i32 %95)
  store i8* %96, i8** %7, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %49
  br label %104

100:                                              ; preds = %49
  br label %101

101:                                              ; preds = %100, %48
  %102 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %103 = call i32 @ieee802_1x_dealloc_kay_sm_hapd(%struct.hostapd_data* %102)
  br label %104

104:                                              ; preds = %101, %99, %39
  %105 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %106 = bitcast %struct.mka_key* %105 to %struct.mka_key_name*
  %107 = call i32 @os_free(%struct.mka_key_name* %106)
  br label %108

108:                                              ; preds = %104, %28
  %109 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %110 = call i32 @os_free(%struct.mka_key_name* %109)
  br label %111

111:                                              ; preds = %108, %22, %17
  %112 = load i8*, i8** %7, align 8
  ret i8* %112
}

declare dso_local %struct.mka_key_name* @os_zalloc(i32) #1

declare dso_local i64 @ieee802_1x_alloc_kay_sm_hapd(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i8* @ieee802_1x_kay_create_mka(%struct.TYPE_4__*, %struct.mka_key_name*, %struct.mka_key_name*, i32, i32, i32) #1

declare dso_local i32 @ieee802_1x_dealloc_kay_sm_hapd(%struct.hostapd_data*) #1

declare dso_local i32 @os_free(%struct.mka_key_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
