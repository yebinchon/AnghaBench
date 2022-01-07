; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_extract_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_extract_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive*)* @extract_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_data(%struct.archive* %0, %struct.archive* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive* %1, %struct.archive** %5, align 8
  br label %10

10:                                               ; preds = %46, %2
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = call i32 @archive_read_data_block(%struct.archive* %11, i8** %8, i64* %7, i32* %9)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ARCHIVE_EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.archive*, %struct.archive** %4, align 8
  %24 = call i32 @archive_errno(%struct.archive* %23)
  %25 = load %struct.archive*, %struct.archive** %4, align 8
  %26 = call i32 @archive_error_string(%struct.archive* %25)
  %27 = call i32 @lafe_warnc(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %18
  %30 = load %struct.archive*, %struct.archive** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @archive_write_data_block(%struct.archive* %30, i8* %31, i64 %32, i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.archive*, %struct.archive** %5, align 8
  %41 = call i32 @archive_errno(%struct.archive* %40)
  %42 = load %struct.archive*, %struct.archive** %5, align 8
  %43 = call i32 @archive_error_string(%struct.archive* %42)
  %44 = call i32 @lafe_warnc(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %29
  br label %10

47:                                               ; preds = %39, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @archive_write_data_block(%struct.archive*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
