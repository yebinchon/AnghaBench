; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mydata = type { i64, i32*, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mydata*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mydata*
  store %struct.mydata* %8, %struct.mydata** %6, align 8
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = load %struct.mydata*, %struct.mydata** %6, align 8
  %11 = getelementptr inbounds %struct.mydata, %struct.mydata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.mydata*, %struct.mydata** %6, align 8
  %16 = getelementptr inbounds %struct.mydata, %struct.mydata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load i32, i32* @O_BINARY, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @open(i32 %17, i32 %20)
  %22 = load %struct.mydata*, %struct.mydata** %6, align 8
  %23 = getelementptr inbounds %struct.mydata, %struct.mydata* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mydata*, %struct.mydata** %6, align 8
  %25 = getelementptr inbounds %struct.mydata, %struct.mydata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %14
  %29 = load i32, i32* @BLOCK_SIZE, align 4
  %30 = call i64 @calloc(i32 1, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.mydata*, %struct.mydata** %6, align 8
  %34 = getelementptr inbounds %struct.mydata, %struct.mydata* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %14
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
