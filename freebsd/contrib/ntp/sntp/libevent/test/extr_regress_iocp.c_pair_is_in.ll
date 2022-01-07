; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_iocp.c_pair_is_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_iocp.c_pair_is_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_overlapped = type { i32, i64*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_overlapped*, i64, i64)* @pair_is_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pair_is_in(%struct.dummy_overlapped* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dummy_overlapped*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dummy_overlapped* %0, %struct.dummy_overlapped** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dummy_overlapped*, %struct.dummy_overlapped** %4, align 8
  %10 = getelementptr inbounds %struct.dummy_overlapped, %struct.dummy_overlapped* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @EVLOCK_LOCK(i32 %11, i32 0)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.dummy_overlapped*, %struct.dummy_overlapped** %4, align 8
  %16 = getelementptr inbounds %struct.dummy_overlapped, %struct.dummy_overlapped* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.dummy_overlapped*, %struct.dummy_overlapped** %4, align 8
  %21 = getelementptr inbounds %struct.dummy_overlapped, %struct.dummy_overlapped* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.dummy_overlapped*, %struct.dummy_overlapped** %4, align 8
  %31 = getelementptr inbounds %struct.dummy_overlapped, %struct.dummy_overlapped* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %44

40:                                               ; preds = %29, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %13

44:                                               ; preds = %39, %13
  %45 = load %struct.dummy_overlapped*, %struct.dummy_overlapped** %4, align 8
  %46 = getelementptr inbounds %struct.dummy_overlapped, %struct.dummy_overlapped* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @EVLOCK_UNLOCK(i32 %47, i32 0)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
