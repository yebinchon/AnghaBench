; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_setkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_setkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32 }
%struct.wpa_group = type { i32, i32, i32, i32, i64, i32, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"WPA: group state machine entering state SETKEYS (VLAN-ID %d)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WPA_GROUP_SETKEYS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"wpa_group_setkeys: Unexpected GKeyDoneStations=%d when starting new GTK rekey\00", align 1
@wpa_group_update_sta = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"wpa_group_setkeys: GKeyDoneStations=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_setkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_group_setkeys(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* @TRUE, align 4
  %12 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @WPA_GROUP_SETKEYS, align 4
  %15 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %32 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %33 = call i32 @wpa_gtk_update(%struct.wpa_authenticator* %31, %struct.wpa_group* %32)
  %34 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %2
  %47 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %48 = load i32, i32* @wpa_group_update_sta, align 4
  %49 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %50 = call i32 @wpa_auth_for_each_sta(%struct.wpa_authenticator* %47, i32 %48, %struct.wpa_group* %49)
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpa_gtk_update(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_auth_for_each_sta(%struct.wpa_authenticator*, i32, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
