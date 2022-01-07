; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_aggsum.c_aggsum_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_aggsum.c_aggsum_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.aggsum_bucket* }
%struct.aggsum_bucket = type { i32, i32, i64 }

@CPU_SEQID = common dso_local global i64 0, align 8
@aggsum_borrow_multiplier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aggsum_add(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aggsum_bucket*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %7, align 8
  %9 = load i64, i64* @CPU_SEQID, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %9, %12
  %14 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %8, i64 %13
  store %struct.aggsum_bucket* %14, %struct.aggsum_bucket** %5, align 8
  br label %15

15:                                               ; preds = %50, %2
  %16 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %17 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %16, i32 0, i32 1
  %18 = call i32 @mutex_enter(i32* %17)
  %19 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %20 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %25 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp sle i32 %23, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %15
  %30 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %31 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %36 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sub nsw i32 0, %38
  %40 = icmp sge i32 %34, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %44 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %48 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %47, i32 0, i32 1
  %49 = call i32 @mutex_exit(i32* %48)
  ret void

50:                                               ; preds = %29, %15
  %51 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %52 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %51, i32 0, i32 1
  %53 = call i32 @mutex_exit(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @aggsum_borrow_multiplier, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %59 = call i32 @aggsum_borrow(%struct.TYPE_4__* %54, i32 %57, %struct.aggsum_bucket* %58)
  br label %15
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @aggsum_borrow(%struct.TYPE_4__*, i32, %struct.aggsum_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
