; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_read_ahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rar = type { i64, i32, i32, i32, i32 }

@MHD_VOLUME = common dso_local global i32 0, align 4
@FHD_SPLIT_AFTER = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.archive_read*, i64, i64*)* @rar_read_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rar_read_ahead(%struct.archive_read* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rar*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rar*
  store %struct.rar* %16, %struct.rar** %8, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i8* @__archive_read_ahead(%struct.archive_read* %17, i64 %18, i64* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %111

23:                                               ; preds = %3
  %24 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %39 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %29, %23
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rar*, %struct.rar** %8, align 8
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.rar*, %struct.rar** %8, align 8
  %52 = getelementptr inbounds %struct.rar, %struct.rar* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i8* null, i8** %4, align 8
  br label %113

60:                                               ; preds = %55
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = load %struct.rar*, %struct.rar** %8, align 8
  %66 = getelementptr inbounds %struct.rar, %struct.rar* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MHD_VOLUME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %64
  %72 = load %struct.rar*, %struct.rar** %8, align 8
  %73 = getelementptr inbounds %struct.rar, %struct.rar* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FHD_SPLIT_AFTER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %71
  %79 = load %struct.rar*, %struct.rar** %8, align 8
  %80 = getelementptr inbounds %struct.rar, %struct.rar* %79, i32 0, i32 3
  store i32 1, i32* %80, align 8
  %81 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %82 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* %81, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @ARCHIVE_EOF, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.rar*, %struct.rar** %8, align 8
  %91 = getelementptr inbounds %struct.rar, %struct.rar* %90, i32 0, i32 4
  store i32 1, i32* %91, align 4
  %92 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %93 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %94 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* %92, i32 %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %89, %78
  %98 = load %struct.rar*, %struct.rar** %8, align 8
  %99 = getelementptr inbounds %struct.rar, %struct.rar* %98, i32 0, i32 3
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* null, i8** %4, align 8
  br label %113

104:                                              ; preds = %97
  %105 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = call i8* @rar_read_ahead(%struct.archive_read* %105, i64 %106, i64* %107)
  store i8* %108, i8** %4, align 8
  br label %113

109:                                              ; preds = %71, %64, %60
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %3
  %112 = load i8*, i8** %9, align 8
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %111, %104, %103, %59
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

declare dso_local i32 @archive_read_format_rar_read_header(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
