; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_blockest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_blockest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%union.dinode = type { i32 }

@di_flags = common dso_local global i32 0, align 4
@SF_SNAPSHOT = common dso_local global i64 0, align 8
@di_blocks = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_2__* null, align 8
@UFS_NDADDR = common dso_local global i64 0, align 8
@TP_NINDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%union.dinode*)* @blockest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blockest(%union.dinode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %union.dinode* %0, %union.dinode** %3, align 8
  %6 = load %union.dinode*, %union.dinode** %3, align 8
  %7 = load i32, i32* @di_flags, align 4
  %8 = call i64 @DIP(%union.dinode* %6, i32 %7)
  %9 = load i64, i64* @SF_SNAPSHOT, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 1, i64* %2, align 8
  br label %57

13:                                               ; preds = %1
  %14 = load %union.dinode*, %union.dinode** %3, align 8
  %15 = load i32, i32* @di_blocks, align 4
  %16 = call i64 @DIP(%union.dinode* %14, i32 %15)
  %17 = call i64 @dbtob(i64 %16)
  %18 = load i64, i64* @TP_BSIZE, align 8
  %19 = call i64 @howmany(i64 %17, i64 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %union.dinode*, %union.dinode** %3, align 8
  %21 = load i32, i32* @di_size, align 4
  %22 = call i64 @DIP(%union.dinode* %20, i32 %21)
  %23 = load i64, i64* @TP_BSIZE, align 8
  %24 = call i64 @howmany(i64 %22, i64 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %union.dinode*, %union.dinode** %3, align 8
  %32 = load i32, i32* @di_size, align 4
  %33 = call i64 @DIP(%union.dinode* %31, i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sblock, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UFS_NDADDR, align 8
  %38 = mul nsw i64 %36, %37
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @UFS_NDADDR, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sblock, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %42, %45
  %47 = load i64, i64* @TP_BSIZE, align 8
  %48 = sdiv i64 %46, %47
  %49 = sub nsw i64 %41, %48
  %50 = load i64, i64* @TP_NINDIR, align 8
  %51 = call i64 @howmany(i64 %49, i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %40, %30
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %54, %12
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i64 @howmany(i64, i64) #1

declare dso_local i64 @dbtob(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
