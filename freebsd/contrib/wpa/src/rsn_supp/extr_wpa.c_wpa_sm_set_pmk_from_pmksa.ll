; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk_from_pmksa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk_from_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPA: Set PMK based on current PMKSA\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"WPA: No current PMKSA - clear PMK\00", align 1
@PMK_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %4 = icmp eq %struct.wpa_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %53

6:                                                ; preds = %1
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wpa_hexdump_key(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %22)
  %24 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %25 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %35 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @os_memcpy(i32 %33, i32 %38, i64 %41)
  br label %53

43:                                               ; preds = %6
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %47 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %49 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PMK_LEN_MAX, align 4
  %52 = call i32 @os_memset(i32 %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %5, %43, %11
  ret void
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i64) #1

declare dso_local i32 @os_memcpy(i32, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
