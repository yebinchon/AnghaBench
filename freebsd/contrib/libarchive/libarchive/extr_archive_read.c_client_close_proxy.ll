; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_close_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_close_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.archive*, i32)*, i32, %struct.TYPE_4__* }
%struct.archive = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*)* @client_close_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_close_proxy(%struct.archive_read_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %3, align 8
  %7 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %9 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)** %12, align 8
  %14 = icmp eq i32 (%struct.archive*, i32)* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %21 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %19, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %18
  %28 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %29 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)** %32, align 8
  %34 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %35 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = bitcast %struct.TYPE_5__* %36 to %struct.archive*
  %38 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %39 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %33(%struct.archive* %37, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %27
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %27
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %18

59:                                               ; preds = %18
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
