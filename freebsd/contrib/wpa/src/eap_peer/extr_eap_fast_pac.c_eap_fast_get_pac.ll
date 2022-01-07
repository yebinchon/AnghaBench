; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_get_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_get_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i64, i64, %struct.eap_fast_pac*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_fast_pac* @eap_fast_get_pac(%struct.eap_fast_pac* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.eap_fast_pac*, align 8
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eap_fast_pac*, align 8
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %11, %struct.eap_fast_pac** %10, align 8
  br label %12

12:                                               ; preds = %37, %4
  %13 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %14 = icmp ne %struct.eap_fast_pac* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %17 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %23 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %29 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @os_memcmp(i32 %30, i32* %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  store %struct.eap_fast_pac* %36, %struct.eap_fast_pac** %5, align 8
  br label %42

37:                                               ; preds = %27, %21, %15
  %38 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %39 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %38, i32 0, i32 2
  %40 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %39, align 8
  store %struct.eap_fast_pac* %40, %struct.eap_fast_pac** %10, align 8
  br label %12

41:                                               ; preds = %12
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %5, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %5, align 8
  ret %struct.eap_fast_pac* %43
}

declare dso_local i64 @os_memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
