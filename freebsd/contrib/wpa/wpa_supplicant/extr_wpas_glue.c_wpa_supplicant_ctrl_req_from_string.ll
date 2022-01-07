; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_ctrl_req_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_ctrl_req_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"IDENTITY\00", align 1
@WPA_CTRL_REQ_EAP_IDENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@WPA_CTRL_REQ_EAP_PASSWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NEW_PASSWORD\00", align 1
@WPA_CTRL_REQ_EAP_NEW_PASSWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@WPA_CTRL_REQ_EAP_PIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"OTP\00", align 1
@WPA_CTRL_REQ_EAP_OTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"PASSPHRASE\00", align 1
@WPA_CTRL_REQ_EAP_PASSPHRASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"SIM\00", align 1
@WPA_CTRL_REQ_SIM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"PSK_PASSPHRASE\00", align 1
@WPA_CTRL_REQ_PSK_PASSPHRASE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"EXT_CERT_CHECK\00", align 1
@WPA_CTRL_REQ_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@WPA_CTRL_REQ_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_ctrl_req_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @os_strcmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @WPA_CTRL_REQ_EAP_IDENTITY, align 4
  store i32 %8, i32* %2, align 4
  br label %67

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @os_strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @WPA_CTRL_REQ_EAP_PASSWORD, align 4
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @os_strcmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @WPA_CTRL_REQ_EAP_NEW_PASSWORD, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @os_strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @WPA_CTRL_REQ_EAP_PIN, align 4
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @os_strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WPA_CTRL_REQ_EAP_OTP, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @os_strcmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @WPA_CTRL_REQ_EAP_PASSPHRASE, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @os_strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WPA_CTRL_REQ_SIM, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @os_strcmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @WPA_CTRL_REQ_PSK_PASSPHRASE, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @os_strcmp(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @WPA_CTRL_REQ_EXT_CERT_CHECK, align 4
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @WPA_CTRL_REQ_UNKNOWN, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
