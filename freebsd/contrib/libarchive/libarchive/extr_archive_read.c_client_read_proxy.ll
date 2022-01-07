; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_read_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_read_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*, i32, i8**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i8**)* @client_read_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_read_proxy(%struct.archive_read_filter* %0, i8** %1) #0 {
  %3 = alloca %struct.archive_read_filter*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (i32*, i32, i8**)*, i32 (i32*, i32, i8**)** %10, align 8
  %12 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %13 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %17 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = call i32 %11(i32* %15, i32 %18, i8** %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
