; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_chan_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_chan_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [187 x i8] c"Invalid chan_switch command: needs at least two arguments (count and freq)\0Ausage: <cs_count> <freq> [sec_channel_offset=] [center_freq1=] [center_freq2=] [bandwidth=] [blocktx] [ht|vht]\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CHAN_SWITCH %s %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Too long CHAN_SWITCH command.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i32, i8**)* @hostapd_cli_cmd_chan_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd_chan_switch(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @printf(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @os_snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @os_snprintf_error(i32 256, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %12, align 4
  store i32 2, i32* %10, align 4
  br label %33

33:                                               ; preds = %66, %31
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 256, %44
  %46 = trunc i64 %45 to i32
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @os_snprintf(i8* %42, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 256, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @os_snprintf_error(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %33

69:                                               ; preds = %33
  %70 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %5, align 8
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %72 = call i32 @wpa_ctrl_command(%struct.wpa_ctrl* %70, i8* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %60, %29, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_ctrl_command(%struct.wpa_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
