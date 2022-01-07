; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_config_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_config_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config_blob = type { i32 }
%struct.eapol_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.wpa_config_blob*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wpa_config_blob*)* @eapol_sm_set_config_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_set_config_blob(i8* %0, %struct.wpa_config_blob* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_config_blob*, align 8
  %5 = alloca %struct.eapol_sm*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wpa_config_blob* %1, %struct.wpa_config_blob** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.eapol_sm*
  store %struct.eapol_sm* %7, %struct.eapol_sm** %5, align 8
  %8 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %9 = icmp ne %struct.eapol_sm* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %12 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %17 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32, %struct.wpa_config_blob*)*, i32 (i32, %struct.wpa_config_blob*)** %19, align 8
  %21 = icmp ne i32 (i32, %struct.wpa_config_blob*)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %24 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32, %struct.wpa_config_blob*)*, i32 (i32, %struct.wpa_config_blob*)** %26, align 8
  %28 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %29 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %4, align 8
  %34 = call i32 %27(i32 %32, %struct.wpa_config_blob* %33)
  br label %35

35:                                               ; preds = %22, %15, %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
