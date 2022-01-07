; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_blk_isindir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_blk_isindir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.suj_blk = type { i32 }
%struct.jblkrec = type { i64 }
%struct.TYPE_4__ = type { i64 }

@srechd = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_3__* null, align 8
@JOP_FREEBLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @blk_isindir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_isindir(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.suj_blk*, align 8
  %9 = alloca %struct.jblkrec*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.suj_blk* @blk_lookup(i32 %10, i32 0)
  store %struct.suj_blk* %11, %struct.suj_blk** %8, align 8
  %12 = load %struct.suj_blk*, %struct.suj_blk** %8, align 8
  %13 = icmp eq %struct.suj_blk* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.suj_blk*, %struct.suj_blk** %8, align 8
  %17 = getelementptr inbounds %struct.suj_blk, %struct.suj_blk* %16, i32 0, i32 0
  %18 = call i64 @TAILQ_EMPTY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.suj_blk*, %struct.suj_blk** %8, align 8
  %23 = getelementptr inbounds %struct.suj_blk, %struct.suj_blk* %22, i32 0, i32 0
  %24 = load i32, i32* @srechd, align 4
  %25 = call %struct.TYPE_4__* @TAILQ_LAST(i32* %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.jblkrec*
  store %struct.jblkrec* %28, %struct.jblkrec** %9, align 8
  %29 = load %struct.jblkrec*, %struct.jblkrec** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @blk_equals(%struct.jblkrec* %29, i32 %30, i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.jblkrec*, %struct.jblkrec** %9, align 8
  %40 = getelementptr inbounds %struct.jblkrec, %struct.jblkrec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @JOP_FREEBLK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @blk_isfree(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %21
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %44, %20, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.suj_blk* @blk_lookup(i32, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_4__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @blk_equals(%struct.jblkrec*, i32, i32, i32, i32) #1

declare dso_local i32 @blk_isfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
