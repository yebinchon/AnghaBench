; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_disk = type { %struct.TYPE_6__, i32, i64, %struct.archive_write_disk*, %struct.archive_write_disk*, %struct.archive_write_disk*, %struct.archive_write_disk*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_write_disk_free\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_write_disk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_disk_free(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write_disk*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = icmp eq %struct.archive* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @archive_check_magic(%struct.archive* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = bitcast %struct.archive* %17 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %18, %struct.archive_write_disk** %4, align 8
  %19 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %20 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %19, i32 0, i32 0
  %21 = call i32 @_archive_write_disk_close(%struct.TYPE_6__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %23 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %22, i32 0, i32 0
  %24 = call i32 @archive_write_disk_set_group_lookup(%struct.TYPE_6__* %23, i32* null, i32* null, i32* null)
  %25 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %26 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %25, i32 0, i32 0
  %27 = call i32 @archive_write_disk_set_user_lookup(%struct.TYPE_6__* %26, i32* null, i32* null, i32* null)
  %28 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @archive_entry_free(i32 %30)
  %32 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %33 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %32, i32 0, i32 8
  %34 = call i32 @archive_string_free(i32* %33)
  %35 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %36 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = call i32 @archive_string_free(i32* %37)
  %39 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %40 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %39, i32 0, i32 7
  %41 = call i32 @archive_string_free(i32* %40)
  %42 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %43 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %46 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %45, i32 0, i32 0
  %47 = call i32 @__archive_clean(%struct.TYPE_6__* %46)
  %48 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %49 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %48, i32 0, i32 6
  %50 = load %struct.archive_write_disk*, %struct.archive_write_disk** %49, align 8
  %51 = call i32 @free(%struct.archive_write_disk* %50)
  %52 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %53 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %52, i32 0, i32 5
  %54 = load %struct.archive_write_disk*, %struct.archive_write_disk** %53, align 8
  %55 = call i32 @free(%struct.archive_write_disk* %54)
  %56 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %57 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %56, i32 0, i32 4
  %58 = load %struct.archive_write_disk*, %struct.archive_write_disk** %57, align 8
  %59 = call i32 @free(%struct.archive_write_disk* %58)
  %60 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %61 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %60, i32 0, i32 3
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %61, align 8
  %63 = call i32 @free(%struct.archive_write_disk* %62)
  %64 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %65 = call i32 @free(%struct.archive_write_disk* %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %10, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @_archive_write_disk_close(%struct.TYPE_6__*) #1

declare dso_local i32 @archive_write_disk_set_group_lookup(%struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @archive_write_disk_set_user_lookup(%struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @__archive_clean(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.archive_write_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
