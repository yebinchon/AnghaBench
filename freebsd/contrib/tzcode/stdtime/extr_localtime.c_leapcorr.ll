; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_leapcorr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_leapcorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, %struct.lsinfo* }
%struct.lsinfo = type { i64, i64 }

@lclptr = common dso_local global %struct.state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @leapcorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @leapcorr(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.lsinfo*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %7 = load %struct.state*, %struct.state** @lclptr, align 8
  store %struct.state* %7, %struct.state** %4, align 8
  %8 = load %struct.state*, %struct.state** %4, align 8
  %9 = getelementptr inbounds %struct.state, %struct.state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.state*, %struct.state** %4, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 1
  %18 = load %struct.lsinfo*, %struct.lsinfo** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lsinfo, %struct.lsinfo* %18, i64 %20
  store %struct.lsinfo* %21, %struct.lsinfo** %5, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lsinfo*, %struct.lsinfo** %5, align 8
  %25 = getelementptr inbounds %struct.lsinfo, %struct.lsinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.lsinfo*, %struct.lsinfo** %5, align 8
  %30 = getelementptr inbounds %struct.lsinfo, %struct.lsinfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %2, align 8
  br label %34

32:                                               ; preds = %15
  br label %11

33:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
