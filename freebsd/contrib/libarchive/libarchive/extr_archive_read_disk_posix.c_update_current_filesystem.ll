; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_update_current_filesystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_update_current_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { i32, %struct.tree* }
%struct.tree = type { i32, i32, i64, %struct.filesystem*, %struct.filesystem* }
%struct.filesystem = type { i64, i32*, i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't allocate tar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_disk*, i64)* @update_current_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_current_filesystem(%struct.archive_read_disk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %12 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %11, i32 0, i32 1
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  store %struct.tree* %13, %struct.tree** %6, align 8
  %14 = load %struct.tree*, %struct.tree** %6, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 3
  %16 = load %struct.filesystem*, %struct.filesystem** %15, align 8
  %17 = icmp ne %struct.filesystem* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.tree*, %struct.tree** %6, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 3
  %21 = load %struct.filesystem*, %struct.filesystem** %20, align 8
  %22 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %131

28:                                               ; preds = %18, %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.tree*, %struct.tree** %6, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.tree*, %struct.tree** %6, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 4
  %38 = load %struct.filesystem*, %struct.filesystem** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %38, i64 %40
  %42 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.tree*, %struct.tree** %6, align 8
  %49 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tree*, %struct.tree** %6, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 4
  %52 = load %struct.filesystem*, %struct.filesystem** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %52, i64 %54
  %56 = load %struct.tree*, %struct.tree** %6, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 3
  store %struct.filesystem* %55, %struct.filesystem** %57, align 8
  %58 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.tree*, %struct.tree** %6, align 8
  %65 = getelementptr inbounds %struct.tree, %struct.tree* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %68 = load %struct.tree*, %struct.tree** %6, align 8
  %69 = getelementptr inbounds %struct.tree, %struct.tree* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.tree*, %struct.tree** %6, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %63
  %77 = load %struct.tree*, %struct.tree** %6, align 8
  %78 = getelementptr inbounds %struct.tree, %struct.tree* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %9, align 8
  %82 = load %struct.tree*, %struct.tree** %6, align 8
  %83 = getelementptr inbounds %struct.tree, %struct.tree* %82, i32 0, i32 4
  %84 = load %struct.filesystem*, %struct.filesystem** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 %85, 24
  %87 = call i8* @realloc(%struct.filesystem* %84, i64 %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %76
  %91 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %92 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %91, i32 0, i32 0
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @archive_set_error(i32* %92, i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %95, i32* %3, align 4
  br label %131

96:                                               ; preds = %76
  %97 = load i8*, i8** %10, align 8
  %98 = bitcast i8* %97 to %struct.filesystem*
  %99 = load %struct.tree*, %struct.tree** %6, align 8
  %100 = getelementptr inbounds %struct.tree, %struct.tree* %99, i32 0, i32 4
  store %struct.filesystem* %98, %struct.filesystem** %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.tree*, %struct.tree** %6, align 8
  %103 = getelementptr inbounds %struct.tree, %struct.tree* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %63
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.tree*, %struct.tree** %6, align 8
  %107 = getelementptr inbounds %struct.tree, %struct.tree* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.tree*, %struct.tree** %6, align 8
  %109 = getelementptr inbounds %struct.tree, %struct.tree* %108, i32 0, i32 4
  %110 = load %struct.filesystem*, %struct.filesystem** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %110, i64 %112
  %114 = load %struct.tree*, %struct.tree** %6, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 3
  store %struct.filesystem* %113, %struct.filesystem** %115, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load %struct.tree*, %struct.tree** %6, align 8
  %118 = getelementptr inbounds %struct.tree, %struct.tree* %117, i32 0, i32 3
  %119 = load %struct.filesystem*, %struct.filesystem** %118, align 8
  %120 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %119, i32 0, i32 0
  store i64 %116, i64* %120, align 8
  %121 = load %struct.tree*, %struct.tree** %6, align 8
  %122 = getelementptr inbounds %struct.tree, %struct.tree* %121, i32 0, i32 3
  %123 = load %struct.filesystem*, %struct.filesystem** %122, align 8
  %124 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  %125 = load %struct.tree*, %struct.tree** %6, align 8
  %126 = getelementptr inbounds %struct.tree, %struct.tree* %125, i32 0, i32 3
  %127 = load %struct.filesystem*, %struct.filesystem** %126, align 8
  %128 = getelementptr inbounds %struct.filesystem, %struct.filesystem* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %130 = call i32 @setup_current_filesystem(%struct.archive_read_disk* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %104, %90, %46, %26
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @realloc(%struct.filesystem*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @setup_current_filesystem(%struct.archive_read_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
