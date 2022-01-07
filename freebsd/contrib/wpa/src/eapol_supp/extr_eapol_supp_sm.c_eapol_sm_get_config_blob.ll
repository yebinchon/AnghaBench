; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_config_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_config_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config_blob = type { i32 }
%struct.eapol_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.wpa_config_blob* (i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_config_blob* (i8*, i8*)* @eapol_sm_get_config_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_config_blob* @eapol_sm_get_config_blob(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.wpa_config_blob*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eapol_sm*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.eapol_sm*
  store %struct.eapol_sm* %8, %struct.eapol_sm** %6, align 8
  %9 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %10 = icmp ne %struct.eapol_sm* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %13 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.wpa_config_blob* (i32, i8*)*, %struct.wpa_config_blob* (i32, i8*)** %20, align 8
  %22 = icmp ne %struct.wpa_config_blob* (i32, i8*)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %25 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.wpa_config_blob* (i32, i8*)*, %struct.wpa_config_blob* (i32, i8*)** %27, align 8
  %29 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %30 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.wpa_config_blob* %28(i32 %33, i8* %34)
  store %struct.wpa_config_blob* %35, %struct.wpa_config_blob** %3, align 8
  br label %37

36:                                               ; preds = %16, %11, %2
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %3, align 8
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %3, align 8
  ret %struct.wpa_config_blob* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
