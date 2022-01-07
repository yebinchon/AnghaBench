; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_create_virtual_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_create_virtual_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32, i32 }
%struct.archive_write = type { i32 }
%struct.iso9660 = type { i32 }
%struct.isofile = type { i32 }

@AE_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isoent* (%struct.archive_write*, %struct.iso9660*, i8*)* @isoent_create_virtual_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isoent* @isoent_create_virtual_dir(%struct.archive_write* %0, %struct.iso9660* %1, i8* %2) #0 {
  %4 = alloca %struct.isoent*, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.isofile*, align 8
  %9 = alloca %struct.isoent*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.iso9660* %1, %struct.iso9660** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = call %struct.isofile* @isofile_new(%struct.archive_write* %10, i32* null)
  store %struct.isofile* %11, %struct.isofile** %8, align 8
  %12 = load %struct.isofile*, %struct.isofile** %8, align 8
  %13 = icmp eq %struct.isofile* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.isoent* null, %struct.isoent** %4, align 8
  br label %76

15:                                               ; preds = %3
  %16 = load %struct.isofile*, %struct.isofile** %8, align 8
  %17 = getelementptr inbounds %struct.isofile, %struct.isofile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @archive_entry_set_pathname(i32 %18, i8* %19)
  %21 = load %struct.isofile*, %struct.isofile** %8, align 8
  %22 = getelementptr inbounds %struct.isofile, %struct.isofile* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @archive_entry_unset_mtime(i32 %23)
  %25 = load %struct.isofile*, %struct.isofile** %8, align 8
  %26 = getelementptr inbounds %struct.isofile, %struct.isofile* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @archive_entry_unset_atime(i32 %27)
  %29 = load %struct.isofile*, %struct.isofile** %8, align 8
  %30 = getelementptr inbounds %struct.isofile, %struct.isofile* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @archive_entry_unset_ctime(i32 %31)
  %33 = load %struct.isofile*, %struct.isofile** %8, align 8
  %34 = getelementptr inbounds %struct.isofile, %struct.isofile* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (...) @getuid()
  %37 = call i32 @archive_entry_set_uid(i32 %35, i32 %36)
  %38 = load %struct.isofile*, %struct.isofile** %8, align 8
  %39 = getelementptr inbounds %struct.isofile, %struct.isofile* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (...) @getgid()
  %42 = call i32 @archive_entry_set_gid(i32 %40, i32 %41)
  %43 = load %struct.isofile*, %struct.isofile** %8, align 8
  %44 = getelementptr inbounds %struct.isofile, %struct.isofile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AE_IFDIR, align 4
  %47 = or i32 365, %46
  %48 = call i32 @archive_entry_set_mode(i32 %45, i32 %47)
  %49 = load %struct.isofile*, %struct.isofile** %8, align 8
  %50 = getelementptr inbounds %struct.isofile, %struct.isofile* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @archive_entry_set_nlink(i32 %51, i32 2)
  %53 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %54 = load %struct.isofile*, %struct.isofile** %8, align 8
  %55 = call i64 @isofile_gen_utility_names(%struct.archive_write* %53, %struct.isofile* %54)
  %56 = load i64, i64* @ARCHIVE_WARN, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %15
  %59 = load %struct.isofile*, %struct.isofile** %8, align 8
  %60 = call i32 @isofile_free(%struct.isofile* %59)
  store %struct.isoent* null, %struct.isoent** %4, align 8
  br label %76

61:                                               ; preds = %15
  %62 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %63 = load %struct.isofile*, %struct.isofile** %8, align 8
  %64 = call i32 @isofile_add_entry(%struct.iso9660* %62, %struct.isofile* %63)
  %65 = load %struct.isofile*, %struct.isofile** %8, align 8
  %66 = call %struct.isoent* @isoent_new(%struct.isofile* %65)
  store %struct.isoent* %66, %struct.isoent** %9, align 8
  %67 = load %struct.isoent*, %struct.isoent** %9, align 8
  %68 = icmp eq %struct.isoent* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %struct.isoent* null, %struct.isoent** %4, align 8
  br label %76

70:                                               ; preds = %61
  %71 = load %struct.isoent*, %struct.isoent** %9, align 8
  %72 = getelementptr inbounds %struct.isoent, %struct.isoent* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.isoent*, %struct.isoent** %9, align 8
  %74 = getelementptr inbounds %struct.isoent, %struct.isoent* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.isoent*, %struct.isoent** %9, align 8
  store %struct.isoent* %75, %struct.isoent** %4, align 8
  br label %76

76:                                               ; preds = %70, %69, %58, %14
  %77 = load %struct.isoent*, %struct.isoent** %4, align 8
  ret %struct.isoent* %77
}

declare dso_local %struct.isofile* @isofile_new(%struct.archive_write*, i32*) #1

declare dso_local i32 @archive_entry_set_pathname(i32, i8*) #1

declare dso_local i32 @archive_entry_unset_mtime(i32) #1

declare dso_local i32 @archive_entry_unset_atime(i32) #1

declare dso_local i32 @archive_entry_unset_ctime(i32) #1

declare dso_local i32 @archive_entry_set_uid(i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @archive_entry_set_gid(i32, i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @archive_entry_set_mode(i32, i32) #1

declare dso_local i32 @archive_entry_set_nlink(i32, i32) #1

declare dso_local i64 @isofile_gen_utility_names(%struct.archive_write*, %struct.isofile*) #1

declare dso_local i32 @isofile_free(%struct.isofile*) #1

declare dso_local i32 @isofile_add_entry(%struct.iso9660*, %struct.isofile*) #1

declare dso_local %struct.isoent* @isoent_new(%struct.isofile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
