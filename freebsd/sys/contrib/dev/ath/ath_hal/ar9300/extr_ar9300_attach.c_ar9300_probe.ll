; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATHEROS_VENDOR_ID = common dso_local global i64 0, align 8
@AH_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Atheros AR938x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Atheros AR934x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Atheros AR9485\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Atheros AR9580\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Atheros AR946x/AR948x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Atheros AR933x\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Qualcomm Atheros QCA955x\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Qualcomm Atheros AR9565\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Qualcomm Atheros QCA953x\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Atheros AR1111\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @ar9300_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ar9300_probe(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ATHEROS_VENDOR_ID, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** @AH_NULL, align 8
  store i8* %10, i8** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %23 [
    i64 134, label %13
    i64 135, label %14
    i64 132, label %15
    i64 131, label %16
    i64 133, label %17
    i64 136, label %18
    i64 129, label %19
    i64 128, label %20
    i64 130, label %21
    i64 137, label %22
  ]

13:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %25

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %25

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %25

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %25

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %25

19:                                               ; preds = %11
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %25

20:                                               ; preds = %11
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %25

21:                                               ; preds = %11
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %25

22:                                               ; preds = %11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %25

23:                                               ; preds = %11
  %24 = load i8*, i8** @AH_NULL, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %9
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
