; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_sparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { %struct.TYPE_5__, %struct.tree* }
%struct.TYPE_5__ = type { i32 }
%struct.tree = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.archive_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't allocate data\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_disk*, %struct.archive_entry*)* @setup_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sparse(%struct.archive_read_disk* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %10, i32 0, i32 1
  %12 = load %struct.tree*, %struct.tree** %11, align 8
  store %struct.tree* %12, %struct.tree** %6, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = call i32 @archive_entry_sparse_reset(%struct.archive_entry* %13)
  %15 = load %struct.tree*, %struct.tree** %6, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tree*, %struct.tree** %6, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = load %struct.tree*, %struct.tree** %6, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %2
  %26 = load %struct.tree*, %struct.tree** %6, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_4__* %28)
  %30 = load %struct.tree*, %struct.tree** %6, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = load %struct.tree*, %struct.tree** %6, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tree*, %struct.tree** %6, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 16, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_4__* @malloc(i32 %41)
  %43 = load %struct.tree*, %struct.tree** %6, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 2
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.tree*, %struct.tree** %6, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %25
  %50 = load %struct.tree*, %struct.tree** %6, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %53 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %52, i32 0, i32 0
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @archive_set_error(%struct.TYPE_5__* %53, i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %57 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %58 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %60, i32* %3, align 4
  br label %135

61:                                               ; preds = %25
  br label %62

62:                                               ; preds = %61, %2
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.tree*, %struct.tree** %6, align 8
  %66 = getelementptr inbounds %struct.tree, %struct.tree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %71 = call i32 @archive_entry_sparse_next(%struct.archive_entry* %70, i8** %8, i8** %7)
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.tree*, %struct.tree** %6, align 8
  %74 = getelementptr inbounds %struct.tree, %struct.tree* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %72, i8** %79, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.tree*, %struct.tree** %6, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %80, i8** %87, align 8
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %63

91:                                               ; preds = %63
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.tree*, %struct.tree** %6, align 8
  %96 = getelementptr inbounds %struct.tree, %struct.tree* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* null, i8** %101, align 8
  %102 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %103 = call i8* @archive_entry_size(%struct.archive_entry* %102)
  %104 = load %struct.tree*, %struct.tree** %6, align 8
  %105 = getelementptr inbounds %struct.tree, %struct.tree* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i8* %103, i8** %110, align 8
  br label %128

111:                                              ; preds = %91
  %112 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %113 = call i8* @archive_entry_size(%struct.archive_entry* %112)
  %114 = load %struct.tree*, %struct.tree** %6, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i8* %113, i8** %120, align 8
  %121 = load %struct.tree*, %struct.tree** %6, align 8
  %122 = getelementptr inbounds %struct.tree, %struct.tree* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %111, %94
  %129 = load %struct.tree*, %struct.tree** %6, align 8
  %130 = getelementptr inbounds %struct.tree, %struct.tree* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load %struct.tree*, %struct.tree** %6, align 8
  %133 = getelementptr inbounds %struct.tree, %struct.tree* %132, i32 0, i32 3
  store %struct.TYPE_4__* %131, %struct.TYPE_4__** %133, align 8
  %134 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %128, %49
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @archive_entry_sparse_reset(%struct.archive_entry*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @archive_entry_sparse_next(%struct.archive_entry*, i8**, i8**) #1

declare dso_local i8* @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
