; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_format_iso9660_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_format_iso9660_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iso9660 = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"rockridge\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Rockridge\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8*, i8*)* @archive_read_format_iso9660_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_iso9660_options(%struct.archive_read* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iso9660*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %10 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iso9660*
  store %struct.iso9660* %14, %struct.iso9660** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29, %25, %21, %18
  %38 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %39 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %42 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %58 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %53, %43
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
