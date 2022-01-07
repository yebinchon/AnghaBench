; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/uboot/extr_ppc64_elf_freebsd.c_ppc64_uboot_elf_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/uboot/extr_ppc64_elf_freebsd.c_ppc64_uboot_elf_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i8* }
%struct.file_metadata = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Kernel args: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"exec returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc64_uboot_elf_exec(%struct.preloaded_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*)*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  %10 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %11 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %12 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %10, i32 %11)
  store %struct.file_metadata* %12, %struct.file_metadata** %4, align 8
  %13 = icmp eq %struct.file_metadata* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EFTYPE, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %18 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to void (i8*)*
  store void (i8*)* %29, void (i8*)** %9, align 8
  br label %36

30:                                               ; preds = %16
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = bitcast i32* %34 to void (i8*)*
  store void (i8*)* %35, void (i8*)** %9, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %38 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @md_load64(i8* %39, i64* %5, i64* %6)
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %36
  %45 = call i32 (...) @dev_cleanup()
  %46 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %47 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load void (i8*)*, void (i8*)** %9, align 8
  %51 = load i64, i64* %5, align 8
  %52 = inttoptr i64 %51 to i8*
  call void %50(i8* %52)
  %53 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %44, %42, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @md_load64(i8*, i64*, i64*) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
