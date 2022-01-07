; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_unsupported_encoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_unsupported_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.la_zstream = type { i32*, i64 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s compression not supported on this platform\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*, i8*)* @compression_unsupported_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_unsupported_encoder(%struct.archive* %0, %struct.la_zstream* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.la_zstream*, align 8
  %6 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.archive*, %struct.archive** %4, align 8
  %8 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @archive_set_error(%struct.archive* %7, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %12 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.la_zstream*, %struct.la_zstream** %5, align 8
  %14 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @ARCHIVE_FAILED, align 4
  ret i32 %15
}

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
