; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_check_magic.c___archive_check_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_check_magic.c___archive_check_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"PROGRAMMER ERROR: Function \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c" invoked with invalid archive handle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"PROGRAMMER ERROR: Function '%s' invoked on '%s' archive object, which is not supported.\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i8* null, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [100 x i8] c"INTERNAL ERROR: Function '%s' invoked with archive structure in state '%s', should be in state '%s'\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_check_magic(%struct.archive* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = getelementptr inbounds %struct.archive, %struct.archive* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @archive_handle_type_name(i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @errmsg(i8* %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @diediedie()
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = getelementptr inbounds %struct.archive, %struct.archive* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.archive*, %struct.archive** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 (%struct.archive*, i32, i8*, i8*, i8*, ...) @archive_set_error(%struct.archive* %32, i32 -1, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.archive*, %struct.archive** %6, align 8
  %39 = getelementptr inbounds %struct.archive, %struct.archive* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %25
  %42 = load %struct.archive*, %struct.archive** %6, align 8
  %43 = getelementptr inbounds %struct.archive, %struct.archive* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %41
  %49 = load %struct.archive*, %struct.archive** %6, align 8
  %50 = getelementptr inbounds %struct.archive, %struct.archive* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.archive*, %struct.archive** %6, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %60 = load %struct.archive*, %struct.archive** %6, align 8
  %61 = getelementptr inbounds %struct.archive, %struct.archive* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @write_all_states(i8* %59, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @write_all_states(i8* %66, i32 %67)
  %69 = call i32 (%struct.archive*, i32, i8*, i8*, i8*, ...) @archive_set_error(%struct.archive* %57, i32 -1, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %56, %48
  %71 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.archive*, %struct.archive** %6, align 8
  %74 = getelementptr inbounds %struct.archive, %struct.archive* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %41
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %70, %31
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @archive_handle_type_name(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @diediedie(...) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @write_all_states(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
