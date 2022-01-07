; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_filter_lz4_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_filter_lz4_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_data = type { i32, i8, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"High compression not included in this build\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"stream-checksum\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"block-checksum\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"block-dependence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i8*)* @archive_filter_lz4_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_filter_lz4_options(%struct.archive_write_filter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.private_data*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.private_data*
  store %struct.private_data* %13, %struct.private_data** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 48
  store i32 %25, i32* %9, align 4
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %28, 9
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %27, %20, %17
  %37 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %37, i32* %4, align 4
  br label %125

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %43 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %46 = call i32 @archive_set_error(i32 %44, i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %47, i32* %4, align 4
  br label %125

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.private_data*, %struct.private_data** %8, align 8
  %51 = getelementptr inbounds %struct.private_data, %struct.private_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %125

53:                                               ; preds = %3
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = load %struct.private_data*, %struct.private_data** %8, align 8
  %62 = getelementptr inbounds %struct.private_data, %struct.private_data* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %63, i32* %4, align 4
  br label %125

64:                                               ; preds = %53
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = load %struct.private_data*, %struct.private_data** %8, align 8
  %73 = getelementptr inbounds %struct.private_data, %struct.private_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %125

75:                                               ; preds = %64
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 52
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 55
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94, %88, %82, %79
  %101 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %101, i32* %4, align 4
  br label %125

102:                                              ; preds = %94
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = trunc i32 %107 to i8
  %109 = load %struct.private_data*, %struct.private_data** %8, align 8
  %110 = getelementptr inbounds %struct.private_data, %struct.private_data* %109, i32 0, i32 1
  store i8 %108, i8* %110, align 4
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %111, i32* %4, align 4
  br label %125

112:                                              ; preds = %75
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i8*, i8** %7, align 8
  %118 = icmp eq i8* %117, null
  %119 = zext i1 %118 to i32
  %120 = load %struct.private_data*, %struct.private_data** %8, align 8
  %121 = getelementptr inbounds %struct.private_data, %struct.private_data* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %122, i32* %4, align 4
  br label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %116, %102, %100, %68, %57, %48, %41, %36
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
