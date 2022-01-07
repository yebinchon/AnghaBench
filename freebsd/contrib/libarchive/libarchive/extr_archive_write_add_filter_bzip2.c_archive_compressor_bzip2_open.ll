; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_bzip2.c_archive_compressor_bzip2_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_bzip2.c_archive_compressor_bzip2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_data = type { i64, i32 }
%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@archive_compressor_bzip2_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_compressor_bzip2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_bzip2_open(%struct.archive_write_filter* %0) #0 {
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
  %11 = call i32 @archive_strcpy(%struct.archive_string* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.private_data*, %struct.private_data** %3, align 8
  %13 = getelementptr inbounds %struct.private_data, %struct.private_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.private_data*, %struct.private_data** %3, align 8
  %19 = getelementptr inbounds %struct.private_data, %struct.private_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 48, %20
  %22 = call i32 @archive_strappend_char(%struct.archive_string* %4, i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @archive_compressor_bzip2_write, align 4
  %25 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %26 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %28 = load %struct.private_data*, %struct.private_data** %3, align 8
  %29 = getelementptr inbounds %struct.private_data, %struct.private_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__archive_write_program_open(%struct.archive_write_filter* %27, i32 %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = call i32 @archive_string_free(%struct.archive_string* %4)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i64) #1

declare dso_local i32 @__archive_write_program_open(%struct.archive_write_filter*, i32, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
