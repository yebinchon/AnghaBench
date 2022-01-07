; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.warc_s* }
%struct.warc_s = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @_warc_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_skip(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.warc_s*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.warc_s*, %struct.warc_s** %7, align 8
  store %struct.warc_s* %8, %struct.warc_s** %3, align 8
  %9 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %10 = load %struct.warc_s*, %struct.warc_s** %3, align 8
  %11 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, 4
  %14 = call i32 @__archive_read_consume(%struct.archive_read* %9, i32 %13)
  %15 = load %struct.warc_s*, %struct.warc_s** %3, align 8
  %16 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.warc_s*, %struct.warc_s** %3, align 8
  %18 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %19
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
