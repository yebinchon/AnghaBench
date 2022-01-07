; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_data_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_data_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rar = type { i64, i64, i32, i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@MHD_VOLUME = common dso_local global i32 0, align 4
@FHD_SPLIT_AFTER = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_rar_read_data_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_rar_read_data_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.rar*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rar*
  store %struct.rar* %12, %struct.rar** %4, align 8
  %13 = load %struct.rar*, %struct.rar** %4, align 8
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %19 = load %struct.rar*, %struct.rar** %4, align 8
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @__archive_read_consume(%struct.archive_read* %18, i64 %21)
  %23 = load %struct.rar*, %struct.rar** %4, align 8
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.rar*, %struct.rar** %4, align 8
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %32 = load %struct.rar*, %struct.rar** %4, align 8
  %33 = getelementptr inbounds %struct.rar, %struct.rar* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @__archive_read_consume(%struct.archive_read* %31, i64 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.rar*, %struct.rar** %4, align 8
  %43 = getelementptr inbounds %struct.rar, %struct.rar* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MHD_VOLUME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load %struct.rar*, %struct.rar** %4, align 8
  %50 = getelementptr inbounds %struct.rar, %struct.rar* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FHD_SPLIT_AFTER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %57 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ARCHIVE_EOF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %66 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %67 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* %65, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ARCHIVE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %70
  %77 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %78 = call i32 @archive_read_format_rar_read_data_skip(%struct.archive_read* %77)
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %48, %41
  %80 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %76, %74, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_read_format_rar_read_header(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
