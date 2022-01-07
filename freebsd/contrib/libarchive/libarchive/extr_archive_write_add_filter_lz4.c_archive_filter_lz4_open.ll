; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_filter_lz4_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_filter_lz4_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_data = type { i64, i64, i64, i64, i32, i64 }
%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"lz4 -z -q -q\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" -B\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" -BX\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" --no-frame-crc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" -BD\00", align 1
@archive_filter_lz4_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_filter_lz4_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_filter_lz4_open(%struct.archive_write_filter* %0) #0 {
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
  %11 = call i32 @archive_strcpy(%struct.archive_string* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
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
  %24 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.private_data*, %struct.private_data** %3, align 8
  %26 = getelementptr inbounds %struct.private_data, %struct.private_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 48, %27
  %29 = call i32 @archive_strappend_char(%struct.archive_string* %4, i64 %28)
  %30 = load %struct.private_data*, %struct.private_data** %3, align 8
  %31 = getelementptr inbounds %struct.private_data, %struct.private_data* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  %37 = load %struct.private_data*, %struct.private_data** %3, align 8
  %38 = getelementptr inbounds %struct.private_data, %struct.private_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.private_data*, %struct.private_data** %3, align 8
  %45 = getelementptr inbounds %struct.private_data, %struct.private_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* @archive_filter_lz4_write, align 4
  %52 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %53 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %55 = load %struct.private_data*, %struct.private_data** %3, align 8
  %56 = getelementptr inbounds %struct.private_data, %struct.private_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__archive_write_program_open(%struct.archive_write_filter* %54, i32 %57, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = call i32 @archive_string_free(%struct.archive_string* %4)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
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
