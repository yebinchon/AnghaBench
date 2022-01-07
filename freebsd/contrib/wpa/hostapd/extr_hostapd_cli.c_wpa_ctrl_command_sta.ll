; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_wpa_ctrl_command_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_wpa_ctrl_command_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@ctrl_conn = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Not connected to hostapd - command dropped.\0A\00", align 1
@hostapd_cli_msg_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"'%s' command timed out.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"'%s' command failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i8*, i8*, i64, i32)* @wpa_ctrl_command_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_ctrl_command_sta(%struct.wpa_ctrl* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** @ctrl_conn, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %76

20:                                               ; preds = %5
  store i64 4095, i64* %14, align 8
  %21 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %26 = load i32, i32* @hostapd_cli_msg_cb, align 4
  %27 = call i32 @wpa_ctrl_request(%struct.wpa_ctrl* %21, i8* %22, i32 %24, i8* %25, i64* %14, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 -2, i32* %6, align 4
  br label %76

33:                                               ; preds = %20
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 -1, i32* %6, align 4
  br label %76

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %44 = call i64 @memcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %76

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %67, %53
  %56 = load i8*, i8** %13, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %13, align 8
  br label %55

70:                                               ; preds = %65
  %71 = load i8*, i8** %13, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @os_strlcpy(i8* %72, i8* %73, i64 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %46, %36, %30, %18
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wpa_ctrl_request(%struct.wpa_ctrl*, i8*, i32, i8*, i64*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
