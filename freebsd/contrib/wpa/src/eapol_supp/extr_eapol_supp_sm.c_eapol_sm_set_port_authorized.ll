; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_port_authorized.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_port_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@Authorized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_sm*)* @eapol_sm_set_port_authorized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_set_port_authorized(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  %3 = alloca i32, align 4
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  %4 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %5 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @Authorized, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %11 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @FALSE, align 8
  %18 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %19 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* @Authorized, align 8
  %21 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %22 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %14
  %26 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %27 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = icmp ne i32 (i32, i32)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %34 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %39 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %37(i32 %42, i32 1)
  br label %44

44:                                               ; preds = %32, %25, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
