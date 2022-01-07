; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_remove_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_remove_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i64, i64, %struct.eap_fast_pac*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_fast_pac**, %struct.eap_fast_pac**, i32*, i64, i64)* @eap_fast_remove_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_remove_pac(%struct.eap_fast_pac** %0, %struct.eap_fast_pac** %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.eap_fast_pac**, align 8
  %7 = alloca %struct.eap_fast_pac**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_fast_pac*, align 8
  %12 = alloca %struct.eap_fast_pac*, align 8
  store %struct.eap_fast_pac** %0, %struct.eap_fast_pac*** %6, align 8
  store %struct.eap_fast_pac** %1, %struct.eap_fast_pac*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %6, align 8
  %14 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %13, align 8
  store %struct.eap_fast_pac* %14, %struct.eap_fast_pac** %11, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %12, align 8
  br label %15

15:                                               ; preds = %62, %5
  %16 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %17 = icmp ne %struct.eap_fast_pac* %16, null
  br i1 %17, label %18, label %67

18:                                               ; preds = %15
  %19 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %20 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %26 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %32 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @os_memcmp(i32 %33, i32* %34, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %12, align 8
  %40 = icmp eq %struct.eap_fast_pac* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %43 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %42, i32 0, i32 2
  %44 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %43, align 8
  %45 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %6, align 8
  store %struct.eap_fast_pac* %44, %struct.eap_fast_pac** %45, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %48 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %47, i32 0, i32 2
  %49 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %48, align 8
  %50 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %12, align 8
  %51 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %50, i32 0, i32 2
  store %struct.eap_fast_pac* %49, %struct.eap_fast_pac** %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %7, align 8
  %54 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %53, align 8
  %55 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %56 = icmp eq %struct.eap_fast_pac* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %7, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %58, align 8
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %61 = call i32 @eap_fast_free_pac(%struct.eap_fast_pac* %60)
  br label %67

62:                                               ; preds = %30, %24, %18
  %63 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  store %struct.eap_fast_pac* %63, %struct.eap_fast_pac** %12, align 8
  %64 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %65 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %64, i32 0, i32 2
  %66 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %65, align 8
  store %struct.eap_fast_pac* %66, %struct.eap_fast_pac** %11, align 8
  br label %15

67:                                               ; preds = %59, %15
  ret void
}

declare dso_local i64 @os_memcmp(i32, i32*, i64) #1

declare dso_local i32 @eap_fast_free_pac(%struct.eap_fast_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
