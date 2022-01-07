; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_add_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wps_add_pin_data = type { i32, i64, i32*, i32, i32*, i32* }

@UUID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@wps_add_pin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_wps_add_pin(%struct.hostapd_data* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wps_add_pin_data, align 8
  %15 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @UUID_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 5
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 2
  store i32* %19, i32** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 4
  store i32* %24, i32** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @os_strlen(i8* %26)
  %28 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @os_strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %44

37:                                               ; preds = %5
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @uuid_str2bin(i8* %38, i32* %19)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %56

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 2
  store i32* %19, i32** %43, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %46 = load i32, i32* @wps_add_pin, align 4
  %47 = call i64 @hostapd_wps_for_each(%struct.hostapd_data* %45, i32 %46, %struct.wps_add_pin_data* %14)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.wps_add_pin_data, %struct.wps_add_pin_data* %14, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 -1
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %56

56:                                               ; preds = %50, %49, %41
  %57 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @os_strcmp(i8*, i8*) #2

declare dso_local i64 @uuid_str2bin(i8*, i32*) #2

declare dso_local i64 @hostapd_wps_for_each(%struct.hostapd_data*, i32, %struct.wps_add_pin_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
