; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.cpio = type { %struct.cpio*, %struct.cpio*, %struct.cpio* }
%struct.links_entry = type { %struct.links_entry*, %struct.links_entry*, %struct.links_entry* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_cpio_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cpio_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca %struct.links_entry*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %5 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.cpio*
  store %struct.cpio* %10, %struct.cpio** %3, align 8
  br label %11

11:                                               ; preds = %16, %1
  %12 = load %struct.cpio*, %struct.cpio** %3, align 8
  %13 = getelementptr inbounds %struct.cpio, %struct.cpio* %12, i32 0, i32 0
  %14 = load %struct.cpio*, %struct.cpio** %13, align 8
  %15 = icmp ne %struct.cpio* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load %struct.cpio*, %struct.cpio** %3, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 0
  %19 = load %struct.cpio*, %struct.cpio** %18, align 8
  %20 = getelementptr inbounds %struct.cpio, %struct.cpio* %19, i32 0, i32 2
  %21 = load %struct.cpio*, %struct.cpio** %20, align 8
  %22 = bitcast %struct.cpio* %21 to %struct.links_entry*
  store %struct.links_entry* %22, %struct.links_entry** %4, align 8
  %23 = load %struct.cpio*, %struct.cpio** %3, align 8
  %24 = getelementptr inbounds %struct.cpio, %struct.cpio* %23, i32 0, i32 0
  %25 = load %struct.cpio*, %struct.cpio** %24, align 8
  %26 = getelementptr inbounds %struct.cpio, %struct.cpio* %25, i32 0, i32 1
  %27 = load %struct.cpio*, %struct.cpio** %26, align 8
  %28 = bitcast %struct.cpio* %27 to %struct.links_entry*
  %29 = call i32 @free(%struct.links_entry* %28)
  %30 = load %struct.cpio*, %struct.cpio** %3, align 8
  %31 = getelementptr inbounds %struct.cpio, %struct.cpio* %30, i32 0, i32 0
  %32 = load %struct.cpio*, %struct.cpio** %31, align 8
  %33 = bitcast %struct.cpio* %32 to %struct.links_entry*
  %34 = call i32 @free(%struct.links_entry* %33)
  %35 = load %struct.links_entry*, %struct.links_entry** %4, align 8
  %36 = bitcast %struct.links_entry* %35 to %struct.cpio*
  %37 = load %struct.cpio*, %struct.cpio** %3, align 8
  %38 = getelementptr inbounds %struct.cpio, %struct.cpio* %37, i32 0, i32 0
  store %struct.cpio* %36, %struct.cpio** %38, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.cpio*, %struct.cpio** %3, align 8
  %41 = bitcast %struct.cpio* %40 to %struct.links_entry*
  %42 = call i32 @free(%struct.links_entry* %41)
  %43 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %47
}

declare dso_local i32 @free(%struct.links_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
