; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_use_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_use_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.data_ready* }
%struct.data_ready = type { i8*, i64, i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, i8**, i64*, i32*)* @use_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_data(%struct.rar5* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rar5*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.data_ready*, align 8
  store %struct.rar5* %0, %struct.rar5** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %61, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.rar5*, %struct.rar5** %6, align 8
  %15 = getelementptr inbounds %struct.rar5, %struct.rar5* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.data_ready*, %struct.data_ready** %16, align 8
  %18 = call i32 @rar5_countof(%struct.data_ready* %17)
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %12
  %21 = load %struct.rar5*, %struct.rar5** %6, align 8
  %22 = getelementptr inbounds %struct.rar5, %struct.rar5* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.data_ready*, %struct.data_ready** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %24, i64 %26
  store %struct.data_ready* %27, %struct.data_ready** %11, align 8
  %28 = load %struct.data_ready*, %struct.data_ready** %11, align 8
  %29 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %20
  %33 = load i8**, i8*** %7, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.data_ready*, %struct.data_ready** %11, align 8
  %37 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i64*, i64** %8, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.data_ready*, %struct.data_ready** %11, align 8
  %45 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.data_ready*, %struct.data_ready** %11, align 8
  %53 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.data_ready*, %struct.data_ready** %11, align 8
  %58 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %12

64:                                               ; preds = %12
  %65 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @rar5_countof(%struct.data_ready*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
