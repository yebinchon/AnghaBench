; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_zstd.c_archive_compressor_zstd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_zstd.c_archive_compressor_zstd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_data = type { i32, i32 }
%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"zstd -%d\00", align 1
@archive_compressor_zstd_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_compressor_zstd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_zstd_open(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.private_data*, align 8
  %4 = alloca %struct.archive_string, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.private_data*
  store %struct.private_data* %9, %struct.private_data** %3, align 8
  %10 = call i32 @archive_string_init(%struct.archive_string* %4)
  %11 = load %struct.private_data*, %struct.private_data** %3, align 8
  %12 = getelementptr inbounds %struct.private_data, %struct.private_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @archive_string_sprintf(%struct.archive_string* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @archive_compressor_zstd_write, align 4
  %16 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %17 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %19 = load %struct.private_data*, %struct.private_data** %3, align 8
  %20 = getelementptr inbounds %struct.private_data, %struct.private_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__archive_write_program_open(%struct.archive_write_filter* %18, i32 %21, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = call i32 @archive_string_free(%struct.archive_string* %4)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i32) #1

declare dso_local i32 @__archive_write_program_open(%struct.archive_write_filter*, i32, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
