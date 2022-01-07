; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_config_allowed_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_config_allowed_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peer_config = type { %struct.eap_method_type* }
%struct.eap_method_type = type { i32, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peer_config*, i32, i64)* @eap_config_allowed_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_config_allowed_method(%struct.eap_sm* %0, %struct.eap_peer_config* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_peer_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.eap_method_type*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_peer_config* %1, %struct.eap_peer_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %13 = icmp eq %struct.eap_peer_config* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %16 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %15, i32 0, i32 0
  %17 = load %struct.eap_method_type*, %struct.eap_method_type** %16, align 8
  %18 = icmp eq %struct.eap_method_type* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %4
  store i32 1, i32* %5, align 4
  br label %68

20:                                               ; preds = %14
  %21 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %22 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %21, i32 0, i32 0
  %23 = load %struct.eap_method_type*, %struct.eap_method_type** %22, align 8
  store %struct.eap_method_type* %23, %struct.eap_method_type** %11, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %64, %20
  %25 = load %struct.eap_method_type*, %struct.eap_method_type** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %25, i64 %27
  %29 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.eap_method_type*, %struct.eap_method_type** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %34, i64 %36
  %38 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EAP_TYPE_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %33, %24
  %43 = phi i1 [ true, %24 ], [ %41, %33 ]
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = load %struct.eap_method_type*, %struct.eap_method_type** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %45, i64 %47
  %49 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.eap_method_type*, %struct.eap_method_type** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %54, i64 %56
  %58 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %68

63:                                               ; preds = %53, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %24

67:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %62, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
