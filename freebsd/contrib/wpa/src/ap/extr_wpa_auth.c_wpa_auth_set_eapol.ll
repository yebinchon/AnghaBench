; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_set_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_set_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, i32*, i32, i32)* @wpa_auth_set_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_auth_set_eapol(%struct.wpa_authenticator* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32*, i32, i32)* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %19, align 8
  %21 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 %20(i32 %23, i32* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
