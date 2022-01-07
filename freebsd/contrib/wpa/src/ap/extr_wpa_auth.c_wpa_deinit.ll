; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_authenticator*, %struct.wpa_authenticator*, %struct.wpa_authenticator*, i32, i32*, i32 }
%struct.wpa_group = type { %struct.wpa_group*, %struct.wpa_group*, %struct.wpa_group*, i32, i32*, i32 }

@wpa_rekey_gmk = common dso_local global i32 0, align 4
@wpa_rekey_gtk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_deinit(%struct.wpa_authenticator* %0) #0 {
  %2 = alloca %struct.wpa_authenticator*, align 8
  %3 = alloca %struct.wpa_group*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %2, align 8
  %5 = load i32, i32* @wpa_rekey_gmk, align 4
  %6 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %7 = bitcast %struct.wpa_authenticator* %6 to %struct.wpa_group*
  %8 = call i32 @eloop_cancel_timeout(i32 %5, %struct.wpa_group* %7, i32* null)
  %9 = load i32, i32* @wpa_rekey_gtk, align 4
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %11 = bitcast %struct.wpa_authenticator* %10 to %struct.wpa_group*
  %12 = call i32 @eloop_cancel_timeout(i32 %9, %struct.wpa_group* %11, i32* null)
  %13 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pmksa_cache_auth_deinit(i32 %15)
  %17 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %17, i32 0, i32 2
  %19 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %18, align 8
  %20 = bitcast %struct.wpa_authenticator* %19 to %struct.wpa_group*
  %21 = call i32 @os_free(%struct.wpa_group* %20)
  %22 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %22, i32 0, i32 1
  %24 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %23, align 8
  %25 = bitcast %struct.wpa_authenticator* %24 to %struct.wpa_group*
  store %struct.wpa_group* %25, %struct.wpa_group** %3, align 8
  br label %26

26:                                               ; preds = %29, %1
  %27 = load %struct.wpa_group*, %struct.wpa_group** %3, align 8
  %28 = icmp ne %struct.wpa_group* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.wpa_group*, %struct.wpa_group** %3, align 8
  store %struct.wpa_group* %30, %struct.wpa_group** %4, align 8
  %31 = load %struct.wpa_group*, %struct.wpa_group** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %31, i32 0, i32 0
  %33 = load %struct.wpa_group*, %struct.wpa_group** %32, align 8
  store %struct.wpa_group* %33, %struct.wpa_group** %3, align 8
  %34 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %35 = call i32 @os_free(%struct.wpa_group* %34)
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %38 = bitcast %struct.wpa_authenticator* %37 to %struct.wpa_group*
  %39 = call i32 @os_free(%struct.wpa_group* %38)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_group*, i32*) #1

declare dso_local i32 @pmksa_cache_auth_deinit(i32) #1

declare dso_local i32 @os_free(%struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
