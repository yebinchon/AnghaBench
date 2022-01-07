; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_data_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_data_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @rar5_read_data_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar5_read_data_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.rar5*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = call %struct.rar5* @get_context(%struct.archive_read* %6)
  store %struct.rar5* %7, %struct.rar5** %4, align 8
  %8 = load %struct.rar5*, %struct.rar5** %4, align 8
  %9 = getelementptr inbounds %struct.rar5, %struct.rar5* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %39, %13
  %15 = load %struct.rar5*, %struct.rar5** %4, align 8
  %16 = getelementptr inbounds %struct.rar5, %struct.rar5* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.rar5*, %struct.rar5** %4, align 8
  %22 = getelementptr inbounds %struct.rar5, %struct.rar5* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %26 = call i32 @rar5_read_data(%struct.archive_read* %25, i32* null, i32* null, i32* null)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.rar5*, %struct.rar5** %4, align 8
  %28 = getelementptr inbounds %struct.rar5, %struct.rar5* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ARCHIVE_EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %20
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %33
  br label %14

40:                                               ; preds = %14
  br label %56

41:                                               ; preds = %1
  %42 = load i64, i64* @ARCHIVE_OK, align 8
  %43 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %44 = load %struct.rar5*, %struct.rar5** %4, align 8
  %45 = getelementptr inbounds %struct.rar5, %struct.rar5* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @consume(%struct.archive_read* %43, i64 %47)
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %51, i32* %2, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.rar5*, %struct.rar5** %4, align 8
  %54 = getelementptr inbounds %struct.rar5, %struct.rar5* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i64, i64* @ARCHIVE_OK, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %50, %37
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @rar5_read_data(%struct.archive_read*, i32*, i32*, i32*) #1

declare dso_local i64 @consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
