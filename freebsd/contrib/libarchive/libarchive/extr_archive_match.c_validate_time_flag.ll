; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_validate_time_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_validate_time_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid time flag\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No time flag\00", align 1
@ARCHIVE_MATCH_NEWER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid comparison flag\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"No comparison flag\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i32, i8*)* @validate_time_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_time_flag(%struct.archive* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.archive*, %struct.archive** %5, align 8
  %9 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %15 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 65280
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @archive_set_error(%struct.archive* %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %29 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.archive*, %struct.archive** %5, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @archive_set_error(%struct.archive* %34, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %37, i32* %4, align 4
  br label %70

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %41 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %45, 255
  %47 = and i32 %39, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.archive*, %struct.archive** %5, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @archive_set_error(%struct.archive* %50, i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %57 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.archive*, %struct.archive** %5, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @archive_set_error(%struct.archive* %64, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %54
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %63, %49, %33, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
