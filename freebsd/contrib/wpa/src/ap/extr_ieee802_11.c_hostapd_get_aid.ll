; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_hostapd_get_aid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_hostapd_get_aid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32* }
%struct.sta_info = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  old AID %d\00", align 1
@AID_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  new AID %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_get_aid(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 32, i32* %7, align 4
  %9 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = call i64 (...) @TEST_FAIL()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %99

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AID_WORDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %64

38:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %67

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %24

67:                                               ; preds = %62, %24
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %99

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 32
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 2007
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %99

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %87 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %85
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %80, %79, %70, %22, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
