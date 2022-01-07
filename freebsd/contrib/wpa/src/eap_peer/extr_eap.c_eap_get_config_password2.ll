; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_config_password2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_config_password2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peer_config = type { i32, i64, i32* }

@EAP_CONFIG_FLAGS_EXT_PASSWORD = common dso_local global i32 0, align 4
@EAP_CONFIG_FLAGS_PASSWORD_NTHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_get_config_password2(%struct.eap_sm* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %10 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %9)
  store %struct.eap_peer_config* %10, %struct.eap_peer_config** %8, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = icmp eq %struct.eap_peer_config* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %64

14:                                               ; preds = %3
  %15 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %16 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EAP_CONFIG_FLAGS_EXT_PASSWORD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %23 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %24 = call i64 @eap_get_ext_password(%struct.eap_sm* %22, %struct.eap_peer_config* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %64

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %34 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @wpabuf_len(i32 %35)
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @wpabuf_head(i32 %40)
  store i32* %41, i32** %4, align 8
  br label %64

42:                                               ; preds = %14
  %43 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %44 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EAP_CONFIG_FLAGS_PASSWORD_NTHASH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %42
  %61 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %62 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %4, align 8
  br label %64

64:                                               ; preds = %60, %32, %26, %13
  %65 = load i32*, i32** %4, align 8
  ret i32* %65
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i64 @eap_get_ext_password(%struct.eap_sm*, %struct.eap_peer_config*) #1

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32* @wpabuf_head(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
