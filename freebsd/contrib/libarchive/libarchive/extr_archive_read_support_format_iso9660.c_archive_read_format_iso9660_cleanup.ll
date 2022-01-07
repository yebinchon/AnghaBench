; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_format_iso9660_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_format_iso9660_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.iso9660 = type { %struct.iso9660*, %struct.iso9660*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64, %struct.iso9660*, %struct.iso9660* }
%struct.TYPE_6__ = type { %struct.iso9660* }
%struct.TYPE_5__ = type { %struct.iso9660* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_iso9660_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_iso9660_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %5 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.iso9660*
  store %struct.iso9660* %11, %struct.iso9660** %3, align 8
  %12 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %13 = call i32 @release_files(%struct.iso9660* %12)
  %14 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %15 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.iso9660*, %struct.iso9660** %16, align 8
  %18 = call i32 @free(%struct.iso9660* %17)
  %19 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 5
  %21 = call i32 @archive_string_free(i32* %20)
  %22 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %23 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %22, i32 0, i32 4
  %24 = call i32 @archive_string_free(i32* %23)
  %25 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %26 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.iso9660*, %struct.iso9660** %27, align 8
  %29 = call i32 @free(%struct.iso9660* %28)
  %30 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 1
  %32 = load %struct.iso9660*, %struct.iso9660** %31, align 8
  %33 = call i32 @free(%struct.iso9660* %32)
  %34 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %35 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %34, i32 0, i32 0
  %36 = load %struct.iso9660*, %struct.iso9660** %35, align 8
  %37 = call i32 @free(%struct.iso9660* %36)
  %38 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %39 = call i32 @free(%struct.iso9660* %38)
  %40 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @release_files(%struct.iso9660*) #1

declare dso_local i32 @free(%struct.iso9660*) #1

declare dso_local i32 @archive_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
