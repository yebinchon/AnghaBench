; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_sm_get_eap_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_sm_get_eap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_user = type { i64 }
%struct.eapol_state_machine = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32*, i64, i32, %struct.eap_user*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i32, %struct.eap_user*)* @eapol_sm_get_eap_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eapol_sm_get_eap_user(i8* %0, i32* %1, i64 %2, i32 %3, %struct.eap_user* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_user*, align 8
  %11 = alloca %struct.eapol_state_machine*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.eap_user* %4, %struct.eap_user** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.eapol_state_machine*
  store %struct.eapol_state_machine* %14, %struct.eapol_state_machine** %11, align 8
  %15 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %16 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i64, i32, %struct.eap_user*)*, i32 (i32, i32*, i64, i32, %struct.eap_user*)** %19, align 8
  %21 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %22 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %31 = call i32 %20(i32 %26, i32* %27, i64 %28, i32 %29, %struct.eap_user* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %33 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %38 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %5
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
