; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Invalid %s command - at least %d argument%s required.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"s are\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i8*, i32, i32, i8**)* @hostapd_cli_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd(%struct.wpa_ctrl* %0, i8* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca [4096 x i8], align 16
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i8* %22)
  store i32 -1, i32* %6, align 4
  br label %36

24:                                               ; preds = %5
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8**, i8*** %11, align 8
  %29 = call i64 @write_cmd(i8* %25, i32 4096, i8* %26, i32 %27, i8** %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %7, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %35 = call i32 @wpa_ctrl_command(%struct.wpa_ctrl* %33, i8* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %31, %16
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @write_cmd(i8*, i32, i8*, i32, i8**) #1

declare dso_local i32 @wpa_ctrl_command(%struct.wpa_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
