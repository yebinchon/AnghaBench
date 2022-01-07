; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eapol_sm_configure(%struct.eapol_sm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.eapol_sm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eapol_sm* %0, %struct.eapol_sm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %12 = icmp eq %struct.eapol_sm* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %42

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %20 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %27 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %34 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.eapol_sm*, %struct.eapol_sm** %6, align 8
  %41 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %13, %38, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
