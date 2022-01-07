; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_gas_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_gas_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gas tests\00", align 1
@WLAN_ACTION_PUBLIC = common dso_local global i32 0, align 4
@WLAN_PA_GAS_INITIAL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gas_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gas_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wpabuf*, align 8
  %3 = load i32, i32* @MSG_INFO, align 4
  %4 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @gas_anqp_set_len(%struct.wpabuf* null)
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 1)
  store %struct.wpabuf* %6, %struct.wpabuf** %2, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %36

10:                                               ; preds = %0
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call i32 @gas_anqp_set_len(%struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = call i32 @wpabuf_free(%struct.wpabuf* %13)
  %15 = call %struct.wpabuf* @wpabuf_alloc(i32 20)
  store %struct.wpabuf* %15, %struct.wpabuf** %2, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %36

19:                                               ; preds = %10
  %20 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %21 = load i32, i32* @WLAN_ACTION_PUBLIC, align 4
  %22 = call i32 @wpabuf_put_u8(%struct.wpabuf* %20, i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %24 = load i32, i32* @WLAN_PA_GAS_INITIAL_REQ, align 4
  %25 = call i32 @wpabuf_put_u8(%struct.wpabuf* %23, i32 %24)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %26, i32 0)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %29 = call i32 @wpabuf_put_be32(%struct.wpabuf* %28, i32 0)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %30, i32 0)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %33 = call i32 @gas_anqp_set_len(%struct.wpabuf* %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %19, %18, %9
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
