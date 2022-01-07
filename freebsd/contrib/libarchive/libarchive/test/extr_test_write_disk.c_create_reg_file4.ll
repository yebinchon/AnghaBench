; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }
%struct.stat = type { i32, i32 }

@create_reg_file4.data = internal constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"st.st_mode=%o archive_entry_mode(ae)=%o\00", align 1
@UMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*, i8*)* @create_reg_file4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reg_file4(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.archive* (...) @archive_write_disk_new()
  store %struct.archive* %7, %struct.archive** %5, align 8
  %8 = icmp ne %struct.archive* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.archive*, %struct.archive** %5, align 8
  %12 = load %struct.archive*, %struct.archive** %5, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = call i32 @archive_write_header(%struct.archive* %12, %struct.archive_entry* %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %11, i32 0, i32 %14)
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %5, align 8
  %18 = call i32 @archive_write_data_block(%struct.archive* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @create_reg_file4.data, i64 0, i64 0), i32 27, i32 0)
  %19 = call i32 @assertEqualInt(i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = load %struct.archive*, %struct.archive** %5, align 8
  %22 = call i32 @archive_write_finish_entry(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %20, i32 0, i32 %22)
  %24 = load %struct.archive*, %struct.archive** %5, align 8
  %25 = call i32 @archive_write_free(%struct.archive* %24)
  %26 = call i32 @assertEqualInt(i32 0, i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = call i32 @archive_entry_pathname(%struct.archive_entry* %27)
  %29 = call i64 @stat(i32 %28, %struct.stat* %6)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %36 = call i32 @archive_entry_mode(%struct.archive_entry* %35)
  %37 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %41 = call i32 @archive_entry_mode(%struct.archive_entry* %40)
  %42 = load i32, i32* @UMASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @assertEqualInt(i32 %39, i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, ...) @failure(i8* %46)
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @assertEqualInt(i32 %49, i32 27)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_disk_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_data_block(%struct.archive*, i8*, i32, i32) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
