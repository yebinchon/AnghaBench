; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_times_from_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_times_from_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i32, i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @set_times_from_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_times_from_entry(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %12 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %13 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i32 %14, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  store i32 %14, i32* %4, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %16 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @archive_entry_atime_is_set(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @archive_entry_mtime_is_set(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %108

28:                                               ; preds = %20, %1
  %29 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %30 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @archive_entry_atime_is_set(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %36 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @archive_entry_atime(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %40 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @archive_entry_atime_nsec(i32 %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %45 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @archive_entry_birthtime_is_set(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %51 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @archive_entry_birthtime(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %55 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @archive_entry_birthtime_nsec(i32 %56)
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %60 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @archive_entry_mtime_is_set(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %66 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @archive_entry_mtime(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %70 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @archive_entry_mtime_nsec(i32 %71)
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %75 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @archive_entry_ctime_is_set(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %81 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @archive_entry_ctime(i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %85 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @archive_entry_ctime_nsec(i32 %86)
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %79, %73
  %89 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %90 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %91 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %94 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %97 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @set_times(%struct.archive_write_disk* %89, i32 %92, i32 %95, i32 %98, i32 %99, i64 %100, i32 %101, i64 %102, i32 %103, i64 %104, i32 %105, i64 %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %88, %26
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @archive_entry_atime_is_set(i32) #1

declare dso_local i64 @archive_entry_mtime_is_set(i32) #1

declare dso_local i32 @archive_entry_atime(i32) #1

declare dso_local i64 @archive_entry_atime_nsec(i32) #1

declare dso_local i64 @archive_entry_birthtime_is_set(i32) #1

declare dso_local i32 @archive_entry_birthtime(i32) #1

declare dso_local i64 @archive_entry_birthtime_nsec(i32) #1

declare dso_local i32 @archive_entry_mtime(i32) #1

declare dso_local i64 @archive_entry_mtime_nsec(i32) #1

declare dso_local i64 @archive_entry_ctime_is_set(i32) #1

declare dso_local i32 @archive_entry_ctime(i32) #1

declare dso_local i64 @archive_entry_ctime_nsec(i32) #1

declare dso_local i32 @set_times(%struct.archive_write_disk*, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
