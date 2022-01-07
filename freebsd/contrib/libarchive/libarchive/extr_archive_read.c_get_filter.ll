; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_get_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_get_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.archive_read_filter* }
%struct.archive = type { i32 }
%struct.archive_read = type { %struct.archive_read_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_read_filter* (%struct.archive*, i32)* @get_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_read_filter* @get_filter(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_read_filter*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.archive_read_filter*, align 8
  %8 = alloca %struct.archive_read_filter*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_read*
  store %struct.archive_read* %10, %struct.archive_read** %6, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 0
  %13 = load %struct.archive_read_filter*, %struct.archive_read_filter** %12, align 8
  store %struct.archive_read_filter* %13, %struct.archive_read_filter** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %18 = icmp ne %struct.archive_read_filter* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  store %struct.archive_read_filter* %20, %struct.archive_read_filter** %8, align 8
  %21 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %22 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %21, i32 0, i32 0
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %22, align 8
  store %struct.archive_read_filter* %23, %struct.archive_read_filter** %7, align 8
  br label %24

24:                                               ; preds = %27, %19
  %25 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %26 = icmp ne %struct.archive_read_filter* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  store %struct.archive_read_filter* %28, %struct.archive_read_filter** %8, align 8
  %29 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %30 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %29, i32 0, i32 0
  %31 = load %struct.archive_read_filter*, %struct.archive_read_filter** %30, align 8
  store %struct.archive_read_filter* %31, %struct.archive_read_filter** %7, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load %struct.archive_read_filter*, %struct.archive_read_filter** %8, align 8
  store %struct.archive_read_filter* %33, %struct.archive_read_filter** %3, align 8
  br label %55

34:                                               ; preds = %16, %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.archive_read_filter* null, %struct.archive_read_filter** %3, align 8
  br label %55

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %47, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %44 = icmp ne %struct.archive_read_filter* %43, null
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  %49 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %48, i32 0, i32 0
  %50 = load %struct.archive_read_filter*, %struct.archive_read_filter** %49, align 8
  store %struct.archive_read_filter* %50, %struct.archive_read_filter** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %39

53:                                               ; preds = %45
  %54 = load %struct.archive_read_filter*, %struct.archive_read_filter** %7, align 8
  store %struct.archive_read_filter* %54, %struct.archive_read_filter** %3, align 8
  br label %55

55:                                               ; preds = %53, %37, %32
  %56 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  ret %struct.archive_read_filter* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
