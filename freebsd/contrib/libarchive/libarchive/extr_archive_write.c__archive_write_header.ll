; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_write = type { i32 (%struct.archive_write*, %struct.archive_entry.0*)*, i64, %struct.TYPE_5__, i64, i64 }
%struct.archive_entry.0 = type opaque
%struct.TYPE_5__ = type { i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"archive_write_header\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Format must be set before you can write to an archive.\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i8* null, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't add archive to itself\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive_entry*)* @_archive_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_header(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_write*
  store %struct.archive_write* %10, %struct.archive_write** %6, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 2
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @archive_check_magic(%struct.TYPE_5__* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 2
  %20 = call i32 @archive_clear_error(%struct.TYPE_5__* %19)
  %21 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 0
  %23 = load i32 (%struct.archive_write*, %struct.archive_entry.0*)*, i32 (%struct.archive_write*, %struct.archive_entry.0*)** %22, align 8
  %24 = icmp eq i32 (%struct.archive_write*, %struct.archive_entry.0*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 2
  %28 = call i32 @archive_set_error(%struct.TYPE_5__* %27, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %32 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %3, align 4
  br label %127

35:                                               ; preds = %2
  %36 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %37 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %36, i32 0, i32 2
  %38 = call i32 @archive_write_finish_entry(%struct.TYPE_5__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ARCHIVE_FATAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @ARCHIVE_WARN, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %127

59:                                               ; preds = %53, %49
  %60 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %66 = call i64 @archive_entry_dev_is_set(%struct.archive_entry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %70 = call i64 @archive_entry_ino_is_set(%struct.archive_entry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %74 = call i64 @archive_entry_dev(%struct.archive_entry* %73)
  %75 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %76 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %81 = call i64 @archive_entry_ino64(%struct.archive_entry* %80)
  %82 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %83 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %88 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %87, i32 0, i32 2
  %89 = call i32 @archive_set_error(%struct.TYPE_5__* %88, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %90, i32* %3, align 4
  br label %127

91:                                               ; preds = %79, %72, %68, %64, %59
  %92 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %93 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %92, i32 0, i32 0
  %94 = load i32 (%struct.archive_write*, %struct.archive_entry.0*)*, i32 (%struct.archive_write*, %struct.archive_entry.0*)** %93, align 8
  %95 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %96 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %97 = bitcast %struct.archive_entry* %96 to %struct.archive_entry.0*
  %98 = call i32 %94(%struct.archive_write* %95, %struct.archive_entry.0* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ARCHIVE_FAILED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %103, i32* %3, align 4
  br label %127

104:                                              ; preds = %91
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ARCHIVE_FATAL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %112 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %114, i32* %3, align 4
  br label %127

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %123 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %124 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %108, %102, %86, %57, %42, %25
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @archive_check_magic(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_5__*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @archive_write_finish_entry(%struct.TYPE_5__*) #1

declare dso_local i64 @archive_entry_dev_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ino_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ino64(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
