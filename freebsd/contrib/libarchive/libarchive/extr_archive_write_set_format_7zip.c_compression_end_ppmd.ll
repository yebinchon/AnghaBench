; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_end_ppmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_end_ppmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.archive = type { i32 }
%struct.la_zstream = type { i64, i32* }
%struct.ppmd_stream = type { %struct.ppmd_stream*, i32 }

@__archive_ppmd7_functions = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*)* @compression_end_ppmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_end_ppmd(%struct.archive* %0, %struct.la_zstream* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.la_zstream*, align 8
  %5 = alloca %struct.ppmd_stream*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %4, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %8 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.ppmd_stream*
  store %struct.ppmd_stream* %10, %struct.ppmd_stream** %5, align 8
  %11 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %12 = load %struct.ppmd_stream*, %struct.ppmd_stream** %5, align 8
  %13 = getelementptr inbounds %struct.ppmd_stream, %struct.ppmd_stream* %12, i32 0, i32 1
  %14 = call i32 %11(i32* %13)
  %15 = load %struct.ppmd_stream*, %struct.ppmd_stream** %5, align 8
  %16 = getelementptr inbounds %struct.ppmd_stream, %struct.ppmd_stream* %15, i32 0, i32 0
  %17 = load %struct.ppmd_stream*, %struct.ppmd_stream** %16, align 8
  %18 = call i32 @free(%struct.ppmd_stream* %17)
  %19 = load %struct.ppmd_stream*, %struct.ppmd_stream** %5, align 8
  %20 = call i32 @free(%struct.ppmd_stream* %19)
  %21 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %22 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %24 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %25
}

declare dso_local i32 @free(%struct.ppmd_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
