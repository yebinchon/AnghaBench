; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.shar = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_shar_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_shar_close(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.shar*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.shar*
  store %struct.shar* %9, %struct.shar** %4, align 8
  %10 = load %struct.shar*, %struct.shar** %4, align 8
  %11 = getelementptr inbounds %struct.shar, %struct.shar* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.shar*, %struct.shar** %4, align 8
  %18 = getelementptr inbounds %struct.shar, %struct.shar* %17, i32 0, i32 1
  %19 = call i32 @archive_strcat(%struct.TYPE_2__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %21 = load %struct.shar*, %struct.shar** %4, align 8
  %22 = getelementptr inbounds %struct.shar, %struct.shar* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.shar*, %struct.shar** %4, align 8
  %26 = getelementptr inbounds %struct.shar, %struct.shar* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__archive_write_output(%struct.archive_write* %20, i32 %24, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %37 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %36, i32 0, i32 0
  %38 = call i32 @archive_write_set_bytes_in_last_block(i32* %37, i32 1)
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %33, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @archive_strcat(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32, i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
