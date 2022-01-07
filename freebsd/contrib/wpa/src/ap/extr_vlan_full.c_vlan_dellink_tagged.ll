; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_dellink_tagged.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_dellink_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@DYNAMIC_VLAN_NAMING_WITH_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vlan%d\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"VLAN: Interface name was truncated to %s\00", align 1
@DVLAN_CLEAN_VLAN_PORT = common dso_local global i32 0, align 4
@DVLAN_CLEAN_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, %struct.hostapd_data*)* @vlan_dellink_tagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_dellink_tagged(i32 %0, i8* %1, i8* %2, i32 %3, %struct.hostapd_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.hostapd_data* %4, %struct.hostapd_data** %10, align 8
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DYNAMIC_VLAN_NAMING_WITH_DEVICE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = trunc i64 %16 to i32
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %18, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  br label %31

27:                                               ; preds = %5
  %28 = trunc i64 %16 to i32
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %18, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %14, align 4
  %33 = trunc i64 %16 to i32
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @MSG_WARNING, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %40 = call i32 @dyn_iface_put(%struct.hostapd_data* %39, i8* %18)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DVLAN_CLEAN_VLAN_PORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @br_delif(i8* %46, i8* %18)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @DVLAN_CLEAN_VLAN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = call i32 @ifconfig_down(i8* %18)
  %55 = call i32 @vlan_rem(i8* %18)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #2

declare dso_local i32 @dyn_iface_put(%struct.hostapd_data*, i8*) #2

declare dso_local i32 @br_delif(i8*, i8*) #2

declare dso_local i32 @ifconfig_down(i8*) #2

declare dso_local i32 @vlan_rem(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
