; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.la_zstream = type { i32 (%struct.archive.0*, %struct.la_zstream*)*, i32*, i64, i64 }
%struct.archive.0 = type opaque

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*)* @compression_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_end(%struct.archive* %0, %struct.la_zstream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.la_zstream*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %5, align 8
  %6 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %7 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %12 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %14 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @free(i32* %15)
  %17 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %18 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %20 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %19, i32 0, i32 0
  %21 = load i32 (%struct.archive.0*, %struct.la_zstream*)*, i32 (%struct.archive.0*, %struct.la_zstream*)** %20, align 8
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = bitcast %struct.archive* %22 to %struct.archive.0*
  %24 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %25 = call i32 %21(%struct.archive.0* %23, %struct.la_zstream* %24)
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
