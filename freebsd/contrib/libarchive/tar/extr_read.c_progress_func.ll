; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_progress_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_progress_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.progress_data = type { %struct.archive_entry*, %struct.archive*, %struct.bsdtar* }
%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }
%struct.bsdtar = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"In: %s bytes, compression %d%%;\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  Out: %d files, %s bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Current: %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (%s bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @progress_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @progress_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.progress_data*, align 8
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.progress_data*
  store %struct.progress_data* %11, %struct.progress_data** %3, align 8
  %12 = load %struct.progress_data*, %struct.progress_data** %3, align 8
  %13 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %12, i32 0, i32 2
  %14 = load %struct.bsdtar*, %struct.bsdtar** %13, align 8
  store %struct.bsdtar* %14, %struct.bsdtar** %4, align 8
  %15 = load %struct.progress_data*, %struct.progress_data** %3, align 8
  %16 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %15, i32 0, i32 1
  %17 = load %struct.archive*, %struct.archive** %16, align 8
  store %struct.archive* %17, %struct.archive** %5, align 8
  %18 = load %struct.progress_data*, %struct.progress_data** %3, align 8
  %19 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %18, i32 0, i32 0
  %20 = load %struct.archive_entry*, %struct.archive_entry** %19, align 8
  store %struct.archive_entry* %20, %struct.archive_entry** %6, align 8
  %21 = call i32 (...) @need_report()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %26 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.archive*, %struct.archive** %5, align 8
  %34 = icmp ne %struct.archive* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load %struct.archive*, %struct.archive** %5, align 8
  %37 = call i32 @archive_filter_bytes(%struct.archive* %36, i32 -1)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.archive*, %struct.archive** %5, align 8
  %39 = call i32 @archive_filter_bytes(%struct.archive* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %51

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %47, 100
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44, %43
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @tar_i64toa(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.archive*, %struct.archive** %5, align 8
  %59 = call i32 @archive_file_count(%struct.archive* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @tar_i64toa(i32 %60)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59, i8* %61)
  br label %63

63:                                               ; preds = %51, %32
  %64 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %65 = icmp ne %struct.archive_entry* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %69 = call i32 @archive_entry_pathname(%struct.archive_entry* %68)
  %70 = call i32 @safe_fprintf(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @stderr, align 4
  %72 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %73 = call i32 @archive_entry_size(%struct.archive_entry* %72)
  %74 = call i8* @tar_i64toa(i32 %73)
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %23, %66, %63
  ret void
}

declare dso_local i32 @need_report(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @archive_filter_bytes(%struct.archive*, i32) #1

declare dso_local i8* @tar_i64toa(i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @safe_fprintf(i32, i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
