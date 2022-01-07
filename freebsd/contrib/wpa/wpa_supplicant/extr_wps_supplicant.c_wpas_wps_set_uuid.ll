; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_set_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_set_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, i32, %struct.wps_context*, %struct.TYPE_3__*, %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }
%struct.wps_context = type { i32 }

@WPS_UUID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"from the first interface\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"based on random data\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"based on MAC address\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"based on configuration\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"WPS: UUID %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wps_context*)* @wpas_wps_set_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_set_uuid(%struct.wpa_supplicant* %0, %struct.wps_context* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wps_context* %1, %struct.wps_context** %4, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @is_nil_uuid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %2
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %19, align 8
  store %struct.wpa_supplicant* %20, %struct.wpa_supplicant** %7, align 8
  br label %21

21:                                               ; preds = %31, %15
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %23 = icmp ne %struct.wpa_supplicant* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 4
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %26, align 8
  %28 = icmp ne %struct.wpa_supplicant* %27, null
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 4
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %33, align 8
  store %struct.wpa_supplicant* %34, %struct.wpa_supplicant** %7, align 8
  br label %21

35:                                               ; preds = %29
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %37 = icmp ne %struct.wpa_supplicant* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = icmp ne %struct.wpa_supplicant* %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %47, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 2
  %50 = load %struct.wps_context*, %struct.wps_context** %49, align 8
  %51 = icmp ne %struct.wps_context* %43, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %54 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %59, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 2
  %62 = load %struct.wps_context*, %struct.wps_context** %61, align 8
  %63 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WPS_UUID_LEN, align 4
  %66 = call i32 @os_memcpy(i32 %55, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %52, %42
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %89

68:                                               ; preds = %38, %35
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %77 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @uuid_random(i32 %78)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %88

80:                                               ; preds = %68
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %85 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @uuid_gen_mac_addr(i32 %83, i32 %86)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %88

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88, %67
  br label %101

90:                                               ; preds = %2
  %91 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %92 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @WPS_UUID_LEN, align 4
  %100 = call i32 @os_memcpy(i32 %93, i32 %98, i32 %99)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %101

101:                                              ; preds = %90, %89
  %102 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %103 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %106 = call i32 @uuid_bin2str(i32 %104, i8* %105, i32 50)
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %111 = call i32 @wpa_dbg(%struct.wpa_supplicant* %107, i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %109, i8* %110)
  ret void
}

declare dso_local i64 @is_nil_uuid(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @uuid_random(i32) #1

declare dso_local i32 @uuid_gen_mac_addr(i32, i32) #1

declare dso_local i32 @uuid_bin2str(i32, i8*, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
