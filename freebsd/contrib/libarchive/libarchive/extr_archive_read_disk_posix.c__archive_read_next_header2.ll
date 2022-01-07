; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_next_header2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_next_header2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_read_disk = type { %struct.TYPE_2__, %struct.tree* }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { i32, i32, i32, i32, i32, i32 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"archive_read_next_header2\00", align 1
@ARCHIVE_STATE_EOF = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive_entry*)* @_archive_read_next_header2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_next_header2(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_read_disk*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %10, %struct.archive_read_disk** %6, align 8
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @archive_check_magic(%struct.archive* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %18 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %17, i32 0, i32 1
  %19 = load %struct.tree*, %struct.tree** %18, align 8
  store %struct.tree* %19, %struct.tree** %7, align 8
  %20 = load %struct.tree*, %struct.tree** %7, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.tree*, %struct.tree** %7, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tree*, %struct.tree** %7, align 8
  %29 = load %struct.tree*, %struct.tree** %7, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 5
  %31 = call i32 @close_and_restore_time(i32 %27, %struct.tree* %28, i32* %30)
  %32 = load %struct.tree*, %struct.tree** %7, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %2
  %35 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %36 = call i32 @archive_entry_clear(%struct.archive_entry* %35)
  br label %37

37:                                               ; preds = %56, %34
  %38 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %39 = load %struct.tree*, %struct.tree** %7, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %41 = call i32 @next_entry(%struct.archive_read_disk* %38, %struct.tree* %39, %struct.archive_entry* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.tree*, %struct.tree** %7, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.tree*, %struct.tree** %7, align 8
  %48 = getelementptr inbounds %struct.tree, %struct.tree* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load %struct.tree*, %struct.tree** %7, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 129
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %58 = call i32 @archive_entry_clear(%struct.archive_entry* %57)
  br label %37

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.tree*, %struct.tree** %7, align 8
  %62 = call i32 @tree_enter_initial_dir(%struct.tree* %61)
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %124 [
    i32 132, label %64
    i32 130, label %69
    i32 128, label %69
    i32 129, label %118
    i32 131, label %119
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @ARCHIVE_STATE_EOF, align 4
  %66 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %67 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %124

69:                                               ; preds = %60, %60
  %70 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %71 = load %struct.tree*, %struct.tree** %7, align 8
  %72 = call i32 @tree_current_path(%struct.tree* %71)
  %73 = call i32 @archive_entry_copy_sourcepath(%struct.archive_entry* %70, i32 %72)
  %74 = load %struct.tree*, %struct.tree** %7, align 8
  %75 = getelementptr inbounds %struct.tree, %struct.tree* %74, i32 0, i32 4
  store i32 0, i32* %75, align 4
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i32 @archive_entry_filetype(%struct.archive_entry* %76)
  %78 = load i32, i32* @AE_IFREG, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %69
  %81 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %82 = call i32 @archive_entry_nlink(%struct.archive_entry* %81)
  %83 = load %struct.tree*, %struct.tree** %7, align 8
  %84 = getelementptr inbounds %struct.tree, %struct.tree* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %86 = call i32 @archive_entry_size(%struct.archive_entry* %85)
  %87 = load %struct.tree*, %struct.tree** %7, align 8
  %88 = getelementptr inbounds %struct.tree, %struct.tree* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.tree*, %struct.tree** %7, align 8
  %90 = getelementptr inbounds %struct.tree, %struct.tree* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load %struct.tree*, %struct.tree** %7, align 8
  %96 = getelementptr inbounds %struct.tree, %struct.tree* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.tree*, %struct.tree** %7, align 8
  %98 = getelementptr inbounds %struct.tree, %struct.tree* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %80
  %102 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %103 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %104 = call i32 @setup_sparse(%struct.archive_read_disk* %102, %struct.archive_entry* %103)
  %105 = icmp ne i32 %104, 130
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 131, i32* %3, align 4
  br label %129

107:                                              ; preds = %101, %80
  br label %113

108:                                              ; preds = %69
  %109 = load %struct.tree*, %struct.tree** %7, align 8
  %110 = getelementptr inbounds %struct.tree, %struct.tree* %109, i32 0, i32 2
  store i32 0, i32* %110, align 4
  %111 = load %struct.tree*, %struct.tree** %7, align 8
  %112 = getelementptr inbounds %struct.tree, %struct.tree* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %115 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %116 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %124

118:                                              ; preds = %60
  br label %124

119:                                              ; preds = %60
  %120 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %121 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %122 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %60, %119, %118, %113, %64
  %125 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %126 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %125, i32 0, i32 0
  %127 = call i32 @__archive_reset_read_data(%struct.TYPE_2__* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %106
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @close_and_restore_time(i32, %struct.tree*, i32*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @next_entry(%struct.archive_read_disk*, %struct.tree*, %struct.archive_entry*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @tree_enter_initial_dir(%struct.tree*) #1

declare dso_local i32 @archive_entry_copy_sourcepath(%struct.archive_entry*, i32) #1

declare dso_local i32 @tree_current_path(%struct.tree*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @setup_sparse(%struct.archive_read_disk*, %struct.archive_entry*) #1

declare dso_local i32 @__archive_reset_read_data(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
