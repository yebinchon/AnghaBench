; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_to_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't write to temporary file\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @write_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_temp(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load %struct.iso9660*, %struct.iso9660** %12, align 8
  store %struct.iso9660* %13, %struct.iso9660** %8, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %33, %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @write(i32 %21, i8* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @archive_set_error(i32* %29, i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %18
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %10, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
