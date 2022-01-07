; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rar = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@__archive_ppmd7_functions = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported compression method for RAR file.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @archive_read_format_rar_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_rar_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rar*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rar*
  store %struct.rar* %17, %struct.rar** %10, align 8
  %18 = load %struct.rar*, %struct.rar** %10, align 8
  %19 = getelementptr inbounds %struct.rar, %struct.rar* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.rar*, %struct.rar** %10, align 8
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.rar*, %struct.rar** %10, align 8
  %28 = getelementptr inbounds %struct.rar, %struct.rar* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %33 = load %struct.rar*, %struct.rar** %10, align 8
  %34 = getelementptr inbounds %struct.rar, %struct.rar* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @__archive_read_consume(%struct.archive_read* %32, i64 %35)
  %37 = load %struct.rar*, %struct.rar** %10, align 8
  %38 = getelementptr inbounds %struct.rar, %struct.rar* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i8**, i8*** %7, align 8
  store i8* null, i8** %40, align 8
  %41 = load %struct.rar*, %struct.rar** %10, align 8
  %42 = getelementptr inbounds %struct.rar, %struct.rar* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.rar*, %struct.rar** %10, align 8
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rar*, %struct.rar** %10, align 8
  %50 = getelementptr inbounds %struct.rar, %struct.rar* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45, %39
  %54 = load i64*, i64** %8, align 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.rar*, %struct.rar** %10, align 8
  %56 = getelementptr inbounds %struct.rar, %struct.rar* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.rar*, %struct.rar** %10, align 8
  %62 = getelementptr inbounds %struct.rar, %struct.rar* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.rar*, %struct.rar** %10, align 8
  %67 = getelementptr inbounds %struct.rar, %struct.rar* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %53
  %71 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %71, i32* %5, align 4
  br label %113

72:                                               ; preds = %45
  %73 = load %struct.rar*, %struct.rar** %10, align 8
  %74 = getelementptr inbounds %struct.rar, %struct.rar* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %105 [
    i32 128, label %76
    i32 131, label %82
    i32 132, label %82
    i32 129, label %82
    i32 130, label %82
    i32 133, label %82
  ]

76:                                               ; preds = %72
  %77 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = call i32 @read_data_stored(%struct.archive_read* %77, i8** %78, i64* %79, i64* %80)
  store i32 %81, i32* %11, align 4
  br label %111

82:                                               ; preds = %72, %72, %72, %72, %72
  %83 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = call i32 @read_data_compressed(%struct.archive_read* %83, i8** %84, i64* %85, i64* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ARCHIVE_WARN, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %97 = load %struct.rar*, %struct.rar** %10, align 8
  %98 = getelementptr inbounds %struct.rar, %struct.rar* %97, i32 0, i32 8
  %99 = call i32 %96(i32* %98)
  %100 = load %struct.rar*, %struct.rar** %10, align 8
  %101 = getelementptr inbounds %struct.rar, %struct.rar* %100, i32 0, i32 6
  store i32 1, i32* %101, align 4
  %102 = load %struct.rar*, %struct.rar** %10, align 8
  %103 = getelementptr inbounds %struct.rar, %struct.rar* %102, i32 0, i32 7
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %91, %82
  br label %111

105:                                              ; preds = %72
  %106 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 0
  %108 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %109 = call i32 @archive_set_error(i32* %107, i32 %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %105, %104, %76
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %70
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @read_data_stored(%struct.archive_read*, i8**, i64*, i64*) #1

declare dso_local i32 @read_data_compressed(%struct.archive_read*, i8**, i64*, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
