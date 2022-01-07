; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findpeerbyassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findpeerbyassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, %struct.peer* }

@assocpeer_calls = common dso_local global i32 0, align 4
@NTP_HASH_MASK = common dso_local global i64 0, align 8
@assoc_hash = common dso_local global %struct.peer** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @findpeerbyassoc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.peer*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @assocpeer_calls, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @assocpeer_calls, align 4
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @NTP_HASH_MASK, align 8
  %9 = and i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.peer**, %struct.peer*** @assoc_hash, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.peer*, %struct.peer** %10, i64 %11
  %13 = load %struct.peer*, %struct.peer** %12, align 8
  store %struct.peer* %13, %struct.peer** %3, align 8
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.peer*, %struct.peer** %3, align 8
  %16 = icmp ne %struct.peer* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.peer*, %struct.peer** %3, align 8
  %20 = getelementptr inbounds %struct.peer, %struct.peer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %29

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.peer*, %struct.peer** %3, align 8
  %27 = getelementptr inbounds %struct.peer, %struct.peer* %26, i32 0, i32 1
  %28 = load %struct.peer*, %struct.peer** %27, align 8
  store %struct.peer* %28, %struct.peer** %3, align 8
  br label %14

29:                                               ; preds = %23, %14
  %30 = load %struct.peer*, %struct.peer** %3, align 8
  ret %struct.peer* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
