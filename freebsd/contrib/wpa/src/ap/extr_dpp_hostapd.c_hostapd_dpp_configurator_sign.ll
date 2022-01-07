; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_configurator_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_configurator_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dpp_authentication = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c" curve=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_dpp_configurator_sign(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dpp_authentication*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = call %struct.dpp_authentication* @os_zalloc(i32 4)
  store %struct.dpp_authentication* %9, %struct.dpp_authentication** %6, align 8
  %10 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %11 = icmp ne %struct.dpp_authentication* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @get_param(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %18 = call i32 @hostapd_dpp_set_testing_options(%struct.hostapd_data* %16, %struct.dpp_authentication* %17)
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @dpp_set_configurator(i32 %25, i32 %28, %struct.dpp_authentication* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %13
  %34 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @dpp_configurator_own_config(%struct.dpp_authentication* %34, i8* %35, i32 1)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %41 = call i32 @hostapd_dpp_handle_config_obj(%struct.hostapd_data* %39, %struct.dpp_authentication* %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %33, %13
  %43 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %44 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @os_free(i8* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.dpp_authentication* @os_zalloc(i32) #1

declare dso_local i8* @get_param(i8*, i8*) #1

declare dso_local i32 @hostapd_dpp_set_testing_options(%struct.hostapd_data*, %struct.dpp_authentication*) #1

declare dso_local i64 @dpp_set_configurator(i32, i32, %struct.dpp_authentication*, i8*) #1

declare dso_local i64 @dpp_configurator_own_config(%struct.dpp_authentication*, i8*, i32) #1

declare dso_local i32 @hostapd_dpp_handle_config_obj(%struct.hostapd_data*, %struct.dpp_authentication*) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
