; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_ctrl_req_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_ctrl_req_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"IDENTITY\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"New Password\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"NEW_PASSWORD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OTP\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Private key passphrase\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PASSPHRASE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"SIM\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"PSK or passphrase\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"PSK_PASSPHRASE\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"External server certificate validation\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"EXT_CERT_CHECK\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"No message for request %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_supplicant_ctrl_req_to_string(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8**, i8*** %6, align 8
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 136, label %11
    i32 132, label %13
    i32 135, label %15
    i32 131, label %17
    i32 134, label %19
    i32 133, label %20
    i32 128, label %22
    i32 129, label %23
    i32 130, label %25
  ]

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %28

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %28

15:                                               ; preds = %3
  %16 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %28

17:                                               ; preds = %3
  %18 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %28

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %28

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %28

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %28

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %24, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8** %26, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25, %23, %22, %20, %19, %17, %15, %13, %11
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @MSG_WARNING, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %34)
  store i8* null, i8** %7, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
