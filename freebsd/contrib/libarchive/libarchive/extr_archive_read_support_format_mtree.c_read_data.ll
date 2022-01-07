; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mtree = type { i64, i8*, i32, i64, i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Can't read\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_data(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtree*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mtree*
  store %struct.mtree* %18, %struct.mtree** %12, align 8
  %19 = load %struct.mtree*, %struct.mtree** %12, align 8
  %20 = getelementptr inbounds %struct.mtree, %struct.mtree* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i8**, i8*** %7, align 8
  store i8* null, i8** %24, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %27, i32* %5, align 4
  br label %119

28:                                               ; preds = %4
  %29 = load %struct.mtree*, %struct.mtree** %12, align 8
  %30 = getelementptr inbounds %struct.mtree, %struct.mtree* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.mtree*, %struct.mtree** %12, align 8
  %35 = getelementptr inbounds %struct.mtree, %struct.mtree* %34, i32 0, i32 2
  store i32 65536, i32* %35, align 8
  %36 = load %struct.mtree*, %struct.mtree** %12, align 8
  %37 = getelementptr inbounds %struct.mtree, %struct.mtree* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @malloc(i32 %38)
  %40 = load %struct.mtree*, %struct.mtree** %12, align 8
  %41 = getelementptr inbounds %struct.mtree, %struct.mtree* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mtree*, %struct.mtree** %12, align 8
  %43 = getelementptr inbounds %struct.mtree, %struct.mtree* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %48 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %47, i32 0, i32 0
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @archive_set_error(i32* %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %51, i32* %5, align 4
  br label %119

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.mtree*, %struct.mtree** %12, align 8
  %55 = getelementptr inbounds %struct.mtree, %struct.mtree* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %7, align 8
  store i8* %56, i8** %57, align 8
  %58 = load %struct.mtree*, %struct.mtree** %12, align 8
  %59 = getelementptr inbounds %struct.mtree, %struct.mtree* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.mtree*, %struct.mtree** %12, align 8
  %63 = getelementptr inbounds %struct.mtree, %struct.mtree* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.mtree*, %struct.mtree** %12, align 8
  %67 = getelementptr inbounds %struct.mtree, %struct.mtree* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mtree*, %struct.mtree** %12, align 8
  %70 = getelementptr inbounds %struct.mtree, %struct.mtree* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = icmp sgt i64 %65, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %53
  %75 = load %struct.mtree*, %struct.mtree** %12, align 8
  %76 = getelementptr inbounds %struct.mtree, %struct.mtree* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mtree*, %struct.mtree** %12, align 8
  %79 = getelementptr inbounds %struct.mtree, %struct.mtree* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  store i64 %81, i64* %10, align 8
  br label %87

82:                                               ; preds = %53
  %83 = load %struct.mtree*, %struct.mtree** %12, align 8
  %84 = getelementptr inbounds %struct.mtree, %struct.mtree* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %82, %74
  %88 = load %struct.mtree*, %struct.mtree** %12, align 8
  %89 = getelementptr inbounds %struct.mtree, %struct.mtree* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mtree*, %struct.mtree** %12, align 8
  %92 = getelementptr inbounds %struct.mtree, %struct.mtree* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @read(i64 %90, i8* %93, i64 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ult i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %87
  %99 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %100 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %99, i32 0, i32 0
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @archive_set_error(i32* %100, i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %103, i32* %5, align 4
  br label %119

104:                                              ; preds = %87
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64*, i64** %8, align 8
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %109, i32* %5, align 4
  br label %119

110:                                              ; preds = %104
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.mtree*, %struct.mtree** %12, align 8
  %113 = getelementptr inbounds %struct.mtree, %struct.mtree* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64*, i64** %8, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %110, %107, %98, %46, %23
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @read(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
