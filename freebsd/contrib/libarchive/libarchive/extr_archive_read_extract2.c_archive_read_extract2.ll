; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }
%struct.archive_read = type { i32, i32, i32, i64 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_extract2(%struct.archive* %0, %struct.archive_entry* %1, %struct.archive* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store %struct.archive* %2, %struct.archive** %6, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = bitcast %struct.archive* %10 to %struct.archive_read*
  store %struct.archive_read* %11, %struct.archive_read** %7, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.archive*, %struct.archive** %6, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @archive_write_disk_set_skip_file(%struct.archive* %17, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %28 = call i32 @archive_write_header(%struct.archive* %26, %struct.archive_entry* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ARCHIVE_WARN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %40 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %39, i32 0, i32 0
  %41 = load %struct.archive*, %struct.archive** %6, align 8
  %42 = call i32 @archive_copy_error(i32* %40, %struct.archive* %41)
  br label %56

43:                                               ; preds = %34
  %44 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %45 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = call i64 @archive_entry_size(%struct.archive_entry* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load %struct.archive*, %struct.archive** %4, align 8
  %53 = load %struct.archive*, %struct.archive** %6, align 8
  %54 = call i32 @copy_data(%struct.archive* %52, %struct.archive* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.archive*, %struct.archive** %6, align 8
  %58 = call i32 @archive_write_finish_entry(%struct.archive* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ARCHIVE_WARN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 0
  %75 = load %struct.archive*, %struct.archive** %6, align 8
  %76 = call i32 @archive_copy_error(i32* %74, %struct.archive* %75)
  br label %77

77:                                               ; preds = %72, %68, %64
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @archive_write_disk_set_skip_file(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_copy_error(i32*, %struct.archive*) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @copy_data(%struct.archive*, %struct.archive*) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
