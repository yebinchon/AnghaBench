; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_child_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_child_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.program_filter = type { i32, i32, i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Child process exited badly\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Child process exited with signal %d\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Child process exited with status %d\00", align 1
@SIGPIPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, %struct.program_filter*)* @child_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_stop(%struct.archive_read_filter* %0, %struct.program_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca %struct.program_filter*, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store %struct.program_filter* %1, %struct.program_filter** %5, align 8
  %6 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %7 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %12 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 %13)
  %15 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %16 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %19 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %24 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %28 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %31 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %53, %34
  %36 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %37 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %40 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %39, i32 0, i32 4
  %41 = call i32 @waitpid(i64 %38, i32* %40, i32 0)
  %42 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %43 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %46 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EINTR, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ false, %44 ], [ %52, %49 ]
  br i1 %54, label %35, label %55

55:                                               ; preds = %53
  %56 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %57 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %29
  %59 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %60 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %65 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %69 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %67, i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %70, i32* %3, align 4
  br label %117

71:                                               ; preds = %58
  %72 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %73 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @WIFSIGNALED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %79 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %83 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %84 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @WTERMSIG(i32 %85)
  %87 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %81, i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %88, i32* %3, align 4
  br label %117

89:                                               ; preds = %71
  %90 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %91 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @WIFEXITED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %97 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @WEXITSTATUS(i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %117

103:                                              ; preds = %95
  %104 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %105 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %109 = load %struct.program_filter*, %struct.program_filter** %5, align 8
  %110 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @WEXITSTATUS(i32 %111)
  %113 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %107, i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %89
  %116 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %103, %101, %77, %63
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
