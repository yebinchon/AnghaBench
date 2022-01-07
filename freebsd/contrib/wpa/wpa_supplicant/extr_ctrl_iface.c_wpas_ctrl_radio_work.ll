; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_radio_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_radio_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"add \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpas_ctrl_radio_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_radio_work(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @os_strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @wpas_ctrl_radio_work_show(%struct.wpa_supplicant* %14, i8* %15, i64 %16)
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @os_strncmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @wpas_ctrl_radio_work_add(%struct.wpa_supplicant* %23, i8* %25, i8* %26, i64 %27)
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %18
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @os_strncmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = call i32 @wpas_ctrl_radio_work_done(%struct.wpa_supplicant* %34, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %33, %22, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpas_ctrl_radio_work_show(%struct.wpa_supplicant*, i8*, i64) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpas_ctrl_radio_work_add(%struct.wpa_supplicant*, i8*, i8*, i64) #1

declare dso_local i32 @wpas_ctrl_radio_work_done(%struct.wpa_supplicant*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
