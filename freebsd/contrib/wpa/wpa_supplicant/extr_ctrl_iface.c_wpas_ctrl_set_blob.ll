; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_set_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_set_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_config_blob = type { i64, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CTRL: Set blob '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CTRL: Invalid blob hex data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_set_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_set_blob(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_config_blob*, align 8
  %8 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @os_strchr(i8* %10, i8 signext 32)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 0, i8* %16, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @os_strlen(i8* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = and i64 %20, 1
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %78

24:                                               ; preds = %15
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call %struct.wpa_config_blob* @os_zalloc(i32 24)
  store %struct.wpa_config_blob* %28, %struct.wpa_config_blob** %7, align 8
  %29 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %30 = icmp eq %struct.wpa_config_blob* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %78

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = call i32* @os_strdup(i8* %33)
  %35 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = udiv i64 %37, 2
  %39 = call i32* @os_malloc(i64 %38)
  %40 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %41 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %43 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %32
  %52 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %53 = call i32 @wpa_config_free_blob(%struct.wpa_config_blob* %52)
  store i32 -1, i32* %3, align 4
  br label %78

54:                                               ; preds = %46
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %57 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = udiv i64 %59, 2
  %61 = call i64 @hexstr2bin(i8* %55, i32* %58, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %67 = call i32 @wpa_config_free_blob(%struct.wpa_config_blob* %66)
  store i32 -1, i32* %3, align 4
  br label %78

68:                                               ; preds = %54
  %69 = load i64, i64* %8, align 8
  %70 = udiv i64 %69, 2
  %71 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %72 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %7, align 8
  %77 = call i32 @wpa_config_set_blob(i32 %75, %struct.wpa_config_blob* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %63, %51, %31, %23, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpa_config_blob* @os_zalloc(i32) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @wpa_config_free_blob(%struct.wpa_config_blob*) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local i32 @wpa_config_set_blob(i32, %struct.wpa_config_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
