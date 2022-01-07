; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_wpa_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_wpa_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"wpa_command(ifname='%s', cmd='%s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"wpa_command: wpa_ctrl_request failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"wpa_command: Command failed (FAIL received)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_command(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_ctrl*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.wpa_ctrl* @wpa_open_ctrl(i8* %12)
  store %struct.wpa_ctrl* %13, %struct.wpa_ctrl** %6, align 8
  %14 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %15 = icmp eq %struct.wpa_ctrl* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  store i64 128, i64* %8, align 8
  %18 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %23 = call i64 @wpa_ctrl_request(%struct.wpa_ctrl* %18, i8* %19, i32 %21, i8* %22, i64* %8, i32* null)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %28 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %27)
  store i32 -1, i32* %3, align 4
  br label %40

29:                                               ; preds = %17
  %30 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %31 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %30)
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %25, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.wpa_ctrl* @wpa_open_ctrl(i8*) #1

declare dso_local i64 @wpa_ctrl_request(%struct.wpa_ctrl*, i8*, i32, i8*, i64*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
