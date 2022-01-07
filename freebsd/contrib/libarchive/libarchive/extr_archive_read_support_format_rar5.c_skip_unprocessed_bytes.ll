; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_skip_unprocessed_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_skip_unprocessed_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @skip_unprocessed_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_unprocessed_bytes(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.rar5*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = call %struct.rar5* @get_context(%struct.archive_read* %6)
  store %struct.rar5* %7, %struct.rar5** %4, align 8
  %8 = load %struct.rar5*, %struct.rar5** %4, align 8
  %9 = getelementptr inbounds %struct.rar5, %struct.rar5* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.rar5*, %struct.rar5** %4, align 8
  %15 = getelementptr inbounds %struct.rar5, %struct.rar5* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %20 = load %struct.rar5*, %struct.rar5** %4, align 8
  %21 = getelementptr inbounds %struct.rar5, %struct.rar5* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @consume(%struct.archive_read* %19, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %18
  %31 = load %struct.rar5*, %struct.rar5** %4, align 8
  %32 = getelementptr inbounds %struct.rar5, %struct.rar5* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %43

34:                                               ; preds = %13
  %35 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %36 = call i32 @rar5_read_data_skip(%struct.archive_read* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %40, %28
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @consume(%struct.archive_read*, i64) #1

declare dso_local i32 @rar5_read_data_skip(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
