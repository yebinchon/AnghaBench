; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_suitable_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_suitable_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { %struct.TYPE_2__, %struct.tree* }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { %struct.filesystem* }
%struct.filesystem = type { i32, i32, i64, i64, i64, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't allocate memory\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_disk*)* @setup_suitable_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_suitable_read_buffer(%struct.archive_read_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read_disk*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.filesystem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %3, align 8
  %10 = load %struct.archive_read_disk*, %struct.archive_read_disk** %3, align 8
  %11 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %10, i32 0, i32 1
  %12 = load %struct.tree*, %struct.tree** %11, align 8
  store %struct.tree* %12, %struct.tree** %4, align 8
  %13 = load %struct.tree*, %struct.tree** %4, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 0
  %15 = load %struct.filesystem*, %struct.filesystem** %14, align 8
  store %struct.filesystem* %15, %struct.filesystem** %5, align 8
  %16 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %17 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %124

20:                                               ; preds = %1
  %21 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %22 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %28 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 4096, %25 ], [ %29, %26 ]
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %34 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %39 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %6, align 8
  br label %78

44:                                               ; preds = %30
  %45 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %46 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %52 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %56 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %6, align 8
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %64 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %70, %66
  %68 = load i64, i64* %6, align 8
  %69 = icmp ult i64 %68, 65536
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %6, align 8
  br label %67

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %74, %37
  %79 = load i64, i64* %6, align 8
  %80 = call i32* @malloc(i64 %79)
  %81 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %82 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %81, i32 0, i32 5
  store i32* %80, i32** %82, align 8
  %83 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %84 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load %struct.archive_read_disk*, %struct.archive_read_disk** %3, align 8
  %89 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %88, i32 0, i32 0
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @archive_set_error(%struct.TYPE_2__* %89, i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %93 = load %struct.archive_read_disk*, %struct.archive_read_disk** %3, align 8
  %94 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %96, i32* %2, align 4
  br label %126

97:                                               ; preds = %78
  %98 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %99 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i64
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %7, align 8
  %104 = urem i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = sub i64 %108, %109
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %107, %97
  %112 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %113 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %118 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %117, i32 0, i32 6
  store i32* %116, i32** %118, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %8, align 8
  %121 = sub i64 %119, %120
  %122 = load %struct.filesystem*, %struct.filesystem** %5, align 8
  %123 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %111, %1
  %125 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %87
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
