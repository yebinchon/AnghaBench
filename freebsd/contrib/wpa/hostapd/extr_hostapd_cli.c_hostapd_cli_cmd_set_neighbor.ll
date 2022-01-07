; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_set_neighbor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_set_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Invalid set_neighbor command: needs 3-6 arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SET_NEIGHBOR %s %s %s %s %s %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Too long SET_NEIGHBOR command.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i32, i8**)* @hostapd_cli_cmd_set_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd_set_neighbor(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 6
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

17:                                               ; preds = %12
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 4
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %43 ]
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 5
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %52 ]
  %55 = call i32 @os_snprintf(i8* %18, i32 2048, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %24, i8* %27, i8* %36, i8* %45, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @os_snprintf_error(i32 2048, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %5, align 8
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %64 = call i32 @wpa_ctrl_command(%struct.wpa_ctrl* %62, i8* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %59, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_ctrl_command(%struct.wpa_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
