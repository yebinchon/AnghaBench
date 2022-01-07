; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_alloc_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_alloc_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32*, i32*, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*, i32)* @isoent_alloc_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_alloc_path_table(%struct.archive_write* %0, %struct.vdd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.vdd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.vdd* %1, %struct.vdd** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.vdd*, %struct.vdd** %6, align 8
  %11 = getelementptr inbounds %struct.vdd, %struct.vdd* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.vdd*, %struct.vdd** %6, align 8
  %13 = getelementptr inbounds %struct.vdd, %struct.vdd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 32, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.TYPE_2__* @malloc(i32 %17)
  %19 = load %struct.vdd*, %struct.vdd** %6, align 8
  %20 = getelementptr inbounds %struct.vdd, %struct.vdd* %19, i32 0, i32 1
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  %21 = load %struct.vdd*, %struct.vdd** %6, align 8
  %22 = getelementptr inbounds %struct.vdd, %struct.vdd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp eq %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 0
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @archive_set_error(i32* %27, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %30, i32* %4, align 4
  br label %79

31:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.vdd*, %struct.vdd** %6, align 8
  %35 = getelementptr inbounds %struct.vdd, %struct.vdd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = load %struct.vdd*, %struct.vdd** %6, align 8
  %40 = getelementptr inbounds %struct.vdd, %struct.vdd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.vdd*, %struct.vdd** %6, align 8
  %47 = getelementptr inbounds %struct.vdd, %struct.vdd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.vdd*, %struct.vdd** %6, align 8
  %54 = getelementptr inbounds %struct.vdd, %struct.vdd* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32** %52, i32*** %59, align 8
  %60 = load %struct.vdd*, %struct.vdd** %6, align 8
  %61 = getelementptr inbounds %struct.vdd, %struct.vdd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.vdd*, %struct.vdd** %6, align 8
  %68 = getelementptr inbounds %struct.vdd, %struct.vdd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %38
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_2__* @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
