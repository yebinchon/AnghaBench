; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_aggsum.c_aggsum_borrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_aggsum.c_aggsum_borrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.aggsum_bucket = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, %struct.aggsum_bucket*)* @aggsum_borrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggsum_borrow(%struct.TYPE_4__* %0, i32 %1, %struct.aggsum_bucket* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aggsum_bucket*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aggsum_bucket* %2, %struct.aggsum_bucket** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 0, %11
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_enter(i32* %18)
  %20 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %6, align 8
  %21 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %20, i32 0, i32 0
  %22 = call i32 @mutex_enter(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %6, align 8
  %25 = call i32 @aggsum_flush_bucket(%struct.TYPE_4__* %23, %struct.aggsum_bucket* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @atomic_add_64(i32* %27, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @atomic_add_64(i32* %31, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %6, align 8
  %37 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %6, align 8
  %39 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %38, i32 0, i32 0
  %40 = call i32 @mutex_exit(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @mutex_exit(i32* %42)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @aggsum_flush_bucket(%struct.TYPE_4__*, %struct.aggsum_bucket*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
