; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, %struct.wpa_driver_scan_params*)* }
%struct.wpa_driver_scan_params = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.privsep_cmd_scan = type { i32, i32, i32*, i32*, i32* }

@PRIVSEP_MAX_SCAN_FREQS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid scan request\00", align 1
@WPAS_MAX_SCAN_SSIDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid scan request (num_ssids)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid scan request (num_freqs)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i8*, i64)* @wpa_priv_cmd_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_scan(%struct.wpa_priv_interface* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpa_driver_scan_params, align 8
  %8 = alloca %struct.privsep_cmd_scan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @PRIVSEP_MAX_SCAN_FREQS, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %140

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 32
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %140

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.privsep_cmd_scan*
  store %struct.privsep_cmd_scan* %31, %struct.privsep_cmd_scan** %8, align 8
  %32 = call i32 @os_memset(%struct.wpa_driver_scan_params* %7, i32 0, i32 24)
  %33 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %34 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WPAS_MAX_SCAN_SSIDS, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %140

41:                                               ; preds = %29
  %42 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %43 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %79, %41
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %49 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %54 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %67 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %52
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %46

82:                                               ; preds = %46
  %83 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %84 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PRIVSEP_MAX_SCAN_FREQS, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %140

91:                                               ; preds = %82
  %92 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %93 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %100 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.privsep_cmd_scan*, %struct.privsep_cmd_scan** %8, align 8
  %105 = getelementptr inbounds %struct.privsep_cmd_scan, %struct.privsep_cmd_scan* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %17, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %17, i64 %119
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 1
  store i32* %17, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %91
  %123 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %124 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32 (i32*, %struct.wpa_driver_scan_params*)*, i32 (i32*, %struct.wpa_driver_scan_params*)** %126, align 8
  %128 = icmp ne i32 (i32*, %struct.wpa_driver_scan_params*)* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %131 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (i32*, %struct.wpa_driver_scan_params*)*, i32 (i32*, %struct.wpa_driver_scan_params*)** %133, align 8
  %135 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %136 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 %134(i32* %137, %struct.wpa_driver_scan_params* %7)
  br label %139

139:                                              ; preds = %129, %122
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %139, %88, %38, %26, %22
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %12, align 4
  switch i32 %142, label %144 [
    i32 0, label %143
    i32 1, label %143
  ]

143:                                              ; preds = %140, %140
  ret void

144:                                              ; preds = %140
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
