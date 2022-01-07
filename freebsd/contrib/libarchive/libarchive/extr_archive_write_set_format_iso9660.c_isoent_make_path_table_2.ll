; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_make_path_table_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_make_path_table_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { i32, %struct.path_table* }
%struct.path_table = type { i32, %struct.isoent**, %struct.isoent* }
%struct.isoent = type { i32, %struct.isoent* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@_compare_path_table = common dso_local global i32 0, align 4
@_compare_path_table_joliet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*, i32, i32*)* @isoent_make_path_table_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_make_path_table_2(%struct.archive_write* %0, %struct.vdd* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.vdd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.isoent*, align 8
  %11 = alloca %struct.isoent**, align 8
  %12 = alloca %struct.path_table*, align 8
  %13 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store %struct.vdd* %1, %struct.vdd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.vdd*, %struct.vdd** %7, align 8
  %15 = getelementptr inbounds %struct.vdd, %struct.vdd* %14, i32 0, i32 1
  %16 = load %struct.path_table*, %struct.path_table** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.path_table, %struct.path_table* %16, i64 %18
  store %struct.path_table* %19, %struct.path_table** %12, align 8
  %20 = load %struct.path_table*, %struct.path_table** %12, align 8
  %21 = getelementptr inbounds %struct.path_table, %struct.path_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.path_table*, %struct.path_table** %12, align 8
  %26 = getelementptr inbounds %struct.path_table, %struct.path_table* %25, i32 0, i32 1
  store %struct.isoent** null, %struct.isoent*** %26, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %105

28:                                               ; preds = %4
  %29 = load %struct.path_table*, %struct.path_table** %12, align 8
  %30 = getelementptr inbounds %struct.path_table, %struct.path_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.isoent** @malloc(i32 %34)
  store %struct.isoent** %35, %struct.isoent*** %11, align 8
  %36 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %37 = icmp eq %struct.isoent** %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %40 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %39, i32 0, i32 0
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @archive_set_error(i32* %40, i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %5, align 4
  br label %105

44:                                               ; preds = %28
  %45 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %46 = load %struct.path_table*, %struct.path_table** %12, align 8
  %47 = getelementptr inbounds %struct.path_table, %struct.path_table* %46, i32 0, i32 1
  store %struct.isoent** %45, %struct.isoent*** %47, align 8
  %48 = load %struct.path_table*, %struct.path_table** %12, align 8
  %49 = getelementptr inbounds %struct.path_table, %struct.path_table* %48, i32 0, i32 2
  %50 = load %struct.isoent*, %struct.isoent** %49, align 8
  store %struct.isoent* %50, %struct.isoent** %10, align 8
  br label %51

51:                                               ; preds = %58, %44
  %52 = load %struct.isoent*, %struct.isoent** %10, align 8
  %53 = icmp ne %struct.isoent* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.isoent*, %struct.isoent** %10, align 8
  %56 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %57 = getelementptr inbounds %struct.isoent*, %struct.isoent** %56, i32 1
  store %struct.isoent** %57, %struct.isoent*** %11, align 8
  store %struct.isoent* %55, %struct.isoent** %56, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load %struct.isoent*, %struct.isoent** %10, align 8
  %60 = getelementptr inbounds %struct.isoent, %struct.isoent* %59, i32 0, i32 1
  %61 = load %struct.isoent*, %struct.isoent** %60, align 8
  store %struct.isoent* %61, %struct.isoent** %10, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.path_table*, %struct.path_table** %12, align 8
  %64 = getelementptr inbounds %struct.path_table, %struct.path_table* %63, i32 0, i32 1
  %65 = load %struct.isoent**, %struct.isoent*** %64, align 8
  store %struct.isoent** %65, %struct.isoent*** %11, align 8
  %66 = load %struct.vdd*, %struct.vdd** %7, align 8
  %67 = getelementptr inbounds %struct.vdd, %struct.vdd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %83 [
    i32 128, label %69
    i32 130, label %69
    i32 129, label %76
  ]

69:                                               ; preds = %62, %62
  %70 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %71 = load %struct.path_table*, %struct.path_table** %12, align 8
  %72 = getelementptr inbounds %struct.path_table, %struct.path_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @_compare_path_table, align 4
  %75 = call i32 @qsort(%struct.isoent** %70, i32 %73, i32 8, i32 %74)
  br label %83

76:                                               ; preds = %62
  %77 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %78 = load %struct.path_table*, %struct.path_table** %12, align 8
  %79 = getelementptr inbounds %struct.path_table, %struct.path_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @_compare_path_table_joliet, align 4
  %82 = call i32 @qsort(%struct.isoent** %77, i32 %80, i32 8, i32 %81)
  br label %83

83:                                               ; preds = %62, %76, %69
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.path_table*, %struct.path_table** %12, align 8
  %87 = getelementptr inbounds %struct.path_table, %struct.path_table* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.isoent*, %struct.isoent** %94, i64 %96
  %98 = load %struct.isoent*, %struct.isoent** %97, align 8
  %99 = getelementptr inbounds %struct.isoent, %struct.isoent* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %84

103:                                              ; preds = %84
  %104 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %38, %24
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.isoent** @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @qsort(%struct.isoent**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
