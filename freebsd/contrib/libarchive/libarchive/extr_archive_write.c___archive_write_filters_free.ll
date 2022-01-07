; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_filters_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_filters_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32*, %struct.archive_write_filter* }
%struct.archive_write_filter = type { i32 (%struct.archive_write_filter*)*, %struct.archive_write_filter* }

@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__archive_write_filters_free(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write_filter*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_write*
  store %struct.archive_write* %8, %struct.archive_write** %3, align 8
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %43, %1
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load %struct.archive_write_filter*, %struct.archive_write_filter** %12, align 8
  %14 = icmp ne %struct.archive_write_filter* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 1
  %18 = load %struct.archive_write_filter*, %struct.archive_write_filter** %17, align 8
  %19 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %18, i32 0, i32 1
  %20 = load %struct.archive_write_filter*, %struct.archive_write_filter** %19, align 8
  store %struct.archive_write_filter* %20, %struct.archive_write_filter** %6, align 8
  %21 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 1
  %23 = load %struct.archive_write_filter*, %struct.archive_write_filter** %22, align 8
  %24 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %23, i32 0, i32 0
  %25 = load i32 (%struct.archive_write_filter*)*, i32 (%struct.archive_write_filter*)** %24, align 8
  %26 = icmp ne i32 (%struct.archive_write_filter*)* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %15
  %28 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load %struct.archive_write_filter*, %struct.archive_write_filter** %29, align 8
  %31 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %30, i32 0, i32 0
  %32 = load i32 (%struct.archive_write_filter*)*, i32 (%struct.archive_write_filter*)** %31, align 8
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 1
  %35 = load %struct.archive_write_filter*, %struct.archive_write_filter** %34, align 8
  %36 = call i32 %32(%struct.archive_write_filter* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %27
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %45 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %44, i32 0, i32 1
  %46 = load %struct.archive_write_filter*, %struct.archive_write_filter** %45, align 8
  %47 = call i32 @free(%struct.archive_write_filter* %46)
  %48 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %49 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 1
  store %struct.archive_write_filter* %48, %struct.archive_write_filter** %50, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %53 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @free(%struct.archive_write_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
