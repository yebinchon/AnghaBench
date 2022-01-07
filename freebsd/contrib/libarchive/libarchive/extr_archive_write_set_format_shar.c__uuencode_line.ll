; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c__uuencode_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c__uuencode_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.shar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Buffer overflow\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.shar*, i8*, i64)* @_uuencode_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_uuencode_line(%struct.archive_write* %0, %struct.shar* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.shar*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i8], align 1
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store %struct.shar* %1, %struct.shar** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.shar*, %struct.shar** %7, align 8
  %14 = getelementptr inbounds %struct.shar, %struct.shar* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 62
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.shar*, %struct.shar** %7, align 8
  %20 = getelementptr inbounds %struct.shar, %struct.shar* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32* @archive_string_ensure(%struct.TYPE_2__* %20, i64 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %26 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %25, i32 0, i32 0
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %5, align 4
  br label %121

30:                                               ; preds = %4
  %31 = load %struct.shar*, %struct.shar** %7, align 8
  %32 = getelementptr inbounds %struct.shar, %struct.shar* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.shar*, %struct.shar** %7, align 8
  %36 = getelementptr inbounds %struct.shar, %struct.shar* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @UUENC(i64 %41)
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  store i8 %43, i8* %44, align 1
  br label %46

46:                                               ; preds = %49, %30
  %47 = load i64, i64* %9, align 8
  %48 = icmp uge i64 %47, 3
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @uuencode_group(i8* %50, i8* %51)
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %53, 3
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %10, align 8
  br label %46

59:                                               ; preds = %46
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = load i64, i64* %9, align 8
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 0, i8* %70, align 1
  br label %76

71:                                               ; preds = %62
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %74, i8* %75, align 1
  br label %76

76:                                               ; preds = %71, %69
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @uuencode_group(i8* %78, i8* %79)
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %76, %59
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  store i8 10, i8* %84, align 1
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.shar*, %struct.shar** %7, align 8
  %88 = getelementptr inbounds %struct.shar, %struct.shar* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %86 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load %struct.shar*, %struct.shar** %7, align 8
  %95 = getelementptr inbounds %struct.shar, %struct.shar* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 62
  %99 = sext i32 %98 to i64
  %100 = icmp sgt i64 %93, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %83
  %102 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %103 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %102, i32 0, i32 0
  %104 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %105 = call i32 @archive_set_error(i32* %103, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %106, i32* %5, align 4
  br label %121

107:                                              ; preds = %83
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.shar*, %struct.shar** %7, align 8
  %110 = getelementptr inbounds %struct.shar, %struct.shar* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %108 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = load %struct.shar*, %struct.shar** %7, align 8
  %118 = getelementptr inbounds %struct.shar, %struct.shar* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %107, %101, %24
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32* @archive_string_ensure(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @UUENC(i64) #1

declare dso_local i32 @uuencode_group(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
