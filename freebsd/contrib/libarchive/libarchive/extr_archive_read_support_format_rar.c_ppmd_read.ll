; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_ppmd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_ppmd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rar = type { i64, %struct.rar_br }
%struct.rar_br = type { i32 }
%struct.TYPE_4__ = type { %struct.archive_read* }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated RAR file data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ppmd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppmd_read(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.rar*, align 8
  %6 = alloca %struct.rar_br*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  store %struct.archive_read* %11, %struct.archive_read** %4, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rar*
  store %struct.rar* %17, %struct.rar** %5, align 8
  %18 = load %struct.rar*, %struct.rar** %5, align 8
  %19 = getelementptr inbounds %struct.rar, %struct.rar* %18, i32 0, i32 1
  store %struct.rar_br* %19, %struct.rar_br** %6, align 8
  %20 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %21 = load %struct.rar_br*, %struct.rar_br** %6, align 8
  %22 = call i32 @rar_br_read_ahead(%struct.archive_read* %20, %struct.rar_br* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %26 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %25, i32 0, i32 0
  %27 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rar*, %struct.rar** %5, align 8
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  store i32 0, i32* %2, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.rar_br*, %struct.rar_br** %6, align 8
  %33 = call i32 @rar_br_bits(%struct.rar_br* %32, i32 8)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.rar_br*, %struct.rar_br** %6, align 8
  %35 = call i32 @rar_br_consume(%struct.rar_br* %34, i32 8)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @rar_br_read_ahead(%struct.archive_read*, %struct.rar_br*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @rar_br_bits(%struct.rar_br*, i32) #1

declare dso_local i32 @rar_br_consume(%struct.rar_br*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
