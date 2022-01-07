; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_authenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.wpa_driver_auth_params*)* }
%struct.wpa_driver_auth_params = type { i64, i64, i64, i32*, i32*, i32, i32, i32, i64*, i32*, i32, i32, i32, i32 }
%struct.privsep_cmd_authenticate = type { i32, i32, i64, i32, i32, i32, i64*, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid authentication request\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Authentication request overflow\00", align 1
@SSID_MAX_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"drv->authenticate: res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i8*, i64)* @wpa_priv_cmd_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_authenticate(%struct.wpa_priv_interface* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpa_driver_auth_params, align 8
  %8 = alloca %struct.privsep_cmd_authenticate*, align 8
  %9 = alloca i32, align 4
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
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.wpa_driver_auth_params*)*, i32 (i32*, %struct.wpa_driver_auth_params*)** %19, align 8
  %21 = icmp eq i32 (i32*, %struct.wpa_driver_auth_params*)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %3
  br label %177

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 64
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %177

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.privsep_cmd_authenticate*
  store %struct.privsep_cmd_authenticate* %31, %struct.privsep_cmd_authenticate** %8, align 8
  %32 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %33 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 64, %35
  %37 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %38 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %36, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %177

47:                                               ; preds = %29
  %48 = call i32 @os_memset(%struct.wpa_driver_auth_params* %7, i32 0, i32 88)
  %49 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %50 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 13
  store i32 %51, i32* %52, align 4
  %53 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %54 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 12
  store i32 %55, i32* %56, align 8
  %57 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %58 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 11
  store i32 %59, i32* %60, align 4
  %61 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %62 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SSID_MAX_LEN, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %177

67:                                               ; preds = %47
  %68 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %69 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %73 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 10
  store i32 %74, i32* %75, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %114, %67
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %117

79:                                               ; preds = %76
  %80 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %81 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %80, i32 0, i32 6
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %79
  %89 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %90 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 9
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %102 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %101, i32 0, i32 6
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 8
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %107, i64* %112, align 8
  br label %113

113:                                              ; preds = %88, %79
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %76

117:                                              ; preds = %76
  %118 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %119 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 7
  store i32 %120, i32* %121, align 8
  %122 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %123 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 6
  store i32 %124, i32* %125, align 4
  %126 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %127 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 5
  store i32 %128, i32* %129, align 8
  %130 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %131 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %117
  %135 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %136 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %135, i64 1
  %137 = bitcast %struct.privsep_cmd_authenticate* %136 to i32*
  %138 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 4
  store i32* %137, i32** %138, align 8
  %139 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %140 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 1
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %134, %117
  %145 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %146 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %151 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %150, i64 1
  %152 = bitcast %struct.privsep_cmd_authenticate* %151 to i32*
  %153 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %154 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 3
  store i32* %157, i32** %158, align 8
  %159 = load %struct.privsep_cmd_authenticate*, %struct.privsep_cmd_authenticate** %8, align 8
  %160 = getelementptr inbounds %struct.privsep_cmd_authenticate, %struct.privsep_cmd_authenticate* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.wpa_driver_auth_params, %struct.wpa_driver_auth_params* %7, i32 0, i32 2
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %149, %144
  %165 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %166 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32 (i32*, %struct.wpa_driver_auth_params*)*, i32 (i32*, %struct.wpa_driver_auth_params*)** %168, align 8
  %170 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %171 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 %169(i32* %172, %struct.wpa_driver_auth_params* %7)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %164, %66, %44, %26, %22
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_auth_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
