; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_data = type { %struct.private_data*, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_compressor_compress_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_compress_close(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.private_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.private_data*
  store %struct.private_data* %9, %struct.private_data** %3, align 8
  %10 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %11 = load %struct.private_data*, %struct.private_data** %3, align 8
  %12 = getelementptr inbounds %struct.private_data, %struct.private_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @output_code(%struct.archive_write_filter* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %21 = call i32 @output_flush(%struct.archive_write_filter* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %37

26:                                               ; preds = %19
  %27 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %28 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.private_data*, %struct.private_data** %3, align 8
  %31 = getelementptr inbounds %struct.private_data, %struct.private_data* %30, i32 0, i32 0
  %32 = load %struct.private_data*, %struct.private_data** %31, align 8
  %33 = load %struct.private_data*, %struct.private_data** %3, align 8
  %34 = getelementptr inbounds %struct.private_data, %struct.private_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__archive_write_filter(i32 %29, %struct.private_data* %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %25, %18
  %38 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %39 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @__archive_write_close_filter(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load %struct.private_data*, %struct.private_data** %3, align 8
  %49 = getelementptr inbounds %struct.private_data, %struct.private_data* %48, i32 0, i32 0
  %50 = load %struct.private_data*, %struct.private_data** %49, align 8
  %51 = call i32 @free(%struct.private_data* %50)
  %52 = load %struct.private_data*, %struct.private_data** %3, align 8
  %53 = call i32 @free(%struct.private_data* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @output_code(%struct.archive_write_filter*, i32) #1

declare dso_local i32 @output_flush(%struct.archive_write_filter*) #1

declare dso_local i32 @__archive_write_filter(i32, %struct.private_data*, i32) #1

declare dso_local i32 @__archive_write_close_filter(i32) #1

declare dso_local i32 @free(%struct.private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
