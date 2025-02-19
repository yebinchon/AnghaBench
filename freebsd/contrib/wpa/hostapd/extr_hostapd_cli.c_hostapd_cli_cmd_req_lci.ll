; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_req_lci.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_req_lci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Invalid req_lci command - requires destination address\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"REQ_LCI %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Too long REQ_LCI command.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i32, i8**)* @hostapd_cli_cmd_req_lci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd_req_lci(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @os_snprintf(i8* %15, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @os_snprintf_error(i32 256, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %5, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = call i32 @wpa_ctrl_command(%struct.wpa_ctrl* %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %23, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_ctrl_command(%struct.wpa_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
