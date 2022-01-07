; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_get_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_get_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%struct.fst_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fst_iface*, %struct.fst_iface* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fst_iface* @fst_session_get_iface(%struct.fst_session* %0, i64 %1) #0 {
  %3 = alloca %struct.fst_session*, align 8
  %4 = alloca i64, align 8
  store %struct.fst_session* %0, %struct.fst_session** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %9 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.fst_iface*, %struct.fst_iface** %10, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %14 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fst_iface*, %struct.fst_iface** %15, align 8
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi %struct.fst_iface* [ %11, %7 ], [ %16, %12 ]
  ret %struct.fst_iface* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
