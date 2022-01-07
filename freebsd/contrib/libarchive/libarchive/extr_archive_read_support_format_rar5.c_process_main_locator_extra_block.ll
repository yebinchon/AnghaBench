; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_main_locator_extra_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_main_locator_extra_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { i32, i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*)* @process_main_locator_extra_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_main_locator_extra_block(%struct.archive_read* %0, %struct.rar5* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.rar5*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.rar5* %1, %struct.rar5** %5, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %8 = call i32 @read_var(%struct.archive_read* %7, i32* %6, i32* null)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = load %struct.rar5*, %struct.rar5** %5, align 8
  %19 = getelementptr inbounds %struct.rar5, %struct.rar5* %18, i32 0, i32 0
  %20 = call i32 @read_var(%struct.archive_read* %17, i32* %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %31 = load %struct.rar5*, %struct.rar5** %5, align 8
  %32 = getelementptr inbounds %struct.rar5, %struct.rar5* %31, i32 0, i32 1
  %33 = call i32 @read_var(%struct.archive_read* %30, i32* %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %35, %22, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @read_var(%struct.archive_read*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
