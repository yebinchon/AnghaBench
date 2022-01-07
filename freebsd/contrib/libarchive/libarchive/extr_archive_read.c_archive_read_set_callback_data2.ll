; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_set_callback_data2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_set_callback_data2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.archive_read_data_node* }
%struct.archive_read_data_node = type { i32, i32, i8* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_read_set_callback_data2\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"No memory.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid index specified.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_set_callback_data2(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.archive*, %struct.archive** %5, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_read*
  store %struct.archive_read* %10, %struct.archive_read** %8, align 8
  %11 = load %struct.archive*, %struct.archive** %5, align 8
  %12 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %14 = call i32 @archive_check_magic(%struct.archive* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = call i64 @calloc(i32 1, i32 16)
  %22 = inttoptr i64 %21 to %struct.archive_read_data_node*
  %23 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.archive_read_data_node* %22, %struct.archive_read_data_node** %25, align 8
  %26 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %28, align 8
  %30 = icmp eq %struct.archive_read_data_node* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @archive_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %20
  %38 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %39 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %3
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = icmp ugt i32 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %51 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %50, i32 0, i32 1
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @archive_set_error(i32* %51, i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %54, i32* %4, align 4
  br label %82

55:                                               ; preds = %41
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %60, i64 %62
  %64 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %63, i32 0, i32 2
  store i8* %56, i8** %64, align 8
  %65 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %68, i64 %70
  %72 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %76, i64 %78
  %80 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %55, %49, %31
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
