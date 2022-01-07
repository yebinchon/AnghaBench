; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_seek_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_seek_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._7zip = type { i64, i64, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i32* }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Damaged 7-Zip archive\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @seek_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_pack(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct._7zip*, align 8
  %5 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct._7zip*
  store %struct._7zip* %11, %struct._7zip** %4, align 8
  %12 = load %struct._7zip*, %struct._7zip** %4, align 8
  %13 = getelementptr inbounds %struct._7zip, %struct._7zip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %20 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = load %struct._7zip*, %struct._7zip** %4, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct._7zip*, %struct._7zip** %4, align 8
  %29 = getelementptr inbounds %struct._7zip, %struct._7zip* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct._7zip*, %struct._7zip** %4, align 8
  %34 = getelementptr inbounds %struct._7zip, %struct._7zip* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct._7zip*, %struct._7zip** %4, align 8
  %36 = getelementptr inbounds %struct._7zip, %struct._7zip* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct._7zip*, %struct._7zip** %4, align 8
  %41 = getelementptr inbounds %struct._7zip, %struct._7zip* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct._7zip*, %struct._7zip** %4, align 8
  %46 = getelementptr inbounds %struct._7zip, %struct._7zip* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %22
  %51 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct._7zip*, %struct._7zip** %4, align 8
  %54 = getelementptr inbounds %struct._7zip, %struct._7zip* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* @SEEK_SET, align 4
  %58 = call i64 @__archive_read_seek(%struct.archive_read* %51, i64 %56, i32 %57)
  %59 = icmp sgt i64 0, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %61, i32* %2, align 4
  br label %76

62:                                               ; preds = %50
  %63 = load i64, i64* %5, align 8
  %64 = load %struct._7zip*, %struct._7zip** %4, align 8
  %65 = getelementptr inbounds %struct._7zip, %struct._7zip* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %22
  %67 = load %struct._7zip*, %struct._7zip** %4, align 8
  %68 = getelementptr inbounds %struct._7zip, %struct._7zip* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct._7zip*, %struct._7zip** %4, align 8
  %72 = getelementptr inbounds %struct._7zip, %struct._7zip* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %60, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
