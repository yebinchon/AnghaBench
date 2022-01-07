; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_filter_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_filter_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { %struct.archive_write_filter* }
%struct.archive = type { i32 }
%struct.archive_write = type { %struct.archive_write_filter*, %struct.archive_write_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_write_filter* (%struct.archive*, i32)* @filter_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_write_filter* @filter_lookup(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_write_filter*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.archive_write_filter*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_write*
  store %struct.archive_write* %9, %struct.archive_write** %6, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 1
  %12 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  store %struct.archive_write_filter* %12, %struct.archive_write_filter** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 0
  %18 = load %struct.archive_write_filter*, %struct.archive_write_filter** %17, align 8
  store %struct.archive_write_filter* %18, %struct.archive_write_filter** %3, align 8
  br label %40

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.archive_write_filter* null, %struct.archive_write_filter** %3, align 8
  br label %40

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.archive_write_filter*, %struct.archive_write_filter** %7, align 8
  %29 = icmp ne %struct.archive_write_filter* %28, null
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load %struct.archive_write_filter*, %struct.archive_write_filter** %7, align 8
  %34 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %33, i32 0, i32 0
  %35 = load %struct.archive_write_filter*, %struct.archive_write_filter** %34, align 8
  store %struct.archive_write_filter* %35, %struct.archive_write_filter** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  br label %24

38:                                               ; preds = %30
  %39 = load %struct.archive_write_filter*, %struct.archive_write_filter** %7, align 8
  store %struct.archive_write_filter* %39, %struct.archive_write_filter** %3, align 8
  br label %40

40:                                               ; preds = %38, %22, %15
  %41 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  ret %struct.archive_write_filter* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
