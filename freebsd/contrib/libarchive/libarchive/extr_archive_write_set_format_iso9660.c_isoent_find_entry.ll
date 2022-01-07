; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_find_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@_MAX_FNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isoent* (%struct.isoent*, i8*)* @isoent_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isoent* @isoent_find_entry(%struct.isoent* %0, i8* %1) #0 {
  %3 = alloca %struct.isoent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca i32, align 4
  store %struct.isoent* %0, %struct.isoent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.isoent*, %struct.isoent** %3, align 8
  store %struct.isoent* %9, %struct.isoent** %6, align 8
  store %struct.isoent* null, %struct.isoent** %7, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @get_path_component(i8* %11, i32 256, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %52

17:                                               ; preds = %10
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.isoent*, %struct.isoent** %6, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %33 = call %struct.isoent* @isoent_find_child(%struct.isoent* %31, i8* %32)
  store %struct.isoent* %33, %struct.isoent** %7, align 8
  %34 = load %struct.isoent*, %struct.isoent** %7, align 8
  %35 = icmp eq %struct.isoent* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %52

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %52

44:                                               ; preds = %37
  %45 = load %struct.isoent*, %struct.isoent** %7, align 8
  store %struct.isoent* %45, %struct.isoent** %6, align 8
  store %struct.isoent* null, %struct.isoent** %7, align 8
  %46 = load %struct.isoent*, %struct.isoent** %6, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  br label %10

52:                                               ; preds = %50, %43, %36, %16
  %53 = load %struct.isoent*, %struct.isoent** %7, align 8
  ret %struct.isoent* %53
}

declare dso_local i32 @get_path_component(i8*, i32, i8*) #1

declare dso_local %struct.isoent* @isoent_find_child(%struct.isoent*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
