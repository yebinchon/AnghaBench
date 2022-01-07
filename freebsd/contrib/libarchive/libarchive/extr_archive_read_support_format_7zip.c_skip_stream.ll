; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_skip_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_skip_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct._7zip = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncated 7-Zip file body\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64)* @skip_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_stream(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct._7zip*
  store %struct._7zip* %15, %struct._7zip** %6, align 8
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct._7zip*, %struct._7zip** %6, align 8
  %18 = getelementptr inbounds %struct._7zip, %struct._7zip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct._7zip*, %struct._7zip** %6, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct._7zip*, %struct._7zip** %6, align 8
  %29 = getelementptr inbounds %struct._7zip, %struct._7zip* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %22
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %3, align 8
  br label %73

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %70, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @read_stream(%struct.archive_read* %43, i8** %7, i64 %44, i32 0)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %3, align 8
  br label %73

50:                                               ; preds = %42
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  %56 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %57 = call i32 @archive_set_error(i32* %55, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %58, i64* %3, align 8
  br label %73

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load %struct._7zip*, %struct._7zip** %6, align 8
  %64 = getelementptr inbounds %struct._7zip, %struct._7zip* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %69 = call i32 @read_consume(%struct.archive_read* %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %39

71:                                               ; preds = %39
  %72 = load i64, i64* %5, align 8
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %71, %53, %48, %21
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i64 @read_stream(%struct.archive_read*, i8**, i64, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @read_consume(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
