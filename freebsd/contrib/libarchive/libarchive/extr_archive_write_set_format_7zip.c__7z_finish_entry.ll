; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64, i32, i64 }
%struct._7zip = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @_7z_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_7z_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct._7zip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._7zip*
  store %struct._7zip* %10, %struct._7zip** %4, align 8
  %11 = load %struct._7zip*, %struct._7zip** %4, align 8
  %12 = getelementptr inbounds %struct._7zip, %struct._7zip* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %48, %17
  %19 = load %struct._7zip*, %struct._7zip** %4, align 8
  %20 = getelementptr inbounds %struct._7zip, %struct._7zip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load %struct._7zip*, %struct._7zip** %4, align 8
  %25 = getelementptr inbounds %struct._7zip, %struct._7zip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %38 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %39 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @_7z_write_data(%struct.archive_write* %37, i32 %40, i64 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %80

48:                                               ; preds = %36
  br label %18

49:                                               ; preds = %18
  %50 = load %struct._7zip*, %struct._7zip** %4, align 8
  %51 = getelementptr inbounds %struct._7zip, %struct._7zip* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct._7zip*, %struct._7zip** %4, align 8
  %55 = getelementptr inbounds %struct._7zip, %struct._7zip* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct._7zip*, %struct._7zip** %4, align 8
  %61 = getelementptr inbounds %struct._7zip, %struct._7zip* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct._7zip*, %struct._7zip** %4, align 8
  %65 = getelementptr inbounds %struct._7zip, %struct._7zip* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct._7zip*, %struct._7zip** %4, align 8
  %71 = getelementptr inbounds %struct._7zip, %struct._7zip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct._7zip*, %struct._7zip** %4, align 8
  %74 = getelementptr inbounds %struct._7zip, %struct._7zip* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct._7zip*, %struct._7zip** %4, align 8
  %78 = getelementptr inbounds %struct._7zip, %struct._7zip* %77, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %49, %45, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @_7z_write_data(%struct.archive_write*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
