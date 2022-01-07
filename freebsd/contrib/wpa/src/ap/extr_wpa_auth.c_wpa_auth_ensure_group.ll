; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_ensure_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_ensure_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group* }
%struct.wpa_group = type { i32, i64, i32, %struct.wpa_group* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"WPA: Ensure group state machine running for VLAN ID %d\00", align 1
@WPA_GROUP_FATAL_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_ensure_group(%struct.wpa_authenticator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %8 = icmp eq %struct.wpa_authenticator* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

10:                                               ; preds = %2
  %11 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %11, i32 0, i32 0
  %13 = load %struct.wpa_group*, %struct.wpa_group** %12, align 8
  store %struct.wpa_group* %13, %struct.wpa_group** %6, align 8
  br label %14

14:                                               ; preds = %24, %10
  %15 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %16 = icmp ne %struct.wpa_group* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %19 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %26 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %25, i32 0, i32 3
  %27 = load %struct.wpa_group*, %struct.wpa_group** %26, align 8
  store %struct.wpa_group* %27, %struct.wpa_group** %6, align 8
  br label %14

28:                                               ; preds = %23, %14
  %29 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %30 = icmp eq %struct.wpa_group* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.wpa_group* @wpa_auth_add_group(%struct.wpa_authenticator* %32, i32 %33)
  store %struct.wpa_group* %34, %struct.wpa_group** %6, align 8
  %35 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %36 = icmp eq %struct.wpa_group* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %57

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %44 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %45 = call i32 @wpa_group_get(%struct.wpa_authenticator* %43, %struct.wpa_group* %44)
  %46 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WPA_GROUP_FATAL_FAILURE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %37, %9
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.wpa_group* @wpa_auth_add_group(%struct.wpa_authenticator*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_group_get(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
