; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_is_catchall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_is_catchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_sap = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@UNISVE_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_is_catchall(%struct.uni_sap* %0) #0 {
  %2 = alloca %struct.uni_sap*, align 8
  store %struct.uni_sap* %0, %struct.uni_sap** %2, align 8
  %3 = load %struct.uni_sap*, %struct.uni_sap** %2, align 8
  %4 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UNISVE_ANY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.uni_sap*, %struct.uni_sap** %2, align 8
  %11 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UNISVE_ANY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = load %struct.uni_sap*, %struct.uni_sap** %2, align 8
  %18 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNISVE_ANY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.uni_sap*, %struct.uni_sap** %2, align 8
  %25 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UNISVE_ANY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.uni_sap*, %struct.uni_sap** %2, align 8
  %32 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UNISVE_ANY, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %30, %23, %16, %9, %1
  %38 = phi i1 [ false, %23 ], [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
