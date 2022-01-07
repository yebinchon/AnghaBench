; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_report_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_report_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.radius_msg = type { i32 }

@RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON = common dso_local global i32 0, align 4
@RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1
@RADIUS_ATTR_ACCT_SESSION_ID = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not add Acct-Session-Id\00", align 1
@RADIUS_ACCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32)* @accounting_report_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accounting_report_state(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca [20 x i8], align 16
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %69

21:                                               ; preds = %15
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call %struct.radius_msg* @accounting_msg(%struct.hostapd_data* %22, i32* null, i32 %30)
  store %struct.radius_msg* %31, %struct.radius_msg** %5, align 8
  %32 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %33 = icmp ne %struct.radius_msg* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %69

35:                                               ; preds = %29
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @os_snprintf(i8* %41, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %47 = load i32, i32* @RADIUS_ATTR_ACCT_SESSION_ID, align 4
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %49 = bitcast i8* %48 to i32*
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %51 = call i32 @os_strlen(i8* %50)
  %52 = call i32 @radius_msg_add_attr(%struct.radius_msg* %46, i32 %47, i32* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @MSG_ERROR, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %40
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %63 = load i32, i32* @RADIUS_ACCT, align 4
  %64 = call i64 @radius_client_send(i32* %61, %struct.radius_msg* %62, i32 %63, i32* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %68 = call i32 @radius_msg_free(%struct.radius_msg* %67)
  br label %69

69:                                               ; preds = %20, %34, %66, %58
  ret void
}

declare dso_local %struct.radius_msg* @accounting_msg(%struct.hostapd_data*, i32*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @radius_client_send(i32*, %struct.radius_msg*, i32, i32*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
