; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_learn_data = type { i32, i32, %struct.TYPE_4__*, %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.wpa_supplicant = type { i32 }
%struct.wpa_driver_scan_params = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"bgscan learn: BSSes in this ESS have been seen on %u channels\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"bgscan learn: Scanning frequencies:%s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"bgscan learn: Request a background scan\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"bgscan learn: Failed to trigger scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @bgscan_learn_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgscan_learn_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bgscan_learn_data*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_driver_scan_params, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.bgscan_learn_data*
  store %struct.bgscan_learn_data* %15, %struct.bgscan_learn_data** %5, align 8
  %16 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %17 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %16, i32 0, i32 3
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %17, align 8
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %6, align 8
  store i32* null, i32** %8, align 8
  %19 = call i32 @os_memset(%struct.wpa_driver_scan_params* %7, i32 0, i32 24)
  %20 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %22 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %31 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %40 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %47 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  br label %117

52:                                               ; preds = %2
  %53 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %54 = call i32* @bgscan_learn_get_freqs(%struct.bgscan_learn_data* %53, i64* %9)
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32* @bgscan_learn_get_probe_freq(%struct.bgscan_learn_data* %59, i32* %60, i64 %61)
  store i32* %62, i32** %8, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %63, align 16
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %64, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %106, %52
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi i1 [ false, %65 ], [ %73, %68 ]
  br i1 %75, label %76, label %109

76:                                               ; preds = %74
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %78, i64 100
  %80 = load i8*, i8** %12, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @os_snprintf(i8* %77, i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %90, i64 100
  %92 = load i8*, i8** %12, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @os_snprintf_error(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %76
  br label %109

101:                                              ; preds = %76
  %102 = load i32, i32* %13, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %12, align 8
  br label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %65

109:                                              ; preds = %100, %74
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  br label %117

117:                                              ; preds = %109, %45
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %121 = call i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant* %120, %struct.wpa_driver_scan_params* %7)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %127 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %130 = call i32 @eloop_register_timeout(i32 %128, i32 0, void (i8*, i8*)* @bgscan_learn_timeout, %struct.bgscan_learn_data* %129, i32* null)
  br label %135

131:                                              ; preds = %117
  %132 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %133 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %132, i32 0, i32 0
  %134 = call i32 @os_get_reltime(i32* %133)
  br label %135

135:                                              ; preds = %131, %123
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @os_free(i32* %136)
  ret void
}

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32* @bgscan_learn_get_freqs(%struct.bgscan_learn_data*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @bgscan_learn_get_probe_freq(%struct.bgscan_learn_data*, i32*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.bgscan_learn_data*, i32*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
