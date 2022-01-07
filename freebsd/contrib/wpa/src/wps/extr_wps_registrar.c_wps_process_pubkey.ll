; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_pubkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS: No Public Key received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, i32*, i64)* @wps_process_pubkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_pubkey(%struct.wps_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %32

16:                                               ; preds = %10
  %17 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %18 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @wpabuf_free(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32* @wpabuf_alloc_copy(i32* %21, i64 %22)
  %24 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %25 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %32

31:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32* @wpabuf_alloc_copy(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
