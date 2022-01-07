; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_atomdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_atomdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmt = type { i64, i32 }

@NOP = common dso_local global i64 0, align 8
@A_ATOM = common dso_local global i32 0, align 4
@X_ATOM = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmt*)* @atomdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atomdef(%struct.stmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmt*, align 8
  store %struct.stmt* %0, %struct.stmt** %3, align 8
  %4 = load %struct.stmt*, %struct.stmt** %3, align 8
  %5 = getelementptr inbounds %struct.stmt, %struct.stmt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NOP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.stmt*, %struct.stmt** %3, align 8
  %12 = getelementptr inbounds %struct.stmt, %struct.stmt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @BPF_CLASS(i64 %13)
  switch i32 %14, label %36 [
    i32 132, label %15
    i32 133, label %15
    i32 131, label %17
    i32 129, label %19
    i32 128, label %19
    i32 130, label %23
  ]

15:                                               ; preds = %10, %10
  %16 = load i32, i32* @A_ATOM, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %10
  %18 = load i32, i32* @X_ATOM, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %10, %10
  %20 = load %struct.stmt*, %struct.stmt** %3, align 8
  %21 = getelementptr inbounds %struct.stmt, %struct.stmt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %10
  %24 = load %struct.stmt*, %struct.stmt** %3, align 8
  %25 = getelementptr inbounds %struct.stmt, %struct.stmt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @BPF_MISCOP(i64 %26)
  %28 = load i32, i32* @BPF_TAX, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @X_ATOM, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @A_ATOM, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %19, %17, %15, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @BPF_CLASS(i64) #1

declare dso_local i32 @BPF_MISCOP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
