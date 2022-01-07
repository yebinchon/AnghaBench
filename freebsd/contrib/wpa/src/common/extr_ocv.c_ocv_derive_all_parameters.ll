; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_derive_all_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_derive_all_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oci_info = type { i64, i32, i32, i32, i32 }
%struct.oper_class_map = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Error interpreting OCI: unrecognized opclass/channel pair (%d/%d)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Error interpreting OCI: Unrecognized opclass (%d)\00", align 1
@BW40PLUS = common dso_local global i64 0, align 8
@BW40MINUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocv_derive_all_parameters(%struct.oci_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oci_info*, align 8
  %4 = alloca %struct.oper_class_map*, align 8
  store %struct.oci_info* %0, %struct.oci_info** %3, align 8
  %5 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %6 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %9 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ieee80211_chan_to_freq(i32* null, i32 %7, i32 %10)
  %12 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %13 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %15 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %21 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %24 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  store i32 -1, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  %28 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %29 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.oper_class_map* @get_oper_class(i32* null, i32 %30)
  store %struct.oper_class_map* %31, %struct.oper_class_map** %4, align 8
  %32 = load %struct.oper_class_map*, %struct.oper_class_map** %4, align 8
  %33 = icmp ne %struct.oper_class_map* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %37 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %2, align 4
  br label %66

40:                                               ; preds = %27
  %41 = load %struct.oper_class_map*, %struct.oper_class_map** %4, align 8
  %42 = call i32 @oper_class_bw_to_int(%struct.oper_class_map* %41)
  %43 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %44 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %46 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %45, i32 0, i32 1
  store i32 0, i32* %46, align 8
  %47 = load %struct.oper_class_map*, %struct.oper_class_map** %4, align 8
  %48 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BW40PLUS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %54 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %65

55:                                               ; preds = %40
  %56 = load %struct.oper_class_map*, %struct.oper_class_map** %4, align 8
  %57 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BW40MINUS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.oci_info*, %struct.oci_info** %3, align 8
  %63 = getelementptr inbounds %struct.oci_info, %struct.oci_info* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %52
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %34, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @ieee80211_chan_to_freq(i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.oper_class_map* @get_oper_class(i32*, i32) #1

declare dso_local i32 @oper_class_bw_to_int(%struct.oper_class_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
