; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_with_roaming_consortium.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_with_roaming_consortium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_cred* }
%struct.wpa_cred = type { i64, i64, i64, %struct.wpa_cred* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @cred_with_roaming_consortium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_with_roaming_consortium(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_cred*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  store %struct.wpa_cred* %9, %struct.wpa_cred** %4, align 8
  br label %10

10:                                               ; preds = %32, %1
  %11 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %12 = icmp ne %struct.wpa_cred* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %37

19:                                               ; preds = %13
  %20 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %33, i32 0, i32 3
  %35 = load %struct.wpa_cred*, %struct.wpa_cred** %34, align 8
  store %struct.wpa_cred* %35, %struct.wpa_cred** %4, align 8
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30, %24, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
