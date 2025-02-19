; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_open_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_open_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.archive*, i32)* }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*)* @client_open_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_open_proxy(%struct.archive_read_filter* %0) #0 {
  %2 = alloca %struct.archive_read_filter*, align 8
  %3 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %2, align 8
  %4 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %6 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.archive*, i32)* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %14 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)** %17, align 8
  %19 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %20 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = bitcast %struct.TYPE_4__* %21 to %struct.archive*
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %24 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %18(%struct.archive* %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %12, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
