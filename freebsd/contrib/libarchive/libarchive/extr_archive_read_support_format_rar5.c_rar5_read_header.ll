; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.rar5 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@rar5_signature_size = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @rar5_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar5_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.rar5*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %9 = call %struct.rar5* @get_context(%struct.archive_read* %8)
  store %struct.rar5* %9, %struct.rar5** %6, align 8
  %10 = load %struct.rar5*, %struct.rar5** %6, align 8
  %11 = getelementptr inbounds %struct.rar5, %struct.rar5* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = call i32 @init_header(%struct.archive_read* %15)
  %17 = load %struct.rar5*, %struct.rar5** %6, align 8
  %18 = getelementptr inbounds %struct.rar5, %struct.rar5* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.rar5*, %struct.rar5** %6, align 8
  %21 = getelementptr inbounds %struct.rar5, %struct.rar5* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = load i32, i32* @rar5_signature_size, align 4
  %28 = call i32 @consume(%struct.archive_read* %26, i32 %27)
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %24
  %33 = load %struct.rar5*, %struct.rar5** %6, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %19
  br label %36

36:                                               ; preds = %56, %35
  %37 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = call i32 @process_base_block(%struct.archive_read* %37, %struct.archive_entry* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ARCHIVE_RETRY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load %struct.rar5*, %struct.rar5** %6, align 8
  %46 = getelementptr inbounds %struct.rar5, %struct.rar5* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br label %56

56:                                               ; preds = %54, %40
  %57 = phi i1 [ true, %40 ], [ %55, %54 ]
  br i1 %57, label %36, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %30
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @init_header(%struct.archive_read*) #1

declare dso_local i32 @consume(%struct.archive_read*, i32) #1

declare dso_local i32 @process_base_block(%struct.archive_read*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
