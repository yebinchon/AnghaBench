; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_cleanup_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_cleanup_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i32, i32 }
%struct.archive_string = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @cleanup_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_pathname(%struct.archive_write_disk* %0) #0 {
  %2 = alloca %struct.archive_write_disk*, align 8
  %3 = alloca %struct.archive_string, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %2, align 8
  %6 = call i32 @archive_string_init(%struct.archive_string* %3)
  %7 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %8 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %11 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cleanup_pathname_fsobj(i32 %9, i32* %4, %struct.archive_string* %3, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %19 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = call i32 @archive_string_free(%struct.archive_string* %3)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @cleanup_pathname_fsobj(i32, i32*, %struct.archive_string*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
