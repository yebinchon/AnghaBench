; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_reconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__, %struct.wpa_group* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_group = type { i32, i32 }
%struct.wpa_auth_config = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not generate WPA IE.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_reconfig(%struct.wpa_authenticator* %0, %struct.wpa_auth_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca %struct.wpa_auth_config*, align 8
  %6 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store %struct.wpa_auth_config* %1, %struct.wpa_auth_config** %5, align 8
  %7 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %8 = icmp eq %struct.wpa_authenticator* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %11, i32 0, i32 0
  %13 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %14 = call i32 @os_memcpy(%struct.TYPE_2__* %12, %struct.wpa_auth_config* %13, i32 4)
  %15 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %16 = call i64 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

21:                                               ; preds = %10
  %22 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %22, i32 0, i32 1
  %24 = load %struct.wpa_group*, %struct.wpa_group** %23, align 8
  store %struct.wpa_group* %24, %struct.wpa_group** %6, align 8
  %25 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @wpa_cipher_key_len(i32 %28)
  %30 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %34 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %36 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %37 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %35, %struct.wpa_group* %36)
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %42 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %43 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %41, %struct.wpa_group* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %21, %18, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @os_memcpy(%struct.TYPE_2__*, %struct.wpa_auth_config*, i32) #1

declare dso_local i64 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_cipher_key_len(i32) #1

declare dso_local i32 @wpa_group_sm_step(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
