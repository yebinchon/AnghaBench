; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_push_data_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_push_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.data_ready* }
%struct.data_ready = type { i32, i64, i32*, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Sanity check error: output stream is not continuous\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: premature end of data_ready stack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, i32*, i64, i64)* @push_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_data_ready(%struct.archive_read* %0, %struct.rar5* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.data_ready*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.rar5* %1, %struct.rar5** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.rar5*, %struct.rar5** %8, align 8
  %15 = getelementptr inbounds %struct.rar5, %struct.rar5* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %19, i32* %6, align 4
  br label %98

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.rar5*, %struct.rar5** %8, align 8
  %23 = getelementptr inbounds %struct.rar5, %struct.rar5* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rar5*, %struct.rar5** %8, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %25, %29
  %31 = icmp ne i64 %21, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %34 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %33, i32 0, i32 0
  %35 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %36 = call i32 @archive_set_error(i32* %34, i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %37, i32* %6, align 4
  br label %98

38:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.rar5*, %struct.rar5** %8, align 8
  %42 = getelementptr inbounds %struct.rar5, %struct.rar5* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.data_ready*, %struct.data_ready** %43, align 8
  %45 = call i32 @rar5_countof(%struct.data_ready* %44)
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %39
  %48 = load %struct.rar5*, %struct.rar5** %8, align 8
  %49 = getelementptr inbounds %struct.rar5, %struct.rar5* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.data_ready*, %struct.data_ready** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %51, i64 %53
  store %struct.data_ready* %54, %struct.data_ready** %13, align 8
  %55 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %56 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %47
  %60 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %61 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %64 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %67 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %70 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.rar5*, %struct.rar5** %8, align 8
  %73 = getelementptr inbounds %struct.rar5, %struct.rar5* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.rar5*, %struct.rar5** %8, align 8
  %77 = getelementptr inbounds %struct.rar5, %struct.rar5* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.rar5*, %struct.rar5** %8, align 8
  %80 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %81 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.data_ready*, %struct.data_ready** %13, align 8
  %84 = getelementptr inbounds %struct.data_ready, %struct.data_ready* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @update_crc(%struct.rar5* %79, i32* %82, i64 %85)
  %87 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %39

92:                                               ; preds = %39
  %93 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %94 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %93, i32 0, i32 0
  %95 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %96 = call i32 @archive_set_error(i32* %94, i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %59, %32, %18
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @rar5_countof(%struct.data_ready*) #1

declare dso_local i32 @update_crc(%struct.rar5*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
