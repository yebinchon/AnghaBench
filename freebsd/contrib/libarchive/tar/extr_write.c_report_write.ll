; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_report_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_report_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i64 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"In: %d files, %s bytes;\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" Out: %s bytes, compression %d%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Current: %s (%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/%s bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdtar*, %struct.archive*, %struct.archive_entry*, i32)* @report_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_write(%struct.bsdtar* %0, %struct.archive* %1, %struct.archive_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.bsdtar*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %5, align 8
  store %struct.archive* %1, %struct.archive** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %13 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.archive*, %struct.archive** %6, align 8
  %21 = call i32 @archive_filter_bytes(%struct.archive* %20, i32 -1)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.archive*, %struct.archive** %6, align 8
  %23 = call i32 @archive_filter_bytes(%struct.archive* %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.archive*, %struct.archive** %6, align 8
  %26 = call i32 @archive_file_count(%struct.archive* %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @tar_i64toa(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %41

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %37, 100
  %39 = load i32, i32* %10, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @tar_i64toa(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %49 = call i32 @archive_entry_pathname(%struct.archive_entry* %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @tar_i64toa(i32 %50)
  %52 = call i32 @safe_fprintf(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %49, i8* %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %55 = call i32 @archive_entry_size(%struct.archive_entry* %54)
  %56 = call i8* @tar_i64toa(i32 %55)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @archive_filter_bytes(%struct.archive*, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i8* @tar_i64toa(i32) #1

declare dso_local i32 @safe_fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
