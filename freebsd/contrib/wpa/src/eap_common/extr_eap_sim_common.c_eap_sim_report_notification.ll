; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_report_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_report_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"AKA\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SIM\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"EAP-%s: General failure notification (after authentication)\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"EAP-%s: Failure notification: User has been temporarily denied access to the requested service\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"EAP-%s: Failure notification: User has not subscribed to the requested service\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"EAP-%s: General failure notification (before authentication)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"EAP-%s: Successful authentication notification\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"EAP-%s: Unrecognized non-failure notification %d\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"EAP-%s: Unrecognized failure notification %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sim_report_notification(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %33 [
    i32 132, label %13
    i32 128, label %17
    i32 130, label %21
    i32 131, label %25
    i32 129, label %29
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_WARNING, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  br label %47

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_WARNING, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_WARNING, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  br label %47

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_WARNING, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %27)
  br label %47

29:                                               ; preds = %3
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  br label %47

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 32768
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %38, i32 %39)
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @MSG_WARNING, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %29, %25, %21, %17, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
