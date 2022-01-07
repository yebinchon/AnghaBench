; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__isoent_file_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__isoent_file_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.isoent* }
%struct.isoent = type { %struct.isofile*, i64, %struct.TYPE_4__, %struct.isoent** }
%struct.isofile = type { i32, %struct.TYPE_6__, i32, i32*, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@AE_IFLNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*, %struct.isoent*, i32*)* @_isoent_file_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_isoent_file_location(%struct.iso9660* %0, %struct.isoent* %1, i32* %2) #0 {
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.isoent**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isoent*, align 8
  %10 = alloca %struct.isofile*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.isoent*, %struct.isoent** %5, align 8
  %12 = getelementptr inbounds %struct.isoent, %struct.isoent* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %87

17:                                               ; preds = %3
  %18 = load %struct.isoent*, %struct.isoent** %5, align 8
  %19 = getelementptr inbounds %struct.isoent, %struct.isoent* %18, i32 0, i32 3
  %20 = load %struct.isoent**, %struct.isoent*** %19, align 8
  store %struct.isoent** %20, %struct.isoent*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %84, %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.isoent*, %struct.isoent** %5, align 8
  %24 = getelementptr inbounds %struct.isoent, %struct.isoent* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %21
  %29 = load %struct.isoent**, %struct.isoent*** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.isoent*, %struct.isoent** %29, i64 %31
  %33 = load %struct.isoent*, %struct.isoent** %32, align 8
  store %struct.isoent* %33, %struct.isoent** %9, align 8
  %34 = load %struct.isoent*, %struct.isoent** %9, align 8
  %35 = getelementptr inbounds %struct.isoent, %struct.isoent* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %84

39:                                               ; preds = %28
  %40 = load %struct.isoent*, %struct.isoent** %9, align 8
  %41 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %42 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.isoent*, %struct.isoent** %43, align 8
  %45 = icmp eq %struct.isoent* %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %84

47:                                               ; preds = %39
  %48 = load %struct.isoent*, %struct.isoent** %9, align 8
  %49 = getelementptr inbounds %struct.isoent, %struct.isoent* %48, i32 0, i32 0
  %50 = load %struct.isofile*, %struct.isofile** %49, align 8
  store %struct.isofile* %50, %struct.isofile** %10, align 8
  %51 = load %struct.isofile*, %struct.isofile** %10, align 8
  %52 = getelementptr inbounds %struct.isofile, %struct.isofile* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load %struct.isofile*, %struct.isofile** %10, align 8
  %57 = getelementptr inbounds %struct.isofile, %struct.isofile* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %47
  br label %84

61:                                               ; preds = %55
  %62 = load %struct.isofile*, %struct.isofile** %10, align 8
  %63 = getelementptr inbounds %struct.isofile, %struct.isofile* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @archive_entry_filetype(i32 %64)
  %66 = load i64, i64* @AE_IFLNK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load %struct.isofile*, %struct.isofile** %10, align 8
  %70 = getelementptr inbounds %struct.isofile, %struct.isofile* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68, %61
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.isofile*, %struct.isofile** %10, align 8
  %79 = getelementptr inbounds %struct.isofile, %struct.isofile* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  br label %84

81:                                               ; preds = %68
  %82 = load %struct.isofile*, %struct.isofile** %10, align 8
  %83 = getelementptr inbounds %struct.isofile, %struct.isofile* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %74, %60, %46, %38
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %21

87:                                               ; preds = %16, %21
  ret void
}

declare dso_local i64 @archive_entry_filetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
