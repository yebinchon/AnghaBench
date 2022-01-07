; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, %struct.TYPE_2__, i32*, %struct.wpa_authenticator*, %struct.wpa_authenticator*, i32*, i8*, %struct.wpa_auth_callbacks*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wpa_auth_config = type { i32, i32 }
%struct.wpa_auth_callbacks = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not generate WPA IE.\00", align 1
@wpa_auth_pmksa_free_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PMKSA cache initialization failed.\00", align 1
@wpa_rekey_gmk = common dso_local global i32 0, align 4
@wpa_rekey_gtk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_authenticator* @wpa_init(%struct.wpa_auth_config* %0, %struct.wpa_auth_config* %1, %struct.wpa_auth_callbacks* %2, i8* %3) #0 {
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca %struct.wpa_auth_config*, align 8
  %7 = alloca %struct.wpa_auth_config*, align 8
  %8 = alloca %struct.wpa_auth_callbacks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_authenticator*, align 8
  store %struct.wpa_auth_config* %0, %struct.wpa_auth_config** %6, align 8
  store %struct.wpa_auth_config* %1, %struct.wpa_auth_config** %7, align 8
  store %struct.wpa_auth_callbacks* %2, %struct.wpa_auth_callbacks** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.wpa_authenticator* @os_zalloc(i32 80)
  store %struct.wpa_authenticator* %11, %struct.wpa_authenticator** %10, align 8
  %12 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %13 = icmp eq %struct.wpa_authenticator* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.wpa_authenticator* null, %struct.wpa_authenticator** %5, align 8
  br label %109

15:                                               ; preds = %4
  %16 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %17 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %16, i32 0, i32 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @os_memcpy(%struct.TYPE_2__* %18, %struct.wpa_auth_config* %19, i32 %20)
  %22 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %23 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %22, i32 0, i32 1
  %24 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %7, align 8
  %25 = call i32 @os_memcpy(%struct.TYPE_2__* %23, %struct.wpa_auth_config* %24, i32 8)
  %26 = load %struct.wpa_auth_callbacks*, %struct.wpa_auth_callbacks** %8, align 8
  %27 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %28 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %27, i32 0, i32 7
  store %struct.wpa_auth_callbacks* %26, %struct.wpa_auth_callbacks** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %31 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %33 = call i64 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %39 = call i32 @os_free(%struct.wpa_authenticator* %38)
  store %struct.wpa_authenticator* null, %struct.wpa_authenticator** %5, align 8
  br label %109

40:                                               ; preds = %15
  %41 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %42 = call %struct.wpa_authenticator* @wpa_group_init(%struct.wpa_authenticator* %41, i32 0, i32 1)
  %43 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %44 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %43, i32 0, i32 4
  store %struct.wpa_authenticator* %42, %struct.wpa_authenticator** %44, align 8
  %45 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %46 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %45, i32 0, i32 4
  %47 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %46, align 8
  %48 = icmp eq %struct.wpa_authenticator* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %51 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %50, i32 0, i32 3
  %52 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %51, align 8
  %53 = call i32 @os_free(%struct.wpa_authenticator* %52)
  %54 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %55 = call i32 @os_free(%struct.wpa_authenticator* %54)
  store %struct.wpa_authenticator* null, %struct.wpa_authenticator** %5, align 8
  br label %109

56:                                               ; preds = %40
  %57 = load i32, i32* @wpa_auth_pmksa_free_cb, align 4
  %58 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %59 = call i32* @pmksa_cache_auth_init(i32 %57, %struct.wpa_authenticator* %58)
  %60 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %61 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %63 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load i32, i32* @MSG_ERROR, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %70 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %69, i32 0, i32 4
  %71 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %70, align 8
  %72 = call i32 @os_free(%struct.wpa_authenticator* %71)
  %73 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %74 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %73, i32 0, i32 3
  %75 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %74, align 8
  %76 = call i32 @os_free(%struct.wpa_authenticator* %75)
  %77 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %78 = call i32 @os_free(%struct.wpa_authenticator* %77)
  store %struct.wpa_authenticator* null, %struct.wpa_authenticator** %5, align 8
  br label %109

79:                                               ; preds = %56
  %80 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %81 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %87 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @wpa_rekey_gmk, align 4
  %91 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %92 = call i32 @eloop_register_timeout(i64 %89, i32 0, i32 %90, %struct.wpa_authenticator* %91, i32* null)
  br label %93

93:                                               ; preds = %85, %79
  %94 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %95 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %101 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @wpa_rekey_gtk, align 4
  %105 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %106 = call i32 @eloop_register_timeout(i64 %103, i32 0, i32 %104, %struct.wpa_authenticator* %105, i32* null)
  br label %107

107:                                              ; preds = %99, %93
  %108 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  store %struct.wpa_authenticator* %108, %struct.wpa_authenticator** %5, align 8
  br label %109

109:                                              ; preds = %107, %66, %49, %35, %14
  %110 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  ret %struct.wpa_authenticator* %110
}

declare dso_local %struct.wpa_authenticator* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_2__*, %struct.wpa_auth_config*, i32) #1

declare dso_local i64 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.wpa_authenticator*) #1

declare dso_local %struct.wpa_authenticator* @wpa_group_init(%struct.wpa_authenticator*, i32, i32) #1

declare dso_local i32* @pmksa_cache_auth_init(i32, %struct.wpa_authenticator*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, i32, %struct.wpa_authenticator*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
