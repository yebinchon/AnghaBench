; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_filter_count.c_write_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_filter_count.c_write_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bzip2 unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_test() #0 {
  %1 = alloca [4096 x i8], align 16
  %2 = alloca %struct.archive*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %4, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = load i32, i32* @ARCHIVE_OK, align 4
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = call i32 @archive_write_set_format_ustar(%struct.archive* %7)
  %9 = call i32 @assertEqualIntA(%struct.archive* %5, i32 %6, i32 %8)
  %10 = load %struct.archive*, %struct.archive** %2, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %12, i32 10)
  %14 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %2, align 8
  %16 = call i32 @archive_write_add_filter_bzip2(%struct.archive* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @ARCHIVE_WARN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = call i32 (...) @canBzip2()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %0
  %24 = load i32, i32* @ARCHIVE_WARN, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = call i32 @skipping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %2, align 8
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %34 = call i32 @archive_write_open_memory(%struct.archive* %32, i8* %33, i32 4096, i32 0)
  %35 = call i32 @assertEqualIntA(%struct.archive* %30, i32 %31, i32 %34)
  %36 = load %struct.archive*, %struct.archive** %2, align 8
  %37 = call i32 @archive_filter_count(%struct.archive* %36)
  %38 = call i32 @assertEqualInt(i32 2, i32 %37)
  %39 = load %struct.archive*, %struct.archive** %2, align 8
  %40 = call i32 @archive_write_free(%struct.archive* %39)
  br label %41

41:                                               ; preds = %29, %27
  ret void
}

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_add_filter_bzip2(%struct.archive*) #1

declare dso_local i32 @canBzip2(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i32, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_filter_count(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
