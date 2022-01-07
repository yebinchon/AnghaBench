; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i32* }
%struct.tag_entry = type { i64, i64, i8*, %struct.tag_entry* }

@tag_files = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tag_data = common dso_local global i32 0, align 4
@MANDOCERR_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@MANDOCERR_FDOPEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %s %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tag_write() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.tag_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %91

9:                                                ; preds = %0
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  %14 = call i32 @ohash_qlookup(i32* @tag_data, i32* %13)
  %15 = call i32* @ohash_find(i32* @tag_data, i32 %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @MANDOCERR_TAG, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  %20 = call i32 @mandoc_msg(i32 %18, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  br label %21

21:                                               ; preds = %17, %12, %9
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %23 = call i32* @fdopen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %1, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @MANDOCERR_FDOPEN, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32* @strerror(i32 %27)
  %29 = call i32 @mandoc_msg(i32 %26, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %28)
  br label %30

30:                                               ; preds = %25, %21
  store i32 1, i32* %5, align 4
  %31 = call %struct.tag_entry* @ohash_first(i32* @tag_data, i32* %4)
  store %struct.tag_entry* %31, %struct.tag_entry** %2, align 8
  br label %32

32:                                               ; preds = %66, %30
  %33 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %34 = icmp ne %struct.tag_entry* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = load i32*, i32** %1, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %40 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  store i64 0, i64* %3, align 8
  br label %44

44:                                               ; preds = %62, %43
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %47 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32*, i32** %1, align 8
  %52 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %53 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 1), align 8
  %56 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %57 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %56, i32 0, i32 3
  %58 = load %struct.tag_entry*, %struct.tag_entry** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %58, i64 %59
  %61 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55, %struct.tag_entry* byval(%struct.tag_entry) align 8 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %50
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %44

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %38, %35
  %67 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %68 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %67, i32 0, i32 3
  %69 = load %struct.tag_entry*, %struct.tag_entry** %68, align 8
  %70 = call i32 @free(%struct.tag_entry* %69)
  %71 = load %struct.tag_entry*, %struct.tag_entry** %2, align 8
  %72 = call i32 @free(%struct.tag_entry* %71)
  %73 = call %struct.tag_entry* @ohash_next(i32* @tag_data, i32* %4)
  store %struct.tag_entry* %73, %struct.tag_entry** %2, align 8
  br label %32

74:                                               ; preds = %32
  %75 = call i32 @ohash_delete(i32* @tag_data)
  %76 = load i32*, i32** %1, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @fclose(i32* %79)
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %83 = call i32 @close(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 2), align 8
  %89 = call i32 @unlink(i8* %88)
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 2), align 8
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %8, %87, %84
  ret void
}

declare dso_local i32* @ohash_find(i32*, i32) #1

declare dso_local i32 @ohash_qlookup(i32*, i32*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @strerror(i32) #1

declare dso_local %struct.tag_entry* @ohash_first(i32*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, %struct.tag_entry* byval(%struct.tag_entry) align 8) #1

declare dso_local i32 @free(%struct.tag_entry*) #1

declare dso_local %struct.tag_entry* @ohash_next(i32*, i32*) #1

declare dso_local i32 @ohash_delete(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
