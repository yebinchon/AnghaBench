; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_validate_rx_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_validate_rx_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32 }

@IKE_SA_INIT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"IKEV2: Unexpected Exchange Type %u in SA_INIT state\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"IKEV2: Unexpected Message ID %u in SA_INIT state\00", align 1
@IKE_SA_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"IKEV2: Unexpected Exchange Type %u in SA_AUTH state\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"IKEV2: Unexpected Message ID %u in SA_AUTH state\00", align 1
@CREATE_CHILD_SA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"IKEV2: Unexpected Exchange Type %u in CHILD_SA state\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"IKEV2: Unexpected Message ID %u in CHILD_SA state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, i32, i32)* @ikev2_validate_rx_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_validate_rx_state(%struct.ikev2_initiator_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %9 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %60 [
    i32 128, label %11
    i32 129, label %27
    i32 131, label %43
    i32 130, label %59
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IKE_SA_INIT, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %4, align 4
  br label %61

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %4, align 4
  br label %61

26:                                               ; preds = %19
  br label %60

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IKE_SA_AUTH, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %4, align 4
  br label %61

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %4, align 4
  br label %61

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CREATE_CHILD_SA, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %4, align 4
  br label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  store i32 -1, i32* %4, align 4
  br label %61

58:                                               ; preds = %51
  br label %60

59:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

60:                                               ; preds = %3, %58, %42, %26
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %54, %47, %38, %31, %22, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
