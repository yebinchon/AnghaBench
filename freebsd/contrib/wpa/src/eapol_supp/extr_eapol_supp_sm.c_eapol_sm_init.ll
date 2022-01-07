; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, i32, i32, i32, i32, i8*, i8*, i32*, %struct.eapol_ctx*, i8*, i32*, i32 }
%struct.eapol_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.eap_config = type { i32, i32, i32, i32, i32, i32 }

@Auto = common dso_local global i32 0, align 4
@eapol_cb = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@eapol_port_timers_tick = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eapol_sm* @eapol_sm_init(%struct.eapol_ctx* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  %3 = alloca %struct.eapol_ctx*, align 8
  %4 = alloca %struct.eapol_sm*, align 8
  %5 = alloca %struct.eap_config, align 4
  store %struct.eapol_ctx* %0, %struct.eapol_ctx** %3, align 8
  %6 = call %struct.eapol_sm* @os_zalloc(i32 80)
  store %struct.eapol_sm* %6, %struct.eapol_sm** %4, align 8
  %7 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %8 = icmp eq %struct.eapol_sm* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.eapol_sm* null, %struct.eapol_sm** %2, align 8
  br label %89

10:                                               ; preds = %1
  %11 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %12 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %13 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %12, i32 0, i32 8
  store %struct.eapol_ctx* %11, %struct.eapol_ctx** %13, align 8
  %14 = load i32, i32* @Auto, align 4
  %15 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %16 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 0
  store i32 60, i32* %18, align 8
  %19 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %20 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %19, i32 0, i32 1
  store i32 30, i32* %20, align 4
  %21 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %22 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %21, i32 0, i32 2
  store i32 3, i32* %22, align 8
  %23 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %24 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %23, i32 0, i32 3
  store i32 30, i32* %24, align 4
  %25 = call i32 @os_memset(%struct.eap_config* %5, i32 0, i32 24)
  %26 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.eapol_ctx*, %struct.eapol_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %5, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %51 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %52 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %51, i32 0, i32 8
  %53 = load %struct.eapol_ctx*, %struct.eapol_ctx** %52, align 8
  %54 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @eap_peer_sm_init(%struct.eapol_sm* %50, i32* @eapol_cb, i32 %55, %struct.eap_config* %5)
  %57 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %58 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %57, i32 0, i32 10
  store i32* %56, i32** %58, align 8
  %59 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %60 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %10
  %64 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %65 = call i32 @os_free(%struct.eapol_sm* %64)
  store %struct.eapol_sm* null, %struct.eapol_sm** %2, align 8
  br label %89

66:                                               ; preds = %10
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %69 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @TRUE, align 8
  %71 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %72 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %74 = call i32 @eapol_sm_step(%struct.eapol_sm* %73)
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %77 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %79 = call i32 @eapol_sm_step(%struct.eapol_sm* %78)
  %80 = load i32, i32* @eapol_port_timers_tick, align 4
  %81 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %82 = call i64 @eloop_register_timeout(i32 1, i32 0, i32 %80, i32* null, %struct.eapol_sm* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %66
  %85 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  %86 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %85, i32 0, i32 4
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %66
  %88 = load %struct.eapol_sm*, %struct.eapol_sm** %4, align 8
  store %struct.eapol_sm* %88, %struct.eapol_sm** %2, align 8
  br label %89

89:                                               ; preds = %87, %63, %9
  %90 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  ret %struct.eapol_sm* %90
}

declare dso_local %struct.eapol_sm* @os_zalloc(i32) #1

declare dso_local i32 @os_memset(%struct.eap_config*, i32, i32) #1

declare dso_local i32* @eap_peer_sm_init(%struct.eapol_sm*, i32*, i32, %struct.eap_config*) #1

declare dso_local i32 @os_free(%struct.eapol_sm*) #1

declare dso_local i32 @eapol_sm_step(%struct.eapol_sm*) #1

declare dso_local i64 @eloop_register_timeout(i32, i32, i32, i32*, %struct.eapol_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
