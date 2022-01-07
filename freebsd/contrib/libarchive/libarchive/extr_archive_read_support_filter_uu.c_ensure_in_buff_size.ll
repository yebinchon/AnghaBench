; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_ensure_in_buff_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_ensure_in_buff_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uudecode = type { i64, i8*, i32 }

@IN_BUFF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't allocate data for uudecode\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, %struct.uudecode*, i64)* @ensure_in_buff_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_in_buff_size(%struct.archive_read_filter* %0, %struct.uudecode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca %struct.uudecode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %5, align 8
  store %struct.uudecode* %1, %struct.uudecode** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %12 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %3
  %16 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %17 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %34, %15
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @IN_BUFF_SIZE, align 4
  %22 = mul nsw i32 %21, 32
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  %27 = shl i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @IN_BUFF_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %19, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %47 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @archive_set_error(i32* %49, i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %38
  %54 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %55 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %61 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %64 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memmove(i8* %59, i8* %62, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %69 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %74 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.uudecode*, %struct.uudecode** %6, align 8
  %77 = getelementptr inbounds %struct.uudecode, %struct.uudecode* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %67, %3
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %43
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
