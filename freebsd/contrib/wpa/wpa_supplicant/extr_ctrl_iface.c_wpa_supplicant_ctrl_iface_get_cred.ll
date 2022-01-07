; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_cred = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CTRL_IFACE: GET_CRED id=%d name='%s'\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CTRL_IFACE: Could not find cred id=%d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"CTRL_IFACE: Failed to get cred variable '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpa_supplicant_ctrl_iface_get_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_get_cred(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpa_cred*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @os_strchr(i8* %15, i8 signext 32)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

20:                                               ; preds = %4
  %21 = load i8*, i8** %13, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %13, align 8
  store i8 0, i8* %21, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.wpa_cred* @wpa_config_get_cred(i32 %31, i32 %32)
  store %struct.wpa_cred* %33, %struct.wpa_cred** %12, align 8
  %34 = load %struct.wpa_cred*, %struct.wpa_cred** %12, align 8
  %35 = icmp eq %struct.wpa_cred* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %5, align 4
  br label %66

40:                                               ; preds = %20
  %41 = load %struct.wpa_cred*, %struct.wpa_cred** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i8* @wpa_config_get_cred_no_key(%struct.wpa_cred* %41, i8* %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %5, align 4
  br label %66

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @os_strlcpy(i8* %51, i8* %52, i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @os_free(i8* %59)
  store i32 -1, i32* %5, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @os_free(i8* %62)
  %64 = load i64, i64* %11, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58, %46, %36, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpa_cred* @wpa_config_get_cred(i32, i32) #1

declare dso_local i8* @wpa_config_get_cred_no_key(%struct.wpa_cred*, i8*) #1

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
