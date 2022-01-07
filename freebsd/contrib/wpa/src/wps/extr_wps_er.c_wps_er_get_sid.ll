; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_get_sid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_get_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS ER: No SID received from %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"uuid:\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"WPS ER: Invalid SID received from %s (%s): '%s'\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"WPS ER: SID for subscription with %s (%s): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_er_ap*, i8*)* @wps_er_get_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_er_get_sid(%struct.wps_er_ap* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_er_ap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %13 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @inet_ntoa(i32 %14)
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %17 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  store i32 -1, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @os_strstr(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @inet_ntoa(i32 %29)
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33, i8* %34)
  store i32 -1, i32* %3, align 4
  br label %72

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %41 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @uuid_str2bin(i8* %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %48 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @inet_ntoa(i32 %49)
  %51 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %52 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53, i8* %54)
  store i32 -1, i32* %3, align 4
  br label %72

56:                                               ; preds = %36
  %57 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %58 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %61 = call i32 @uuid_bin2str(i32 %59, i8* %60, i32 100)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %64 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @inet_ntoa(i32 %65)
  %67 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %68 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %71 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69, i8* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %56, %45, %25, %10
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i64 @uuid_str2bin(i8*, i32) #1

declare dso_local i32 @uuid_bin2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
