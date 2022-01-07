; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_data_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_data_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lha = type { i32, i32, i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_lha_read_data_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_lha_read_data_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.lha*, align 8
  %5 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lha*
  store %struct.lha* %11, %struct.lha** %4, align 8
  %12 = load %struct.lha*, %struct.lha** %4, align 8
  %13 = getelementptr inbounds %struct.lha, %struct.lha* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %18 = load %struct.lha*, %struct.lha** %4, align 8
  %19 = getelementptr inbounds %struct.lha, %struct.lha* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @__archive_read_consume(%struct.archive_read* %17, i64 %20)
  %22 = load %struct.lha*, %struct.lha** %4, align 8
  %23 = getelementptr inbounds %struct.lha, %struct.lha* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.lha*, %struct.lha** %4, align 8
  %26 = getelementptr inbounds %struct.lha, %struct.lha* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %33 = load %struct.lha*, %struct.lha** %4, align 8
  %34 = getelementptr inbounds %struct.lha, %struct.lha* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @__archive_read_consume(%struct.archive_read* %32, i64 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.lha*, %struct.lha** %4, align 8
  %43 = getelementptr inbounds %struct.lha, %struct.lha* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.lha*, %struct.lha** %4, align 8
  %45 = getelementptr inbounds %struct.lha, %struct.lha* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %39, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
