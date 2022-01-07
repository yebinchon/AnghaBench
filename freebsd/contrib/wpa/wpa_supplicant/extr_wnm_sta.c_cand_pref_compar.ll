; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_cand_pref_compar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_cand_pref_compar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbor_report = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cand_pref_compar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cand_pref_compar(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.neighbor_report*, align 8
  %7 = alloca %struct.neighbor_report*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.neighbor_report*
  store %struct.neighbor_report* %9, %struct.neighbor_report** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.neighbor_report*
  store %struct.neighbor_report* %11, %struct.neighbor_report** %7, align 8
  %12 = load %struct.neighbor_report*, %struct.neighbor_report** %6, align 8
  %13 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.neighbor_report*, %struct.neighbor_report** %7, align 8
  %18 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %16, %2
  %23 = load %struct.neighbor_report*, %struct.neighbor_report** %6, align 8
  %24 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.neighbor_report*, %struct.neighbor_report** %7, align 8
  %30 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %53

34:                                               ; preds = %28
  %35 = load %struct.neighbor_report*, %struct.neighbor_report** %7, align 8
  %36 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.neighbor_report*, %struct.neighbor_report** %6, align 8
  %39 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load %struct.neighbor_report*, %struct.neighbor_report** %7, align 8
  %45 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.neighbor_report*, %struct.neighbor_report** %6, align 8
  %48 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %42, %33, %27, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
