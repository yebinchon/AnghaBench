; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_br_preparation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_br_preparation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rar_br = type { i64, i32*, i32 }
%struct.rar = type { i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated RAR file data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar_br*)* @rar_br_preparation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_br_preparation(%struct.archive_read* %0, %struct.rar_br* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.rar_br*, align 8
  %6 = alloca %struct.rar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.rar_br* %1, %struct.rar_br** %5, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rar*
  store %struct.rar* %12, %struct.rar** %6, align 8
  %13 = load %struct.rar*, %struct.rar** %6, align 8
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %20 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %19, i32 0, i32 2
  %21 = call i32* @rar_read_ahead(%struct.archive_read* %18, i32 1, i32* %20)
  %22 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %23 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %25 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %32 = call i32 @archive_set_error(i32* %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %17
  %35 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %36 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %41 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %42 = call i32 @rar_br_fillup(%struct.archive_read* %40, %struct.rar_br* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @rar_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @rar_br_fillup(%struct.archive_read*, %struct.rar_br*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
