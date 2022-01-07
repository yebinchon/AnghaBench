; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_close_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_close_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.archive_read_filter* }
%struct.archive_read_filter = type { i32, i32 (%struct.archive_read_filter*)*, i32*, %struct.archive_read_filter* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @close_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_filters(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.archive_read_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 0
  %9 = load %struct.archive_read_filter*, %struct.archive_read_filter** %8, align 8
  store %struct.archive_read_filter* %9, %struct.archive_read_filter** %3, align 8
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %13 = icmp ne %struct.archive_read_filter* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %16 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %15, i32 0, i32 3
  %17 = load %struct.archive_read_filter*, %struct.archive_read_filter** %16, align 8
  store %struct.archive_read_filter* %17, %struct.archive_read_filter** %5, align 8
  %18 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %19 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %14
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %24 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %23, i32 0, i32 1
  %25 = load i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)** %24, align 8
  %26 = icmp ne i32 (%struct.archive_read_filter*)* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %29 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %28, i32 0, i32 1
  %30 = load i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)** %29, align 8
  %31 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %32 = call i32 %30(%struct.archive_read_filter* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %34 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %27
  br label %41

41:                                               ; preds = %40, %22, %14
  %42 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %43 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @free(i32* %44)
  %46 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %47 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  store %struct.archive_read_filter* %48, %struct.archive_read_filter** %3, align 8
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
