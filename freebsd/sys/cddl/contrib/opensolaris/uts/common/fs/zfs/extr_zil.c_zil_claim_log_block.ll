; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_claim_log_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_claim_log_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@spa_claim_notify = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i64)* @zil_claim_log_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zil_claim_log_block(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = call i64 @BP_IS_HOLE(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call i64 @zil_bp_tree_add(%struct.TYPE_9__* %20, %struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13, %4
  store i32 0, i32* %5, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i64 [ 0, %31 ], [ %33, %32 ]
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = load i32, i32* @spa_claim_notify, align 4
  %38 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %39 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @zio_claim(i32* null, i32 %28, i64 %35, %struct.TYPE_10__* %36, i32 %37, i32* null, i32 %42)
  %44 = call i32 @zio_wait(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %34, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_10__*) #1

declare dso_local i64 @zil_bp_tree_add(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_claim(i32*, i32, i64, %struct.TYPE_10__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
