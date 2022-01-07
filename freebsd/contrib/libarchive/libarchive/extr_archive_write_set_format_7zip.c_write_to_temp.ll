; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_write_to_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_write_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { i32, i64 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't create temporary file\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fwrite function failed\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @write_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_temp(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct._7zip*
  store %struct._7zip* %14, %struct._7zip** %8, align 8
  %15 = load %struct._7zip*, %struct._7zip** %8, align 8
  %16 = getelementptr inbounds %struct._7zip, %struct._7zip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct._7zip*, %struct._7zip** %8, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = call i32 @__archive_mktemp(i32* null)
  %23 = load %struct._7zip*, %struct._7zip** %8, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct._7zip*, %struct._7zip** %8, align 8
  %26 = getelementptr inbounds %struct._7zip, %struct._7zip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %31 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %30, i32 0, i32 0
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @archive_set_error(i32* %31, i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %56, %36
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct._7zip*, %struct._7zip** %8, align 8
  %43 = getelementptr inbounds %struct._7zip, %struct._7zip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @write(i32 %44, i8* %45, i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 0
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @archive_set_error(i32* %52, i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %41
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct._7zip*, %struct._7zip** %8, align 8
  %65 = getelementptr inbounds %struct._7zip, %struct._7zip* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %50, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @__archive_mktemp(i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
