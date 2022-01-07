; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_resync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@statsfd = common dso_local global i32 0, align 4
@statp = common dso_local global i8* null, align 8
@npages = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geom_stats_resync() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @statsfd, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %25

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %22, %5
  %7 = load i8*, i8** @statp, align 8
  %8 = load i32, i32* @npages, align 4
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @pagesize, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @MAP_SHARED, align 4
  %14 = load i32, i32* @statsfd, align 4
  %15 = call i8* @mmap(i8* %7, i32 %11, i32 %12, i32 %13, i32 %14, i32 0)
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = load i8*, i8** @MAP_FAILED, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %25

20:                                               ; preds = %6
  %21 = load i8*, i8** %1, align 8
  store i8* %21, i8** @statp, align 8
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @npages, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @npages, align 4
  br label %6

25:                                               ; preds = %4, %19
  ret void
}

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
