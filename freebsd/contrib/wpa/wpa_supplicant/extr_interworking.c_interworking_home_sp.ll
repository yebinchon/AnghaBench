; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_home_sp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_home_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_cred* }
%struct.wpa_cred = type { %struct.wpa_cred* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpabuf*)* @interworking_home_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interworking_home_sp(%struct.wpa_supplicant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.wpa_cred*, %struct.wpa_cred** %14, align 8
  %16 = icmp eq %struct.wpa_cred* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %42

18:                                               ; preds = %10
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.wpa_cred*, %struct.wpa_cred** %22, align 8
  store %struct.wpa_cred* %23, %struct.wpa_cred** %6, align 8
  br label %24

24:                                               ; preds = %37, %18
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %26 = icmp ne %struct.wpa_cred* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %31 = call i32 @interworking_home_sp_cred(%struct.wpa_supplicant* %28, %struct.wpa_cred* %29, %struct.wpabuf* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %38, i32 0, i32 0
  %40 = load %struct.wpa_cred*, %struct.wpa_cred** %39, align 8
  store %struct.wpa_cred* %40, %struct.wpa_cred** %6, align 8
  br label %24

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @interworking_home_sp_cred(%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
