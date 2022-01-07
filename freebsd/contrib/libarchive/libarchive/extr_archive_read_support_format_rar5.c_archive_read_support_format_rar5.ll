; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_archive_read_support_format_rar5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_archive_read_support_format_rar5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.rar5 = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't allocate rar5 data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate rar5 filter buffer\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rar5\00", align 1
@rar5_bid = common dso_local global i32 0, align 4
@rar5_options = common dso_local global i32 0, align 4
@rar5_read_header = common dso_local global i32 0, align 4
@rar5_read_data = common dso_local global i32 0, align 4
@rar5_read_data_skip = common dso_local global i32 0, align 4
@rar5_seek_data = common dso_local global i32 0, align 4
@rar5_capabilities = common dso_local global i32 0, align 4
@rar5_has_encrypted_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_rar5(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rar5*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load i32, i32* @ARCHIVE_OK, align 4
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = call i32 @get_archive_read(%struct.archive* %8, %struct.archive_read** %4)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = call %struct.rar5* @malloc(i32 4)
  store %struct.rar5* %14, %struct.rar5** %6, align 8
  %15 = load %struct.rar5*, %struct.rar5** %6, align 8
  %16 = icmp eq %struct.rar5* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %13
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  %25 = load %struct.rar5*, %struct.rar5** %6, align 8
  %26 = call i32 @rar5_init(%struct.rar5* %25)
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @archive_set_error(i32* %30, i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %23
  %35 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %36 = load %struct.rar5*, %struct.rar5** %6, align 8
  %37 = load i32, i32* @rar5_bid, align 4
  %38 = load i32, i32* @rar5_options, align 4
  %39 = load i32, i32* @rar5_read_header, align 4
  %40 = load i32, i32* @rar5_read_data, align 4
  %41 = load i32, i32* @rar5_read_data_skip, align 4
  %42 = load i32, i32* @rar5_seek_data, align 4
  %43 = load i32, i32* @rar5_capabilities, align 4
  %44 = load i32, i32* @rar5_has_encrypted_entries, align 4
  %45 = call i32 @__archive_read_register_format(%struct.archive_read* %35, %struct.rar5* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 (%struct.archive_read*)* @rar5_cleanup, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %51 = call i32 @rar5_cleanup(%struct.archive_read* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %28, %17, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @get_archive_read(%struct.archive*, %struct.archive_read**) #1

declare dso_local %struct.rar5* @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @rar5_init(%struct.rar5*) #1

declare dso_local i32 @__archive_read_register_format(%struct.archive_read*, %struct.rar5*, i8*, i32, i32, i32, i32, i32, i32, i32 (%struct.archive_read*)*, i32, i32) #1

declare dso_local i32 @rar5_cleanup(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
