; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_vendor_elem_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_vendor_elem_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64*, %struct.TYPE_2__*, %struct.wpa_supplicant* }
%struct.TYPE_2__ = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Update vendor elements\00", align 1
@NUM_VENDOR_ELEM_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"frame[%u]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_vendor_elem_update(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NUM_VENDOR_ELEM_FRAMES, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @os_snprintf(i8* %22, i32 30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @os_snprintf_error(i32 30, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @wpa_hexdump_buf(i32 %29, i8* %30, i64 %37)
  br label %39

39:                                               ; preds = %28, %21
  br label %40

40:                                               ; preds = %39, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
