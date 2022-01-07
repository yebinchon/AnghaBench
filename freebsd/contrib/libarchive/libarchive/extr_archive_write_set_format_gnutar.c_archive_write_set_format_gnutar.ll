; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_write_set_format_gnutar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_write_set_format_gnutar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, %struct.gnutar* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.gnutar = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate gnutar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"gnutar\00", align 1
@archive_write_gnutar_options = common dso_local global i32 0, align 4
@archive_write_gnutar_header = common dso_local global i32 0, align 4
@archive_write_gnutar_data = common dso_local global i32 0, align 4
@archive_write_gnutar_close = common dso_local global i32 0, align 4
@archive_write_gnutar_free = common dso_local global i32 0, align 4
@archive_write_gnutar_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_GNUTAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"GNU tar\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_gnutar(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.gnutar*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = call i64 @calloc(i32 1, i32 4)
  %9 = inttoptr i64 %8 to %struct.gnutar*
  store %struct.gnutar* %9, %struct.gnutar** %5, align 8
  %10 = load %struct.gnutar*, %struct.gnutar** %5, align 8
  %11 = icmp eq %struct.gnutar* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @archive_set_error(%struct.TYPE_2__* %14, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.gnutar*, %struct.gnutar** %5, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 8
  store %struct.gnutar* %19, %struct.gnutar** %21, align 8
  %22 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @archive_write_gnutar_options, align 4
  %25 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %26 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @archive_write_gnutar_header, align 4
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @archive_write_gnutar_data, align 4
  %31 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %32 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @archive_write_gnutar_close, align 4
  %34 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %35 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @archive_write_gnutar_free, align 4
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @archive_write_gnutar_finish_entry, align 4
  %40 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ARCHIVE_FORMAT_TAR_GNUTAR, align 4
  %43 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %44 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %47 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %18, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
