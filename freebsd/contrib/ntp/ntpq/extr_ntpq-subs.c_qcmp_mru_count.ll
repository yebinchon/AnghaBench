; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_qcmp_mru_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_qcmp_mru_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @qcmp_mru_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcmp_mru_count(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__**, align 8
  %6 = alloca %struct.TYPE_2__**, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %10, %struct.TYPE_2__*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %12, %struct.TYPE_2__*** %6, align 8
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  br label %35

35:                                               ; preds = %25, %24
  %36 = phi i32 [ -1, %24 ], [ %34, %25 ]
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
