; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_ap_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_ap_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32 }

@ATTR_CRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_ap_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_ap_cred(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %6, %struct.wpabuf** %4, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %11, %struct.wpabuf** %5, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = call i32 @wpabuf_free(%struct.wpabuf* %15)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %20 = call i64 @wps_build_ap_settings(%struct.wps_data* %18, %struct.wpabuf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = call i32 @wpabuf_clear_free(%struct.wpabuf* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = call i32 @wpabuf_free(%struct.wpabuf* %25)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %41

27:                                               ; preds = %17
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = load i32, i32* @ATTR_CRED, align 4
  %30 = call i32 @wpabuf_put_be16(%struct.wpabuf* %28, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = call i32 @wpabuf_len(%struct.wpabuf* %32)
  %34 = call i32 @wpabuf_put_be16(%struct.wpabuf* %31, i32 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %37 = call i32 @wpabuf_put_buf(%struct.wpabuf* %35, %struct.wpabuf* %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %39 = call i32 @wpabuf_clear_free(%struct.wpabuf* %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %40, %struct.wpabuf** %2, align 8
  br label %41

41:                                               ; preds = %27, %22, %14, %9
  %42 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %42
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_ap_settings(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
