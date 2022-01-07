; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_get_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_get_msg(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.wpabuf* @wps_registrar_get_msg(%struct.wps_data* %11, i32* %12)
  store %struct.wpabuf* %13, %struct.wpabuf** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.wpabuf* @wps_enrollee_get_msg(%struct.wps_data* %15, i32* %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %3, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %19
}

declare dso_local %struct.wpabuf* @wps_registrar_get_msg(%struct.wps_data*, i32*) #1

declare dso_local %struct.wpabuf* @wps_enrollee_get_msg(%struct.wps_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
