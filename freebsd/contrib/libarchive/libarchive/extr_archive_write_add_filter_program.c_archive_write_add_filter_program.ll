; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_archive_write_add_filter_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_archive_write_add_filter_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_filter = type { i32 (%struct.archive_write_filter*)*, i32, i32, i32, i32, i32, i32* }
%struct.private_data = type { %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@archive_write_add_filter_program.prefix = internal constant [10 x i8] c"Program: \00", align 1
@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"archive_write_add_filter_program\00", align 1
@ARCHIVE_FILTER_PROGRAM = common dso_local global i32 0, align 4
@archive_compressor_program_open = common dso_local global i32 0, align 4
@archive_compressor_program_write = common dso_local global i32 0, align 4
@archive_compressor_program_close = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't allocate memory for filter program\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_program(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_write_filter*, align 8
  %7 = alloca %struct.private_data*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %8)
  store %struct.archive_write_filter* %9, %struct.archive_write_filter** %6, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = call i32* @calloc(i32 1, i32 24)
  %15 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %16 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %15, i32 0, i32 6
  store i32* %14, i32** %16, align 8
  %17 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %18 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %24 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.private_data*
  store %struct.private_data* %26, %struct.private_data** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @strdup(i8* %27)
  %29 = load %struct.private_data*, %struct.private_data** %7, align 8
  %30 = getelementptr inbounds %struct.private_data, %struct.private_data* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.private_data*, %struct.private_data** %7, align 8
  %32 = getelementptr inbounds %struct.private_data, %struct.private_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %86

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = call i32* @__archive_write_program_allocate(i8* %37)
  %39 = load %struct.private_data*, %struct.private_data** %7, align 8
  %40 = getelementptr inbounds %struct.private_data, %struct.private_data* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.private_data*, %struct.private_data** %7, align 8
  %42 = getelementptr inbounds %struct.private_data, %struct.private_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %86

46:                                               ; preds = %36
  %47 = load %struct.private_data*, %struct.private_data** %7, align 8
  %48 = getelementptr inbounds %struct.private_data, %struct.private_data* %47, i32 0, i32 0
  %49 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @archive_write_add_filter_program.prefix, i64 0, i64 0))
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %49, %51
  %53 = add nsw i64 %52, 1
  %54 = call i32* @archive_string_ensure(%struct.TYPE_4__* %48, i64 %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %86

57:                                               ; preds = %46
  %58 = load %struct.private_data*, %struct.private_data** %7, align 8
  %59 = getelementptr inbounds %struct.private_data, %struct.private_data* %58, i32 0, i32 0
  %60 = call i32 @archive_strcpy(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @archive_write_add_filter_program.prefix, i64 0, i64 0))
  %61 = load %struct.private_data*, %struct.private_data** %7, align 8
  %62 = getelementptr inbounds %struct.private_data, %struct.private_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @archive_strcat(%struct.TYPE_4__* %62, i8* %63)
  %65 = load %struct.private_data*, %struct.private_data** %7, align 8
  %66 = getelementptr inbounds %struct.private_data, %struct.private_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %70 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ARCHIVE_FILTER_PROGRAM, align 4
  %72 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %73 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @archive_compressor_program_open, align 4
  %75 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %76 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @archive_compressor_program_write, align 4
  %78 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %79 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @archive_compressor_program_close, align 4
  %81 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %82 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %84 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %83, i32 0, i32 0
  store i32 (%struct.archive_write_filter*)* @archive_compressor_program_free, i32 (%struct.archive_write_filter*)** %84, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %93

86:                                               ; preds = %56, %45, %35, %21
  %87 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %88 = call i32 @archive_compressor_program_free(%struct.archive_write_filter* %87)
  %89 = load %struct.archive*, %struct.archive** %4, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @archive_set_error(%struct.archive* %89, i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %57
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @__archive_write_program_allocate(i8*) #1

declare dso_local i32* @archive_string_ensure(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @archive_strcpy(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @archive_strcat(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @archive_compressor_program_free(%struct.archive_write_filter*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
