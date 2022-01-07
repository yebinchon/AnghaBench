; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_global_ctrl_iface_ifname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_global_ctrl_iface_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32, %struct.wpa_supplicant* }

@.str = private unnamed_addr constant [22 x i8] c"FAIL-NO-IFNAME-MATCH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wpa_global*, i8*, i8*, i64*)* @wpas_global_ctrl_iface_ifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpas_global_ctrl_iface_ifname(%struct.wpa_global* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_global*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %12, i32 0, i32 0
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %10, align 8
  br label %15

15:                                               ; preds = %27, %4
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %17 = icmp ne %struct.wpa_supplicant* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @os_strcmp(i8* %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %29, align 8
  store %struct.wpa_supplicant* %30, %struct.wpa_supplicant** %10, align 8
  br label %15

31:                                               ; preds = %25, %15
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %33 = icmp eq %struct.wpa_supplicant* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = call i8* @os_strdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @os_strlen(i8* %39)
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i64*, i64** %9, align 8
  store i64 1, i64* %43, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %5, align 8
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant* %47, i8* %48, i64* %49)
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
