; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_eap_user_db.c_hostapd_get_eap_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_eap_user_db.c_hostapd_get_eap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_eap_user = type { i32, i64, %struct.hostapd_eap_user*, i32*, i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.hostapd_data = type { %struct.hostapd_bss_config* }
%struct.hostapd_bss_config = type { i64, i64, i64, %struct.hostapd_eap_user* }

@WSC_ID_ENROLLEE = common dso_local global i32* null, align 8
@WSC_ID_ENROLLEE_LEN = common dso_local global i64 0, align 8
@WSC_ID_REGISTRAR = common dso_local global i32* null, align 8
@WSC_ID_REGISTRAR_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_eap_user* @hostapd_get_eap_user(%struct.hostapd_data* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_bss_config*, align 8
  %10 = alloca %struct.hostapd_eap_user*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %12, align 8
  store %struct.hostapd_bss_config* %13, %struct.hostapd_bss_config** %9, align 8
  %14 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %9, align 8
  %15 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %14, i32 0, i32 3
  %16 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %15, align 8
  store %struct.hostapd_eap_user* %16, %struct.hostapd_eap_user** %10, align 8
  br label %17

17:                                               ; preds = %86, %4
  %18 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %19 = icmp ne %struct.hostapd_eap_user* %18, null
  br i1 %19, label %20, label %90

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %25 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %90

29:                                               ; preds = %23, %20
  %30 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %31 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %29
  %40 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %41 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %47 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %52 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %56 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @os_memcmp(i32* %53, i32* %54, i64 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %90

61:                                               ; preds = %50, %44, %39, %29
  %62 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %63 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %73 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %79 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @os_memcmp(i32* %80, i32* %81, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %90

86:                                               ; preds = %77, %71, %61
  %87 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  %88 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %87, i32 0, i32 2
  %89 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %88, align 8
  store %struct.hostapd_eap_user* %89, %struct.hostapd_eap_user** %10, align 8
  br label %17

90:                                               ; preds = %85, %60, %28, %17
  %91 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  ret %struct.hostapd_eap_user* %91
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
