; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_get_num_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_get_num_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid value(empty) for option ``%s''\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid value for option ``%s''\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid value(over %d) for option ``%s''\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid value(under %d) for option ``%s''\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32*, i32, i32, i8*, i8*)* @get_num_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num_opt(%struct.archive_write* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_write*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  store i8* %17, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %14, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 0
  %23 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %7, align 4
  br label %102

27:                                               ; preds = %6
  %28 = load i8*, i8** %14, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %89, %35
  %37 = load i8*, i8** %14, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 48
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 57
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %51, 10
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %52, %55
  %57 = sub nsw i32 %56, 48
  store i32 %57, i32* %15, align 4
  br label %65

58:                                               ; preds = %45, %40
  %59 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %60 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %59, i32 0, i32 0
  %61 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %60, i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %64, i32* %7, align 4
  br label %102

65:                                               ; preds = %50
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %71 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %70, i32 0, i32 0
  %72 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %71, i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %74)
  %76 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %76, i32* %7, align 4
  br label %102

77:                                               ; preds = %65
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %83 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %82, i32 0, i32 0
  %84 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %85, i8* %86)
  %88 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %88, i32* %7, align 4
  br label %102

89:                                               ; preds = %77
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %14, align 8
  br label %36

92:                                               ; preds = %36
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 %96, -1
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %81, %69, %58, %20
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
