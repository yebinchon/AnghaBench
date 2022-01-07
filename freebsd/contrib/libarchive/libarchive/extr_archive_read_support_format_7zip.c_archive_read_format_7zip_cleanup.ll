; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct._7zip = type { %struct._7zip*, %struct._7zip**, %struct._7zip*, %struct._7zip*, %struct._7zip*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_7zip_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_7zip_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct._7zip*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct._7zip*
  store %struct._7zip* %9, %struct._7zip** %3, align 8
  %10 = load %struct._7zip*, %struct._7zip** %3, align 8
  %11 = getelementptr inbounds %struct._7zip, %struct._7zip* %10, i32 0, i32 5
  %12 = call i32 @free_StreamsInfo(i32* %11)
  %13 = load %struct._7zip*, %struct._7zip** %3, align 8
  %14 = getelementptr inbounds %struct._7zip, %struct._7zip* %13, i32 0, i32 4
  %15 = load %struct._7zip*, %struct._7zip** %14, align 8
  %16 = call i32 @free(%struct._7zip* %15)
  %17 = load %struct._7zip*, %struct._7zip** %3, align 8
  %18 = getelementptr inbounds %struct._7zip, %struct._7zip* %17, i32 0, i32 3
  %19 = load %struct._7zip*, %struct._7zip** %18, align 8
  %20 = call i32 @free(%struct._7zip* %19)
  %21 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %22 = load %struct._7zip*, %struct._7zip** %3, align 8
  %23 = call i32 @free_decompression(%struct.archive_read* %21, %struct._7zip* %22)
  %24 = load %struct._7zip*, %struct._7zip** %3, align 8
  %25 = getelementptr inbounds %struct._7zip, %struct._7zip* %24, i32 0, i32 2
  %26 = load %struct._7zip*, %struct._7zip** %25, align 8
  %27 = call i32 @free(%struct._7zip* %26)
  %28 = load %struct._7zip*, %struct._7zip** %3, align 8
  %29 = getelementptr inbounds %struct._7zip, %struct._7zip* %28, i32 0, i32 1
  %30 = load %struct._7zip**, %struct._7zip*** %29, align 8
  %31 = getelementptr inbounds %struct._7zip*, %struct._7zip** %30, i64 0
  %32 = load %struct._7zip*, %struct._7zip** %31, align 8
  %33 = call i32 @free(%struct._7zip* %32)
  %34 = load %struct._7zip*, %struct._7zip** %3, align 8
  %35 = getelementptr inbounds %struct._7zip, %struct._7zip* %34, i32 0, i32 1
  %36 = load %struct._7zip**, %struct._7zip*** %35, align 8
  %37 = getelementptr inbounds %struct._7zip*, %struct._7zip** %36, i64 1
  %38 = load %struct._7zip*, %struct._7zip** %37, align 8
  %39 = call i32 @free(%struct._7zip* %38)
  %40 = load %struct._7zip*, %struct._7zip** %3, align 8
  %41 = getelementptr inbounds %struct._7zip, %struct._7zip* %40, i32 0, i32 1
  %42 = load %struct._7zip**, %struct._7zip*** %41, align 8
  %43 = getelementptr inbounds %struct._7zip*, %struct._7zip** %42, i64 2
  %44 = load %struct._7zip*, %struct._7zip** %43, align 8
  %45 = call i32 @free(%struct._7zip* %44)
  %46 = load %struct._7zip*, %struct._7zip** %3, align 8
  %47 = getelementptr inbounds %struct._7zip, %struct._7zip* %46, i32 0, i32 0
  %48 = load %struct._7zip*, %struct._7zip** %47, align 8
  %49 = call i32 @free(%struct._7zip* %48)
  %50 = load %struct._7zip*, %struct._7zip** %3, align 8
  %51 = call i32 @free(%struct._7zip* %50)
  %52 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %53 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %56
}

declare dso_local i32 @free_StreamsInfo(i32*) #1

declare dso_local i32 @free(%struct._7zip*) #1

declare dso_local i32 @free_decompression(%struct.archive_read*, %struct._7zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
