; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isofile = type { i32, i32*, i32, i32, i32, i32, i32* }
%struct.archive_write = type { i32 }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isofile* (%struct.archive_write*, %struct.archive_entry*)* @isofile_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isofile* @isofile_new(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.isofile*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.isofile*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %7 = call %struct.isofile* @calloc(i32 1, i32 40)
  store %struct.isofile* %7, %struct.isofile** %6, align 8
  %8 = load %struct.isofile*, %struct.isofile** %6, align 8
  %9 = icmp eq %struct.isofile* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.isofile* null, %struct.isofile** %3, align 8
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %13 = icmp ne %struct.archive_entry* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i32* @archive_entry_clone(%struct.archive_entry* %15)
  %17 = load %struct.isofile*, %struct.isofile** %6, align 8
  %18 = getelementptr inbounds %struct.isofile, %struct.isofile* %17, i32 0, i32 6
  store i32* %16, i32** %18, align 8
  br label %25

19:                                               ; preds = %11
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = call i32* @archive_entry_new2(i32* %21)
  %23 = load %struct.isofile*, %struct.isofile** %6, align 8
  %24 = getelementptr inbounds %struct.isofile, %struct.isofile* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.isofile*, %struct.isofile** %6, align 8
  %27 = getelementptr inbounds %struct.isofile, %struct.isofile* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.isofile*, %struct.isofile** %6, align 8
  %32 = call i32 @free(%struct.isofile* %31)
  store %struct.isofile* null, %struct.isofile** %3, align 8
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.isofile*, %struct.isofile** %6, align 8
  %35 = getelementptr inbounds %struct.isofile, %struct.isofile* %34, i32 0, i32 5
  %36 = call i32 @archive_string_init(i32* %35)
  %37 = load %struct.isofile*, %struct.isofile** %6, align 8
  %38 = getelementptr inbounds %struct.isofile, %struct.isofile* %37, i32 0, i32 4
  %39 = call i32 @archive_string_init(i32* %38)
  %40 = load %struct.isofile*, %struct.isofile** %6, align 8
  %41 = getelementptr inbounds %struct.isofile, %struct.isofile* %40, i32 0, i32 3
  %42 = call i32 @archive_string_init(i32* %41)
  %43 = load %struct.isofile*, %struct.isofile** %6, align 8
  %44 = getelementptr inbounds %struct.isofile, %struct.isofile* %43, i32 0, i32 2
  %45 = call i32 @archive_string_init(i32* %44)
  %46 = load %struct.isofile*, %struct.isofile** %6, align 8
  %47 = getelementptr inbounds %struct.isofile, %struct.isofile* %46, i32 0, i32 0
  %48 = load %struct.isofile*, %struct.isofile** %6, align 8
  %49 = getelementptr inbounds %struct.isofile, %struct.isofile* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.isofile*, %struct.isofile** %6, align 8
  store %struct.isofile* %50, %struct.isofile** %3, align 8
  br label %51

51:                                               ; preds = %33, %30, %10
  %52 = load %struct.isofile*, %struct.isofile** %3, align 8
  ret %struct.isofile* %52
}

declare dso_local %struct.isofile* @calloc(i32, i32) #1

declare dso_local i32* @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_new2(i32*) #1

declare dso_local i32 @free(%struct.isofile*) #1

declare dso_local i32 @archive_string_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
