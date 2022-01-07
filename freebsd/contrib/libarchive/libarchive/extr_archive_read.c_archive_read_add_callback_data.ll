; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_add_callback_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_add_callback_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.archive_read_data_node* }
%struct.archive_read_data_node = type { i32, i32, i8* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_read_add_callback_data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid index specified.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"No memory.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_add_callback_data(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.archive*, %struct.archive** %5, align 8
  %12 = bitcast %struct.archive* %11 to %struct.archive_read*
  store %struct.archive_read* %12, %struct.archive_read** %8, align 8
  %13 = load %struct.archive*, %struct.archive** %5, align 8
  %14 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %16 = call i32 @archive_check_magic(%struct.archive* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ugt i32 %17, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @archive_set_error(i32* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %28, i32* %4, align 4
  br label %136

29:                                               ; preds = %3
  %30 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %32, align 8
  %34 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %35 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = zext i32 %38 to i64
  %40 = mul i64 16, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @realloc(%struct.archive_read_data_node* %33, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %29
  %46 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %47 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %46, i32 0, i32 1
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @archive_set_error(i32* %47, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %50, i32* %4, align 4
  br label %136

51:                                               ; preds = %29
  %52 = load i8*, i8** %9, align 8
  %53 = bitcast i8* %52 to %struct.archive_read_data_node*
  %54 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store %struct.archive_read_data_node* %53, %struct.archive_read_data_node** %56, align 8
  %57 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %106, %51
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = icmp ugt i32 %67, 0
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i1 [ false, %62 ], [ %68, %66 ]
  br i1 %70, label %71, label %109

71:                                               ; preds = %69
  %72 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %73 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %75, i64 %78
  %80 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %85, i64 %87
  %89 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %88, i32 0, i32 2
  store i8* %81, i8** %89, align 8
  %90 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %91 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %93, i64 %95
  %97 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 8
  %98 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %99 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %101, i64 %103
  %105 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  br label %106

106:                                              ; preds = %71
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %10, align 4
  br label %62

109:                                              ; preds = %69
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %112 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %114, i64 %116
  %118 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %117, i32 0, i32 2
  store i8* %110, i8** %118, align 8
  %119 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %120 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %122, i64 %124
  %126 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 8
  %127 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %128 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load %struct.archive_read_data_node*, %struct.archive_read_data_node** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %130, i64 %132
  %134 = getelementptr inbounds %struct.archive_read_data_node, %struct.archive_read_data_node* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  %135 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %109, %45, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i8* @realloc(%struct.archive_read_data_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
