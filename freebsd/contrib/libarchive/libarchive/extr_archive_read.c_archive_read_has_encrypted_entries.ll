; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_has_encrypted_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_has_encrypted_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.archive_read*)* }

@ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_has_encrypted_entries(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_read*
  store %struct.archive_read* %7, %struct.archive_read** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = call i32 @archive_read_format_capabilities(%struct.archive* %8)
  %10 = load i32, i32* @ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA, align 4
  %11 = load i32, i32* @ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.archive*, %struct.archive** %3, align 8
  %15 = icmp ne %struct.archive* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %16
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %30, align 8
  %32 = icmp ne i32 (%struct.archive_read*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %35 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %37, align 8
  %39 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %40 = call i32 %38(%struct.archive_read* %39)
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %26, %21
  %42 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %33, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @archive_read_format_capabilities(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
