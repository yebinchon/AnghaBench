; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_idr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i64*, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IKEV2: No IDr received\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"IKEV2: Too short IDr payload\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IKEV2: IDr ID Type %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"IKEV2: IDr\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"IKEV2: IDr differs from the one received earlier\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"IKEV2: Previous IDr ID Type %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Previous IKEV2: IDr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, i64*, i64)* @ikev2_process_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_idr(%struct.ikev2_initiator_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %96

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %96

20:                                               ; preds = %14
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 4
  store i64* %25, i64** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 4
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @wpa_hexdump_ascii(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %32, i64 %33)
  %35 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %36 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %78

39:                                               ; preds = %20
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %42 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %48 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load i64*, i64** %6, align 8
  %53 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %54 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @os_memcmp(i64* %52, i64* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %51, %45, %39
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %67 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %70 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @wpa_hexdump_ascii(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64* %68, i64 %71)
  store i32 -1, i32* %4, align 4
  br label %96

73:                                               ; preds = %51
  %74 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %75 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = call i32 @os_free(i64* %76)
  br label %78

78:                                               ; preds = %73, %20
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i64* @os_memdup(i64* %79, i64 %80)
  %82 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %83 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %82, i32 0, i32 0
  store i64* %81, i64** %83, align 8
  %84 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %85 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = icmp eq i64* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %96

89:                                               ; preds = %78
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %92 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %95 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %88, %59, %17, %11
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_memdup(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
