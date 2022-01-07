; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { %struct.TYPE_3__, i32, i32*, i32 (i32*)*, i32*, i32 (i32*)*, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"archive_read_free\00", align 1
@ARCHIVE_STATE_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_read_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_free(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %7, %struct.archive_read_disk** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = icmp eq %struct.archive* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %11, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %16 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @archive_check_magic(%struct.archive* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %20 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARCHIVE_STATE_CLOSED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %26, i32 0, i32 0
  %28 = call i32 @_archive_read_close(%struct.TYPE_3__* %27)
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %12
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %33 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @tree_free(i32 %34)
  %36 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %37 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %36, i32 0, i32 5
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = icmp ne i32 (i32*)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %42 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %47 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %46, i32 0, i32 5
  %48 = load i32 (i32*)*, i32 (i32*)** %47, align 8
  %49 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %50 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 %48(i32* %51)
  br label %53

53:                                               ; preds = %45, %40, %31
  %54 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %55 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %54, i32 0, i32 3
  %56 = load i32 (i32*)*, i32 (i32*)** %55, align 8
  %57 = icmp ne i32 (i32*)* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %60 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %65 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %64, i32 0, i32 3
  %66 = load i32 (i32*)*, i32 (i32*)** %65, align 8
  %67 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %68 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 %66(i32* %69)
  br label %71

71:                                               ; preds = %63, %58, %53
  %72 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %73 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = call i32 @archive_string_free(i32* %74)
  %76 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %77 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @archive_entry_free(i32 %78)
  %80 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %81 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %84 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %83, i32 0, i32 0
  %85 = call i32 @__archive_clean(%struct.TYPE_3__* %84)
  %86 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %87 = call i32 @free(%struct.archive_read_disk* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %71, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @_archive_read_close(%struct.TYPE_3__*) #1

declare dso_local i32 @tree_free(i32) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @__archive_clean(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.archive_read_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
