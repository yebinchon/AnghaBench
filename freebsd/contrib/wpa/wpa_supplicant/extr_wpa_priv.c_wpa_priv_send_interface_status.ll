; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_interface_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_interface_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@PRIVSEP_EVENT_INTERFACE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %union.wpa_event_data*)* @wpa_priv_send_interface_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_send_interface_status(%struct.wpa_priv_interface* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_priv_interface*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  %10 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %11 = icmp eq %union.wpa_event_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %64

13:                                               ; preds = %2
  %14 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %15 = bitcast %union.wpa_event_data* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i64 8, i64* %7, align 8
  %18 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %19 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %36, %13
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %22
  %34 = phi i1 [ false, %22 ], [ %32, %26 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %22

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = add i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32* @os_malloc(i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %64

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 (i32*, ...) @os_memcpy(i32* %48, i32* %5, i64 4)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32*, ...) @os_memcpy(i32* %51, i8* %52, i64 %53)
  %55 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %56 = load i32, i32* @PRIVSEP_EVENT_INTERFACE_STATUS, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @wpa_priv_send_event(%struct.wpa_priv_interface* %55, i32 %56, i32* %57, i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @os_free(i32* %62)
  br label %64

64:                                               ; preds = %47, %46, %12
  ret void
}

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, ...) #1

declare dso_local i32 @wpa_priv_send_event(%struct.wpa_priv_interface*, i32, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
