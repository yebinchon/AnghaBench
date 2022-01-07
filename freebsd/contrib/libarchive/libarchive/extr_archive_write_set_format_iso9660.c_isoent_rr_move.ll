; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_rr_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_rr_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.isoent*, %struct.path_table* }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.isoent* }
%struct.TYPE_4__ = type { %struct.isoent* }
%struct.path_table = type { i64, %struct.isoent* }

@MAX_DEPTH = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rr_moved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @isoent_rr_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_rr_move(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca %struct.path_table*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.isoent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isoent*, align 8
  %12 = alloca %struct.isoent*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 0
  %15 = load %struct.iso9660*, %struct.iso9660** %14, align 8
  store %struct.iso9660* %15, %struct.iso9660** %4, align 8
  %16 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.path_table*, %struct.path_table** %18, align 8
  %20 = load i32, i32* @MAX_DEPTH, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.path_table, %struct.path_table* %19, i64 %22
  store %struct.path_table* %23, %struct.path_table** %5, align 8
  %24 = load %struct.path_table*, %struct.path_table** %5, align 8
  %25 = getelementptr inbounds %struct.path_table, %struct.path_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %1
  %31 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %32 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.isoent*, %struct.isoent** %33, align 8
  store %struct.isoent* %34, %struct.isoent** %6, align 8
  %35 = load %struct.isoent*, %struct.isoent** %6, align 8
  %36 = call %struct.isoent* @isoent_find_child(%struct.isoent* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.isoent* %36, %struct.isoent** %7, align 8
  %37 = load %struct.isoent*, %struct.isoent** %7, align 8
  %38 = icmp ne %struct.isoent* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load %struct.isoent*, %struct.isoent** %7, align 8
  %41 = load %struct.isoent*, %struct.isoent** %6, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.isoent*, %struct.isoent** %43, align 8
  %45 = icmp ne %struct.isoent* %40, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.isoent*, %struct.isoent** %6, align 8
  %48 = load %struct.isoent*, %struct.isoent** %7, align 8
  %49 = call i32 @isoent_remove_child(%struct.isoent* %47, %struct.isoent* %48)
  %50 = load %struct.isoent*, %struct.isoent** %6, align 8
  %51 = load %struct.isoent*, %struct.isoent** %7, align 8
  %52 = call i32 @isoent_add_child_head(%struct.isoent* %50, %struct.isoent* %51)
  br label %53

53:                                               ; preds = %46, %39, %30
  %54 = load %struct.path_table*, %struct.path_table** %5, align 8
  %55 = getelementptr inbounds %struct.path_table, %struct.path_table* %54, i32 0, i32 1
  %56 = load %struct.isoent*, %struct.isoent** %55, align 8
  store %struct.isoent* %56, %struct.isoent** %8, align 8
  br label %57

57:                                               ; preds = %102, %53
  %58 = load %struct.isoent*, %struct.isoent** %8, align 8
  %59 = icmp ne %struct.isoent* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  %61 = load %struct.path_table*, %struct.path_table** %5, align 8
  %62 = call %struct.isoent* @path_table_last_entry(%struct.path_table* %61)
  store %struct.isoent* %62, %struct.isoent** %9, align 8
  br label %63

63:                                               ; preds = %98, %60
  %64 = load %struct.isoent*, %struct.isoent** %8, align 8
  %65 = icmp ne %struct.isoent* %64, null
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load %struct.isoent*, %struct.isoent** %8, align 8
  %68 = getelementptr inbounds %struct.isoent, %struct.isoent* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %98

72:                                               ; preds = %66
  %73 = load %struct.isoent*, %struct.isoent** %8, align 8
  %74 = getelementptr inbounds %struct.isoent, %struct.isoent* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.isoent*, %struct.isoent** %75, align 8
  store %struct.isoent* %76, %struct.isoent** %11, align 8
  br label %77

77:                                               ; preds = %93, %72
  %78 = load %struct.isoent*, %struct.isoent** %11, align 8
  %79 = icmp ne %struct.isoent* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %82 = load %struct.isoent*, %struct.isoent** %11, align 8
  %83 = call i32 @isoent_rr_move_dir(%struct.archive_write* %81, %struct.isoent** %7, %struct.isoent* %82, %struct.isoent** %12)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %2, align 4
  br label %108

88:                                               ; preds = %80
  %89 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %90 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %89, i32 0, i32 0
  %91 = load %struct.isoent*, %struct.isoent** %12, align 8
  %92 = call i32 @isoent_collect_dirs(%struct.TYPE_6__* %90, %struct.isoent* %91, i32 2)
  br label %93

93:                                               ; preds = %88
  %94 = load %struct.isoent*, %struct.isoent** %11, align 8
  %95 = getelementptr inbounds %struct.isoent, %struct.isoent* %94, i32 0, i32 1
  %96 = load %struct.isoent*, %struct.isoent** %95, align 8
  store %struct.isoent* %96, %struct.isoent** %11, align 8
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.isoent*, %struct.isoent** %8, align 8
  %100 = getelementptr inbounds %struct.isoent, %struct.isoent* %99, i32 0, i32 0
  %101 = load %struct.isoent*, %struct.isoent** %100, align 8
  store %struct.isoent* %101, %struct.isoent** %8, align 8
  br label %63

102:                                              ; preds = %63
  %103 = load %struct.isoent*, %struct.isoent** %9, align 8
  %104 = getelementptr inbounds %struct.isoent, %struct.isoent* %103, i32 0, i32 0
  %105 = load %struct.isoent*, %struct.isoent** %104, align 8
  store %struct.isoent* %105, %struct.isoent** %8, align 8
  br label %57

106:                                              ; preds = %57
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %86, %28
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.isoent* @isoent_find_child(%struct.isoent*, i8*) #1

declare dso_local i32 @isoent_remove_child(%struct.isoent*, %struct.isoent*) #1

declare dso_local i32 @isoent_add_child_head(%struct.isoent*, %struct.isoent*) #1

declare dso_local %struct.isoent* @path_table_last_entry(%struct.path_table*) #1

declare dso_local i32 @isoent_rr_move_dir(%struct.archive_write*, %struct.isoent**, %struct.isoent*, %struct.isoent**) #1

declare dso_local i32 @isoent_collect_dirs(%struct.TYPE_6__*, %struct.isoent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
