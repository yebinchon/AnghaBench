; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_mb_ies_by_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_mb_ies_by_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.mb_ies_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@WLAN_EID_MULTI_BAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @mb_ies_by_info(%struct.mb_ies_info* %0) #0 {
  %2 = alloca %struct.mb_ies_info*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mb_ies_info* %0, %struct.mb_ies_info** %2, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  %6 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %7 = icmp ne %struct.mb_ies_info* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @WPA_ASSERT(i32 %8)
  %10 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %11 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %18 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %23 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 2, %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.wpabuf* @wpabuf_alloc(i64 %36)
  store %struct.wpabuf* %37, %struct.wpabuf** %3, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %39 = icmp ne %struct.wpabuf* %38, null
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %76, %40
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %44 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %49 = load i64, i64* @WLAN_EID_MULTI_BAND, align 8
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i64 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %52 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %53 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i64 %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %61 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %62 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mb_ies_info*, %struct.mb_ies_info** %2, align 8
  %69 = getelementptr inbounds %struct.mb_ies_info, %struct.mb_ies_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wpabuf_put_data(%struct.wpabuf* %60, i32 %67, i64 %74)
  br label %76

76:                                               ; preds = %47
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %41

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79, %35
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %82
}

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
