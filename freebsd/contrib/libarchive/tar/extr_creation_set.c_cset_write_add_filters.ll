; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_cset_write_add_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_cset_write_add_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creation_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cset_write_add_filters(%struct.creation_set* %0, %struct.archive* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.creation_set*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.creation_set* %0, %struct.creation_set** %5, align 8
  store %struct.archive* %1, %struct.archive** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %67, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.creation_set*, %struct.creation_set** %5, align 8
  %14 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load %struct.creation_set*, %struct.creation_set** %5, align 8
  %19 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.archive*, %struct.archive** %6, align 8
  %29 = load %struct.creation_set*, %struct.creation_set** %5, align 8
  %30 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @archive_write_add_filter_program(%struct.archive* %28, i8* %36)
  store i32 %37, i32* %10, align 4
  br label %49

38:                                               ; preds = %17
  %39 = load %struct.archive*, %struct.archive** %6, align 8
  %40 = load %struct.creation_set*, %struct.creation_set** %5, align 8
  %41 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @archive_write_add_filter_by_name(%struct.archive* %39, i8* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %38, %27
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ARCHIVE_WARN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.creation_set*, %struct.creation_set** %5, align 8
  %55 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %53
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @archive_write_add_filter_program(%struct.archive*, i8*) #1

declare dso_local i32 @archive_write_add_filter_by_name(%struct.archive*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
