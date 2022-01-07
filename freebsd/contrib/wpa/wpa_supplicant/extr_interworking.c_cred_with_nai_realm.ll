; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_with_nai_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_with_nai_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_cred* }
%struct.wpa_cred = type { i64, i64, i32, i64, i64, %struct.wpa_cred* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @cred_with_nai_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_with_nai_realm(%struct.wpa_supplicant* %0) #0 {
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

10:                                               ; preds = %42, %1
  %11 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %12 = icmp ne %struct.wpa_cred* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  br label %42

24:                                               ; preds = %18
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %47

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %43, i32 0, i32 5
  %45 = load %struct.wpa_cred*, %struct.wpa_cred** %44, align 8
  store %struct.wpa_cred* %45, %struct.wpa_cred** %4, align 8
  br label %10

46:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
