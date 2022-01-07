; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spc = type { i32, i64*, i64 }

@spc_data = common dso_local global %struct.spc* null, align 8
@NSLC = common dso_local global i32 0, align 4
@SLC_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slc_update() #0 {
  %1 = alloca %struct.spc*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %4 = getelementptr inbounds %struct.spc, %struct.spc* %3, i64 1
  store %struct.spc* %4, %struct.spc** %1, align 8
  br label %5

5:                                                ; preds = %49, %0
  %6 = load %struct.spc*, %struct.spc** %1, align 8
  %7 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %8 = load i32, i32* @NSLC, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.spc, %struct.spc* %7, i64 %10
  %12 = icmp ult %struct.spc* %6, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %5
  %14 = load %struct.spc*, %struct.spc** %1, align 8
  %15 = getelementptr inbounds %struct.spc, %struct.spc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SLC_ACK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %49

21:                                               ; preds = %13
  %22 = load i32, i32* @SLC_ACK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.spc*, %struct.spc** %1, align 8
  %25 = getelementptr inbounds %struct.spc, %struct.spc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.spc*, %struct.spc** %1, align 8
  %29 = getelementptr inbounds %struct.spc, %struct.spc* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load %struct.spc*, %struct.spc** %1, align 8
  %34 = getelementptr inbounds %struct.spc, %struct.spc* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.spc*, %struct.spc** %1, align 8
  %38 = getelementptr inbounds %struct.spc, %struct.spc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.spc*, %struct.spc** %1, align 8
  %43 = getelementptr inbounds %struct.spc, %struct.spc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.spc*, %struct.spc** %1, align 8
  %46 = getelementptr inbounds %struct.spc, %struct.spc* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  store i64 %44, i64* %47, align 8
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %32, %21
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.spc*, %struct.spc** %1, align 8
  %51 = getelementptr inbounds %struct.spc, %struct.spc* %50, i32 1
  store %struct.spc* %51, %struct.spc** %1, align 8
  br label %5

52:                                               ; preds = %5
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
