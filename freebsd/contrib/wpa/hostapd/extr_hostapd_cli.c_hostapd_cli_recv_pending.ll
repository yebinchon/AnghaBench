; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_recv_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_recv_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@ctrl_conn = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not read pending message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*, i32, i32)* @hostapd_cli_recv_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_cli_recv_pending(%struct.wpa_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** @ctrl_conn, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %49

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %48, %13
  %15 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %16 = call i64 @wpa_ctrl_pending(%struct.wpa_ctrl* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  store i64 4095, i64* %9, align 8
  %19 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %21 = call i64 @wpa_ctrl_recv(%struct.wpa_ctrl* %19, i8* %20, i64* %9)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @hostapd_cli_action_process(i8* %29, i64 %30)
  br label %45

32:                                               ; preds = %23
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %34 = call i32 @cli_event(i8* %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37, %32
  store i32 0, i32* %7, align 4
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %28
  br label %48

46:                                               ; preds = %18
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %49

48:                                               ; preds = %45
  br label %14

49:                                               ; preds = %12, %46, %14
  ret void
}

declare dso_local i64 @wpa_ctrl_pending(%struct.wpa_ctrl*) #1

declare dso_local i64 @wpa_ctrl_recv(%struct.wpa_ctrl*, i8*, i64*) #1

declare dso_local i32 @hostapd_cli_action_process(i8*, i64) #1

declare dso_local i32 @cli_event(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
