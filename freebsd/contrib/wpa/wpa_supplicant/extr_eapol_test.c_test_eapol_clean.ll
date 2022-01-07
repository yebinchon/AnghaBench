; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_test_eapol_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_test_eapol_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { %struct.extra_radius_attr*, %struct.extra_radius_attr*, %struct.extra_radius_attr*, i32*, i32, i32 }
%struct.extra_radius_attr = type { %struct.extra_radius_attr*, %struct.extra_radius_attr*, %struct.extra_radius_attr* }
%struct.wpa_supplicant = type { i32, i32*, i32*, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_test_data*, %struct.wpa_supplicant*)* @test_eapol_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_eapol_clean(%struct.eapol_test_data* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca %struct.eapol_test_data*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.extra_radius_attr*, align 8
  %6 = alloca %struct.extra_radius_attr*, align 8
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @wpa_sm_deinit(i32* %9)
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %14 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @radius_client_deinit(i32 %15)
  %17 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %18 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @wpabuf_free(i32 %19)
  %21 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %22 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @radius_msg_free(i32* %23)
  %25 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %26 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %28 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %27, i32 0, i32 2
  %29 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %28, align 8
  %30 = call i32 @os_free(%struct.extra_radius_attr* %29)
  %31 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %32 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %31, i32 0, i32 2
  store %struct.extra_radius_attr* null, %struct.extra_radius_attr** %32, align 8
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @eapol_sm_deinit(i32* %35)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %40 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %39, i32 0, i32 1
  %41 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %40, align 8
  %42 = icmp ne %struct.extra_radius_attr* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %2
  %44 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %45 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %44, i32 0, i32 1
  %46 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %45, align 8
  %47 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %46, i32 0, i32 1
  %48 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %47, align 8
  %49 = icmp ne %struct.extra_radius_attr* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %52 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %51, i32 0, i32 1
  %53 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %52, align 8
  %54 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %53, i32 0, i32 1
  %55 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %54, align 8
  %56 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %55, i32 0, i32 2
  %57 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %56, align 8
  %58 = call i32 @os_free(%struct.extra_radius_attr* %57)
  %59 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %60 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %59, i32 0, i32 1
  %61 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %60, align 8
  %62 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %61, i32 0, i32 1
  %63 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %62, align 8
  %64 = call i32 @os_free(%struct.extra_radius_attr* %63)
  br label %65

65:                                               ; preds = %50, %43, %2
  %66 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %67 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %66, i32 0, i32 1
  %68 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %67, align 8
  %69 = call i32 @os_free(%struct.extra_radius_attr* %68)
  %70 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %71 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %70, i32 0, i32 1
  store %struct.extra_radius_attr* null, %struct.extra_radius_attr** %71, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @scard_deinit(i32 %74)
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @wpa_supplicant_ctrl_iface_deinit(i32* %83)
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %65
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @ext_password_deinit(i32* %90)
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @wpa_config_free(i32 %96)
  %98 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %99 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %98, i32 0, i32 0
  %100 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %99, align 8
  store %struct.extra_radius_attr* %100, %struct.extra_radius_attr** %5, align 8
  br label %101

101:                                              ; preds = %104, %87
  %102 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %103 = icmp ne %struct.extra_radius_attr* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  store %struct.extra_radius_attr* %105, %struct.extra_radius_attr** %6, align 8
  %106 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %107 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %106, i32 0, i32 0
  %108 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %107, align 8
  store %struct.extra_radius_attr* %108, %struct.extra_radius_attr** %5, align 8
  %109 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %6, align 8
  %110 = call i32 @os_free(%struct.extra_radius_attr* %109)
  br label %101

111:                                              ; preds = %101
  ret void
}

declare dso_local i32 @wpa_sm_deinit(i32*) #1

declare dso_local i32 @radius_client_deinit(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @radius_msg_free(i32*) #1

declare dso_local i32 @os_free(%struct.extra_radius_attr*) #1

declare dso_local i32 @eapol_sm_deinit(i32*) #1

declare dso_local i32 @scard_deinit(i32) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_deinit(i32*) #1

declare dso_local i32 @ext_password_deinit(i32*) #1

declare dso_local i32 @wpa_config_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
