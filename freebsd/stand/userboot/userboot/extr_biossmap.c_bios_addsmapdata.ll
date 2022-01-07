; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_biossmap.c_bios_addsmapdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_biossmap.c_bios_addsmapdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }
%struct.bios_smap = type { i32, i32, i8* }

@getmem = common dso_local global i32 0, align 4
@SMAP_TYPE_MEMORY = common dso_local global i8* null, align 8
@GB = common dso_local global i32 0, align 4
@MODINFOMD_SMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bios_addsmapdata(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.bios_smap], align 16
  %8 = alloca %struct.bios_smap*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %9 = load i32, i32* @getmem, align 4
  %10 = call i32 @CALLBACK(i32 %9, i32* %3, i32* %4)
  %11 = getelementptr inbounds [3 x %struct.bios_smap], [3 x %struct.bios_smap]* %7, i64 0, i64 0
  store %struct.bios_smap* %11, %struct.bios_smap** %8, align 8
  %12 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %13 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %15 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %14, i32 0, i32 1
  store i32 655360, i32* %15, align 4
  %16 = load i8*, i8** @SMAP_TYPE_MEMORY, align 8
  %17 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %18 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %20 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %19, i32 1
  store %struct.bios_smap* %20, %struct.bios_smap** %8, align 8
  %21 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %22 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %21, i32 0, i32 0
  store i32 1048576, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 1048576
  %25 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %26 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** @SMAP_TYPE_MEMORY, align 8
  %28 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %29 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %31 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %30, i32 1
  store %struct.bios_smap* %31, %struct.bios_smap** %8, align 8
  store i32 2, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %1
  %35 = load i32, i32* @GB, align 4
  %36 = mul nsw i32 4, %35
  %37 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %38 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %41 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** @SMAP_TYPE_MEMORY, align 8
  %43 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %44 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %34, %1
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %53 = load i32, i32* @MODINFOMD_SMAP, align 4
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds [3 x %struct.bios_smap], [3 x %struct.bios_smap]* %7, i64 0, i64 0
  %56 = call i32 @file_addmetadata(%struct.preloaded_file* %52, i32 %53, i32 %54, %struct.bios_smap* %55)
  ret void
}

declare dso_local i32 @CALLBACK(i32, i32*, i32*) #1

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i32, %struct.bios_smap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
