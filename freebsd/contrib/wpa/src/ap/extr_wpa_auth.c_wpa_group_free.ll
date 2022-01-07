; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group* }
%struct.wpa_group = type { %struct.wpa_group*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WPA: Remove group state machine for VLAN-ID %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_group_free(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  %6 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %6, i32 0, i32 0
  %8 = load %struct.wpa_group*, %struct.wpa_group** %7, align 8
  store %struct.wpa_group* %8, %struct.wpa_group** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %31, %2
  %15 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %16 = icmp ne %struct.wpa_group* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %18, i32 0, i32 0
  %20 = load %struct.wpa_group*, %struct.wpa_group** %19, align 8
  %21 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %22 = icmp eq %struct.wpa_group* %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %24, i32 0, i32 0
  %26 = load %struct.wpa_group*, %struct.wpa_group** %25, align 8
  %27 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %27, i32 0, i32 0
  store %struct.wpa_group* %26, %struct.wpa_group** %28, align 8
  %29 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %30 = call i32 @os_free(%struct.wpa_group* %29)
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %32, i32 0, i32 0
  %34 = load %struct.wpa_group*, %struct.wpa_group** %33, align 8
  store %struct.wpa_group* %34, %struct.wpa_group** %5, align 8
  br label %14

35:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @os_free(%struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
