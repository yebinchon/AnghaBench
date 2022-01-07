; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { %struct.private_data* }
%struct.private_data = type { i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @output_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_flush(%struct.archive_write_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_filter*, align 8
  %4 = alloca %struct.private_data*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %3, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 0
  %8 = load %struct.private_data*, %struct.private_data** %7, align 8
  store %struct.private_data* %8, %struct.private_data** %4, align 8
  %9 = load %struct.private_data*, %struct.private_data** %4, align 8
  %10 = getelementptr inbounds %struct.private_data, %struct.private_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = srem i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.private_data*, %struct.private_data** %4, align 8
  %16 = getelementptr inbounds %struct.private_data, %struct.private_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 8
  %19 = add nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  %21 = load %struct.private_data*, %struct.private_data** %4, align 8
  %22 = getelementptr inbounds %struct.private_data, %struct.private_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %24 = load %struct.private_data*, %struct.private_data** %4, align 8
  %25 = getelementptr inbounds %struct.private_data, %struct.private_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @output_byte(%struct.archive_write_filter* %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @output_byte(%struct.archive_write_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
