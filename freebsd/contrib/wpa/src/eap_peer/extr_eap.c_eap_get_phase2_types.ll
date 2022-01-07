; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_phase2_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_phase2_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method_type = type { i32, i64 }
%struct.eap_peer_config = type { i32* }
%struct.eap_method = type { i32, i64, %struct.eap_method* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_method_type* @eap_get_phase2_types(%struct.eap_peer_config* %0, i64* %1) #0 {
  %3 = alloca %struct.eap_method_type*, align 8
  %4 = alloca %struct.eap_peer_config*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.eap_method_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.eap_method*, align 8
  %11 = alloca %struct.eap_method*, align 8
  store %struct.eap_peer_config* %0, %struct.eap_peer_config** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = call %struct.eap_method* @eap_peer_get_methods(i64* %9)
  store %struct.eap_method* %12, %struct.eap_method** %10, align 8
  %13 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %14 = icmp eq %struct.eap_method* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.eap_method_type* null, %struct.eap_method_type** %3, align 8
  br label %80

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = mul i64 %18, 16
  %20 = call %struct.eap_method_type* @os_malloc(i64 %19)
  store %struct.eap_method_type* %20, %struct.eap_method_type** %6, align 8
  %21 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %22 = icmp eq %struct.eap_method_type* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.eap_method_type* null, %struct.eap_method_type** %3, align 8
  br label %80

24:                                               ; preds = %16
  %25 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  store %struct.eap_method* %25, %struct.eap_method** %11, align 8
  br label %26

26:                                               ; preds = %74, %24
  %27 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %28 = icmp ne %struct.eap_method* %27, null
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %31 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %34 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @eap_allowed_phase2_type(i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @EAP_TYPE_TLS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %50 = icmp ne %struct.eap_peer_config* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %53 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %74

57:                                               ; preds = %51, %48, %44, %40
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %59, i64 %61
  %63 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %65, i64 %67
  %69 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %68, i32 0, i32 1
  store i64 %64, i64* %69, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %57, %29
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %76 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %75, i32 0, i32 2
  %77 = load %struct.eap_method*, %struct.eap_method** %76, align 8
  store %struct.eap_method* %77, %struct.eap_method** %11, align 8
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  store %struct.eap_method_type* %79, %struct.eap_method_type** %3, align 8
  br label %80

80:                                               ; preds = %78, %23, %15
  %81 = load %struct.eap_method_type*, %struct.eap_method_type** %3, align 8
  ret %struct.eap_method_type* %81
}

declare dso_local %struct.eap_method* @eap_peer_get_methods(i64*) #1

declare dso_local %struct.eap_method_type* @os_malloc(i64) #1

declare dso_local i64 @eap_allowed_phase2_type(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
