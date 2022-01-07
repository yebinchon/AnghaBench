; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_release_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_release_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group* }
%struct.wpa_group = type { i32, i64, i64, i32, %struct.wpa_group* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"WPA: Try stopping group state machine for VLAN ID %d\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"WPA: wpa_auth_release_group called more often than wpa_auth_ensure_group for VLAN ID %d, skipping.\00", align 1
@WPA_GROUP_FATAL_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [81 x i8] c"WPA: Cannot stop group state machine for VLAN ID %d as references are still hold\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_release_group(%struct.wpa_authenticator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_group*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %9 = icmp eq %struct.wpa_authenticator* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

11:                                               ; preds = %2
  %12 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %12, i32 0, i32 0
  %14 = load %struct.wpa_group*, %struct.wpa_group** %13, align 8
  store %struct.wpa_group* %14, %struct.wpa_group** %6, align 8
  br label %15

15:                                               ; preds = %25, %11
  %16 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %17 = icmp ne %struct.wpa_group* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %20 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %26, i32 0, i32 4
  %28 = load %struct.wpa_group*, %struct.wpa_group** %27, align 8
  store %struct.wpa_group* %28, %struct.wpa_group** %6, align 8
  br label %15

29:                                               ; preds = %24, %15
  %30 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %31 = icmp eq %struct.wpa_group* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %70

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %3, align 4
  br label %70

45:                                               ; preds = %33
  %46 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WPA_GROUP_FATAL_FAILURE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 -2, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %67 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %68 = call i32 @wpa_group_put(%struct.wpa_authenticator* %66, %struct.wpa_group* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %41, %32, %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_group_put(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
