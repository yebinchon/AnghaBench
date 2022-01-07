; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_key_mgmt_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_key_mgmt_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPA2+WPA/IEEE 802.1X/EAP\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"WPA2/IEEE 802.1X/EAP\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"WPA/IEEE 802.1X/EAP\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"WPA2-PSK+WPA-PSK\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"WPA2-PSK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"WPA-PSK\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"WPA-NONE\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"IEEE 802.1X (no WPA)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"WPS\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"SAE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"FT-SAE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"OSEN\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"WPA2-EAP-SUITE-B\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"WPA2-EAP-SUITE-B-192\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"FILS-SHA256\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"FILS-SHA384\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"FT-FILS-SHA256\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"FT-FILS-SHA384\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"OWE\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"DPP\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_key_mgmt_txt(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %48 [
    i32 140, label %7
    i32 132, label %20
    i32 135, label %33
    i32 129, label %34
    i32 139, label %35
    i32 128, label %36
    i32 130, label %37
    i32 141, label %38
    i32 134, label %39
    i32 137, label %40
    i32 136, label %41
    i32 148, label %42
    i32 147, label %43
    i32 146, label %44
    i32 145, label %45
    i32 133, label %46
    i32 149, label %47
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @WPA_PROTO_RSN, align 4
  %10 = load i32, i32* @WPA_PROTO_WPA, align 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %49

14:                                               ; preds = %7
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @WPA_PROTO_RSN, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)
  store i8* %19, i8** %3, align 8
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WPA_PROTO_RSN, align 4
  %23 = load i32, i32* @WPA_PROTO_WPA, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %49

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @WPA_PROTO_RSN, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  store i8* %32, i8** %3, align 8
  br label %49

33:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %49

34:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %49

35:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %49

36:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %49

37:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %49

38:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %49

39:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %49

40:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %49

41:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %49

42:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %49

43:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %49

44:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %49

45:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %49

46:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %49

47:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %49

48:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %27, %26, %14, %13
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
