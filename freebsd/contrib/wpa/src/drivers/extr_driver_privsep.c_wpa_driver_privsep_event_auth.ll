; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_event_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_event_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32, i32, i32, i32 }
%struct.privsep_event_auth = type { i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EVENT_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @wpa_driver_privsep_event_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_privsep_event_auth(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.wpa_event_data, align 8
  %8 = alloca %struct.privsep_event_auth*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 @os_memset(%union.wpa_event_data* %7, i32 0, i32 40)
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 24
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %76

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.privsep_event_auth*
  store %struct.privsep_event_auth* %15, %struct.privsep_event_auth** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %18 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %76

24:                                               ; preds = %13
  %25 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %29 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @os_memcpy(i32 %27, i32 %30, i32 %31)
  %33 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %37 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @os_memcpy(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %42 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %47 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %52 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %57 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %24
  %61 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %62 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %61, i64 1
  %63 = bitcast %struct.privsep_event_auth* %62 to i32*
  %64 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %8, align 8
  %67 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %60, %24
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @EVENT_AUTH, align 4
  %75 = call i32 @wpa_supplicant_event(i8* %73, i32 %74, %union.wpa_event_data* %7)
  br label %76

76:                                               ; preds = %72, %23, %12
  ret void
}

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i8*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
