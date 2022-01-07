; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_pac_list_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_pac_list_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { %struct.eap_fast_pac* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eap_fast_pac_list_truncate(%struct.eap_fast_pac* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.eap_fast_pac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca %struct.eap_fast_pac*, align 8
  %8 = alloca i64, align 8
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  store %struct.eap_fast_pac* %9, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %12 = icmp ne %struct.eap_fast_pac* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %21, %struct.eap_fast_pac** %7, align 8
  %22 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %23 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %22, i32 0, i32 0
  %24 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %23, align 8
  store %struct.eap_fast_pac* %24, %struct.eap_fast_pac** %6, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %31 = icmp eq %struct.eap_fast_pac* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %25
  store i64 0, i64* %3, align 8
  br label %50

33:                                               ; preds = %29
  store i64 0, i64* %8, align 8
  %34 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %35 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %34, i32 0, i32 0
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %35, align 8
  br label %36

36:                                               ; preds = %39, %33
  %37 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %38 = icmp ne %struct.eap_fast_pac* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %40, %struct.eap_fast_pac** %7, align 8
  %41 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %42 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %41, i32 0, i32 0
  %43 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %42, align 8
  store %struct.eap_fast_pac* %43, %struct.eap_fast_pac** %6, align 8
  %44 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %45 = call i32 @eap_fast_free_pac(%struct.eap_fast_pac* %44)
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %36

48:                                               ; preds = %36
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @eap_fast_free_pac(%struct.eap_fast_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
