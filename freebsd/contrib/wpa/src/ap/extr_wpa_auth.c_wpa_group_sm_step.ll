; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_sm_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_sm_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32 }
%struct.wpa_group = type { i64, i64, i64, i64, i64 }

@WPA_GROUP_FATAL_FAILURE = common dso_local global i64 0, align 8
@WPA_GROUP_GTK_INIT = common dso_local global i64 0, align 8
@WPA_GROUP_SETKEYSDONE = common dso_local global i64 0, align 8
@WPA_GROUP_SETKEYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_sm_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_group_sm_step(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  %5 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %6 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %11 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %12 = call i32 @wpa_group_gtk_init(%struct.wpa_authenticator* %10, %struct.wpa_group* %11)
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPA_GROUP_FATAL_FAILURE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %79

20:                                               ; preds = %13
  %21 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WPA_GROUP_GTK_INIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %33 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %34 = call i32 @wpa_group_setkeysdone(%struct.wpa_authenticator* %32, %struct.wpa_group* %33)
  br label %78

35:                                               ; preds = %26, %20
  %36 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WPA_GROUP_SETKEYSDONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %48 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %49 = call i32 @wpa_group_setkeys(%struct.wpa_authenticator* %47, %struct.wpa_group* %48)
  br label %77

50:                                               ; preds = %41, %35
  %51 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WPA_GROUP_SETKEYS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %63 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %64 = call i32 @wpa_group_setkeysdone(%struct.wpa_authenticator* %62, %struct.wpa_group* %63)
  br label %75

65:                                               ; preds = %56
  %66 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %67 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %72 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %73 = call i32 @wpa_group_setkeys(%struct.wpa_authenticator* %71, %struct.wpa_group* %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %61
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %31
  br label %79

79:                                               ; preds = %78, %19
  br label %80

80:                                               ; preds = %79, %9
  ret void
}

declare dso_local i32 @wpa_group_gtk_init(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_setkeysdone(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_setkeys(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
