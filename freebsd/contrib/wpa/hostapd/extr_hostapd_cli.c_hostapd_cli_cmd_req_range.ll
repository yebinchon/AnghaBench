; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_req_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_req_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [134 x i8] c"Invalid req_range command: needs at least 4 arguments - dest address, randomization interval, min AP count, and 1 to 16 AP addresses\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"REQ_RANGE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i32, i8**)* @hostapd_cli_cmd_req_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd_req_range(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @printf(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %17

12:                                               ; preds = %3
  %13 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @hostapd_cli_cmd(%struct.wpa_ctrl* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %14, i8** %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @hostapd_cli_cmd(%struct.wpa_ctrl*, i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
