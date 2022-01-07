; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_copy_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_copy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { i64, i64, i8*, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"lseek failed\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't read temporary file(%jd)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Truncated 7-Zip archive\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i64, i64)* @copy_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_out(%struct.archive_write* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct._7zip*
  store %struct._7zip* %16, %struct._7zip** %8, align 8
  %17 = load %struct._7zip*, %struct._7zip** %8, align 8
  %18 = getelementptr inbounds %struct._7zip, %struct._7zip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct._7zip*, %struct._7zip** %8, align 8
  %23 = getelementptr inbounds %struct._7zip, %struct._7zip* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @lseek(i32 %24, i64 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %31 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %30, i32 0, i32 0
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %31, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %21, %3
  br label %36

36:                                               ; preds = %106, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load %struct._7zip*, %struct._7zip** %8, align 8
  %42 = getelementptr inbounds %struct._7zip, %struct._7zip* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct._7zip*, %struct._7zip** %8, align 8
  %47 = getelementptr inbounds %struct._7zip, %struct._7zip* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  br label %51

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct._7zip*, %struct._7zip** %8, align 8
  %53 = getelementptr inbounds %struct._7zip, %struct._7zip* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct._7zip*, %struct._7zip** %8, align 8
  %56 = getelementptr inbounds %struct._7zip, %struct._7zip* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 8, %57
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load %struct._7zip*, %struct._7zip** %8, align 8
  %61 = getelementptr inbounds %struct._7zip, %struct._7zip* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @read(i32 %62, i8* %63, i64 %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %70 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %69, i32 0, i32 0
  %71 = load i32, i32* @errno, align 4
  %72 = load i64, i64* %11, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %70, i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %75, i32* %4, align 4
  br label %109

76:                                               ; preds = %51
  %77 = load i64, i64* %11, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %81 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %80, i32 0, i32 0
  %82 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %81, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %4, align 4
  br label %109

84:                                               ; preds = %76
  %85 = load i64, i64* %11, align 8
  %86 = load %struct._7zip*, %struct._7zip** %8, align 8
  %87 = getelementptr inbounds %struct._7zip, %struct._7zip* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load %struct._7zip*, %struct._7zip** %8, align 8
  %94 = getelementptr inbounds %struct._7zip, %struct._7zip* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %84
  %98 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %99 = call i32 @flush_wbuff(%struct.archive_write* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %109

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %84
  br label %36

107:                                              ; preds = %36
  %108 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %103, %79, %68, %29
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @flush_wbuff(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
