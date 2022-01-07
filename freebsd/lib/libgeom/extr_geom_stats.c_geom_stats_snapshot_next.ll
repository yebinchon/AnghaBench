; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_snapshot_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_snapshot_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstat = type { i32 }
%struct.snapshot = type { i32, i32, i32, i32, i64 }

@pagesize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devstat* @geom_stats_snapshot_next(i8* %0) #0 {
  %2 = alloca %struct.devstat*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.devstat*, align 8
  %5 = alloca %struct.snapshot*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.snapshot*
  store %struct.snapshot* %7, %struct.snapshot** %5, align 8
  %8 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %9 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %12 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @pagesize, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %10, %16
  %18 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %19 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %17, %22
  %24 = inttoptr i64 %23 to %struct.devstat*
  store %struct.devstat* %24, %struct.devstat** %4, align 8
  %25 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %26 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %30 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %1
  %34 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %35 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %39 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.devstat* null, %struct.devstat** %2, align 8
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %45 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.devstat*, %struct.devstat** %4, align 8
  store %struct.devstat* %48, %struct.devstat** %2, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = load %struct.devstat*, %struct.devstat** %2, align 8
  ret %struct.devstat* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
