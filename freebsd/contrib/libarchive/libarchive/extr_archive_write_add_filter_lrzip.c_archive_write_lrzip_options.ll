; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.write_lrzip = type { i8, i32 }

@.str = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@bzip2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@gzip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@lzo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@none = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@zpaq = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i8*)* @archive_write_lrzip_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_lrzip_options(%struct.archive_write_filter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.write_lrzip*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %10 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.write_lrzip*
  store %struct.write_lrzip* %12, %struct.write_lrzip** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %20, i32* %4, align 4
  br label %110

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @bzip2, align 4
  %27 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %28 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %67

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @gzip, align 4
  %35 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %36 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %66

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @lzo, align 4
  %43 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %44 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %65

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @none, align 4
  %51 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %52 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %64

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @zpaq, align 4
  %59 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %60 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %62, i32* %4, align 4
  br label %110

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66, %25
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %110

70:                                               ; preds = %3
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 49
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 57
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %83, %77, %74
  %96 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %96, i32* %4, align 4
  br label %110

97:                                               ; preds = %89
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  %103 = trunc i32 %102 to i8
  %104 = load %struct.write_lrzip*, %struct.write_lrzip** %8, align 8
  %105 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %104, i32 0, i32 0
  store i8 %103, i8* %105, align 4
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %106, i32* %4, align 4
  br label %110

107:                                              ; preds = %70
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %97, %95, %68, %61, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
