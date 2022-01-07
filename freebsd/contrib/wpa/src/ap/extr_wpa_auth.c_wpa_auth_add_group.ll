; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_add_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_add_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_group = type { %struct.wpa_group* }
%struct.wpa_authenticator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_group* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPA: Add group state machine for VLAN-ID %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_group* (%struct.wpa_authenticator*, i32)* @wpa_auth_add_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_group* @wpa_auth_add_group(%struct.wpa_authenticator* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_group*, align 8
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %8 = icmp eq %struct.wpa_authenticator* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store %struct.wpa_group* null, %struct.wpa_group** %3, align 8
  br label %39

15:                                               ; preds = %9
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.wpa_group* @wpa_group_init(%struct.wpa_authenticator* %19, i32 %20, i32 0)
  store %struct.wpa_group* %21, %struct.wpa_group** %6, align 8
  %22 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %23 = icmp eq %struct.wpa_group* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store %struct.wpa_group* null, %struct.wpa_group** %3, align 8
  br label %39

25:                                               ; preds = %15
  %26 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.wpa_group*, %struct.wpa_group** %29, align 8
  %31 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %31, i32 0, i32 0
  store %struct.wpa_group* %30, %struct.wpa_group** %32, align 8
  %33 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %34 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.wpa_group* %33, %struct.wpa_group** %37, align 8
  %38 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  store %struct.wpa_group* %38, %struct.wpa_group** %3, align 8
  br label %39

39:                                               ; preds = %25, %24, %14
  %40 = load %struct.wpa_group*, %struct.wpa_group** %3, align 8
  ret %struct.wpa_group* %40
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.wpa_group* @wpa_group_init(%struct.wpa_authenticator*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
