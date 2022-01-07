; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_associate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, %struct.wpa_driver_associate_params*)* }
%struct.wpa_driver_associate_params = type { i32*, i64, i32*, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.privsep_cmd_associate = type { i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid association request\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Association request overflow\00", align 1
@SSID_MAX_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"drv->associate: res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i8*, i64)* @wpa_priv_cmd_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_associate(%struct.wpa_priv_interface* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpa_driver_associate_params, align 8
  %8 = alloca %struct.privsep_cmd_associate*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.wpa_driver_associate_params*)*, i32 (i32*, %struct.wpa_driver_associate_params*)** %19, align 8
  %21 = icmp eq i32 (i32*, %struct.wpa_driver_associate_params*)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %3
  br label %152

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 64
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %152

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.privsep_cmd_associate*
  store %struct.privsep_cmd_associate* %31, %struct.privsep_cmd_associate** %8, align 8
  %32 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %33 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 64, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %152

42:                                               ; preds = %29
  %43 = call i32 @os_memset(%struct.wpa_driver_associate_params* %7, i32 0, i32 72)
  %44 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %45 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %42
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 0
  store i32* %72, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %42
  %75 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %76 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 10
  store i32 %77, i32* %78, align 8
  %79 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %80 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SSID_MAX_LEN, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %152

85:                                               ; preds = %74
  %86 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %87 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %91 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %96 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %101 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %106 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %85
  %110 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %111 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %110, i64 1
  %112 = bitcast %struct.privsep_cmd_associate* %111 to i32*
  %113 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 2
  store i32* %112, i32** %113, align 8
  %114 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %115 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 3
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %109, %85
  %120 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %121 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 8
  store i32 %122, i32* %123, align 8
  %124 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %125 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 7
  store i32 %126, i32* %127, align 4
  %128 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %129 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 6
  store i32 %130, i32* %131, align 8
  %132 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %133 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 5
  store i32 %134, i32* %135, align 4
  %136 = load %struct.privsep_cmd_associate*, %struct.privsep_cmd_associate** %8, align 8
  %137 = getelementptr inbounds %struct.privsep_cmd_associate, %struct.privsep_cmd_associate* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %7, i32 0, i32 4
  store i32 %138, i32* %139, align 8
  %140 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %141 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32 (i32*, %struct.wpa_driver_associate_params*)*, i32 (i32*, %struct.wpa_driver_associate_params*)** %143, align 8
  %145 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %146 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 %144(i32* %147, %struct.wpa_driver_associate_params* %7)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %119, %84, %39, %26, %22
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_associate_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
