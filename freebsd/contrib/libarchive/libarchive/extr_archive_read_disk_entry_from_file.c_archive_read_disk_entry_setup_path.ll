; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_setup_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_setup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { i64 (i32*)*, i32 (i32*, i8*, i32)*, i32*, i64, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Couldn't determine path\00", align 1
@AE_IFLNK = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @archive_read_disk_entry_setup_path(%struct.archive_read_disk* %0, %struct.archive_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = call i8* @archive_entry_sourcepath(%struct.archive_entry* %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %14 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %19 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %18, i32 0, i32 0
  %20 = load i64 (i32*)*, i64 (i32*)** %19, align 8
  %21 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %22 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 %20(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17, %3
  %27 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %28 = call i8* @archive_entry_pathname(%struct.archive_entry* %27)
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %26, %17, %12
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %34 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %33, i32 0, i32 4
  %35 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %36 = call i32 @archive_set_error(i32* %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %73

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %46 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %51 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %56 = call i64 @archive_entry_filetype(%struct.archive_entry* %55)
  %57 = load i64, i64* @AE_IFLNK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54, %49
  %60 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %61 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %60, i32 0, i32 1
  %62 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %61, align 8
  %63 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %64 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @O_RDONLY, align 4
  %68 = load i32, i32* @O_NONBLOCK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 %62(i32* %65, i8* %66, i32 %69)
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %59, %54, %44, %40, %37
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i8*, i8** %7, align 8
  ret i8* %74
}

declare dso_local i8* @archive_entry_sourcepath(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
