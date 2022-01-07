; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_elf32_freebsd.c_elf32_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_elf32_freebsd.c_elf32_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }
%struct.file_metadata = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"exec returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.preloaded_file*)* @elf32_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_exec(%struct.preloaded_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  %13 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %14 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %15 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %13, i32 %14)
  store %struct.file_metadata* %15, %struct.file_metadata** %4, align 8
  %16 = icmp eq %struct.file_metadata* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EFTYPE, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %21 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %5, align 8
  %23 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %24 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bi_load32(i32 %25, i32* %10, i32* %12, i32* %7, i32* %8, i32* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 16777215
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @dev_cleanup()
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @__exec(i8* %39, i32 %40, i32 %41, i32 0, i32 0, i32 0, i32 %42, i32 %43, i32 %44)
  %46 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %31, %29, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bi_load32(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @__exec(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
