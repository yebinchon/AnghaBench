; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_process.c_wps_workaround_cred_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_process.c_wps_workaround_cred_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i32, i32, i64* }

@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"WPS: Workaround - remove NULL termination from ASCII passphrase\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"WPS: Reject credential with invalid WPA/WPA2-Personal passphrase\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WPS: Network Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_credential*)* @wps_workaround_cred_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_workaround_cred_key(%struct.wps_credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_credential*, align 8
  store %struct.wps_credential* %0, %struct.wps_credential** %3, align 8
  %4 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %5 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %8 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %14 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 8
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %19 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %24 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %27 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %38 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %22, %17, %12, %1
  %42 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %43 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %46 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %41
  %51 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %52 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %57 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %60 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @has_ctrl_char(i64* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %55, %50
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %69 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %72 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wpa_hexdump_ascii_key(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %70, i32 %73)
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %55, %41
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @has_ctrl_char(i64*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
