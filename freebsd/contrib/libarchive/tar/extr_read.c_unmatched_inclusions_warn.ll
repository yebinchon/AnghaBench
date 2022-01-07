; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_unmatched_inclusions_warn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_unmatched_inclusions_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @unmatched_inclusions_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmatched_inclusions_warn(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = icmp eq %struct.archive* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.archive*, %struct.archive** %4, align 8
  %14 = call i32 @archive_match_path_unmatched_inclusions_next(%struct.archive* %13, i8** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  br label %12

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ARCHIVE_FATAL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @lafe_errc(i32 1, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.archive*, %struct.archive** %4, align 8
  %30 = call i32 @archive_match_path_unmatched_inclusions(%struct.archive* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @archive_match_path_unmatched_inclusions_next(%struct.archive*, i8**) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i8*, i8*) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
