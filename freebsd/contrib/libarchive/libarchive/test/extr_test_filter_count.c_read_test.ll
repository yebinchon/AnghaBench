; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_filter_count.c_read_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_filter_count.c_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bzip2 unsupported\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %5, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = call i32 @archive_read_support_filter_bzip2(%struct.archive* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @ARCHIVE_WARN, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (...) @canBzip2()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @ARCHIVE_WARN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %11
  %19 = call i32 @skipping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %39

20:                                               ; preds = %14
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = call i32 @archive_read_support_format_all(%struct.archive* %23)
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @extract_reference_file(i8* %26)
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @archive_read_open_filename(%struct.archive* %30, i8* %31, i32 2)
  %33 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = call i32 @archive_filter_count(%struct.archive* %34)
  %36 = call i32 @assertEqualInt(i32 2, i32 %35)
  %37 = load %struct.archive*, %struct.archive** %3, align 8
  %38 = call i32 @archive_read_free(%struct.archive* %37)
  br label %39

39:                                               ; preds = %20, %18
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_bzip2(%struct.archive*) #1

declare dso_local i32 @canBzip2(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_filter_count(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
