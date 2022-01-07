; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_wpa_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_wpa_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_cli_cmd = type { i8*, i32 (%struct.wpa_ctrl*, i32, i8**)* }
%struct.wpa_ctrl = type { i32 }

@hostapd_cli_commands = common dso_local global %struct.hostapd_cli_cmd* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Ambiguous command '%s'; possible commands:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown command '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*, i32, i8**)* @wpa_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_request(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.wpa_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.hostapd_cli_cmd*, align 8
  %8 = alloca %struct.hostapd_cli_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.hostapd_cli_cmd* null, %struct.hostapd_cli_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** @hostapd_cli_commands, align 8
  store %struct.hostapd_cli_cmd* %10, %struct.hostapd_cli_cmd** %7, align 8
  br label %11

11:                                               ; preds = %43, %3
  %12 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %13 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i64 @strncasecmp(i8* %19, i8* %22, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %16
  %30 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  store %struct.hostapd_cli_cmd* %30, %struct.hostapd_cli_cmd** %8, align 8
  %31 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @os_strcasecmp(i8* %33, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %46

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %16
  %44 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %44, i32 1
  store %struct.hostapd_cli_cmd* %45, %struct.hostapd_cli_cmd** %7, align 8
  br label %11

46:                                               ; preds = %39, %11
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** @hostapd_cli_commands, align 8
  store %struct.hostapd_cli_cmd* %54, %struct.hostapd_cli_cmd** %7, align 8
  br label %55

55:                                               ; preds = %78, %49
  %56 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i64 @strncasecmp(i8* %63, i8* %66, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %60
  %79 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %79, i32 1
  store %struct.hostapd_cli_cmd* %80, %struct.hostapd_cli_cmd** %7, align 8
  br label %55

81:                                               ; preds = %55
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %102

83:                                               ; preds = %46
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %101

91:                                               ; preds = %83
  %92 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %8, align 8
  %93 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %92, i32 0, i32 1
  %94 = load i32 (%struct.wpa_ctrl*, i32, i8**)*, i32 (%struct.wpa_ctrl*, i32, i8**)** %93, align 8
  %95 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = call i32 %94(%struct.wpa_ctrl* %95, i32 %97, i8** %99)
  br label %101

101:                                              ; preds = %91, %86
  br label %102

102:                                              ; preds = %101, %81
  ret void
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
