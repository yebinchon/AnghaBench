; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_mbie_get_peer_addr_for_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_mbie_get_peer_addr_for_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.multi_band_ie = type { i64, i32, i64 }

@WLAN_EID_MULTI_BAND = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unexpected eid %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid mbie len %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"mbie doesn't contain band %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.wpabuf*, i64)* @fst_mbie_get_peer_addr_for_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @fst_mbie_get_peer_addr_for_band(%struct.wpabuf* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.multi_band_ie*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = call i64* @wpabuf_head(%struct.wpabuf* %9)
  store i64* %10, i64** %6, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = call i64 @wpabuf_len(%struct.wpabuf* %11)
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %60, %2
  %14 = load i64, i64* %7, align 8
  %15 = icmp uge i64 %14, 2
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = load i64*, i64** %6, align 8
  %18 = bitcast i64* %17 to %struct.multi_band_ie*
  store %struct.multi_band_ie* %18, %struct.multi_band_ie** %8, align 8
  %19 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %20 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WLAN_EID_MULTI_BAND, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %27 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fst_printf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i64* null, i64** %3, align 8
  br label %79

30:                                               ; preds = %16
  %31 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %32 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 22
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %38 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, 2
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36, %30
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %47 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = call i32 @fst_printf(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  store i64* null, i64** %3, align 8
  br label %79

51:                                               ; preds = %36
  %52 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %53 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %59 = call i64* @fst_mbie_get_peer_addr(%struct.multi_band_ie* %58)
  store i64* %59, i64** %3, align 8
  br label %79

60:                                               ; preds = %51
  %61 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %62 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 2, %63
  %65 = load i64*, i64** %6, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %6, align 8
  %68 = load %struct.multi_band_ie*, %struct.multi_band_ie** %8, align 8
  %69 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %7, align 8
  br label %13

75:                                               ; preds = %13
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @fst_printf(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  store i64* null, i64** %3, align 8
  br label %79

79:                                               ; preds = %75, %57, %44, %24
  %80 = load i64*, i64** %3, align 8
  ret i64* %80
}

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @fst_printf(i32, i8*, i64) #1

declare dso_local i64* @fst_mbie_get_peer_addr(%struct.multi_band_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
