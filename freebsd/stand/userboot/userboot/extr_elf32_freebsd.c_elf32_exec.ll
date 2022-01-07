; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_elf32_freebsd.c_elf32_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_elf32_freebsd.c_elf32_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }
%struct.file_metadata = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@copyin = common dso_local global i32 0, align 4
@GUEST_STACK = common dso_local global i64 0, align 8
@setreg = common dso_local global i32 0, align 4
@setgdt = common dso_local global i32 0, align 4
@GUEST_GDT = common dso_local global i32 0, align 4
@exec = common dso_local global i32 0, align 4
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
  %13 = alloca [1024 x i32], align 16
  %14 = alloca i32*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %16 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %17 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %15, i32 %16)
  store %struct.file_metadata* %17, %struct.file_metadata** %4, align 8
  %18 = icmp eq %struct.file_metadata* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EFTYPE, align 4
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %23 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %5, align 8
  %25 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %26 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bi_load32(i32 %27, i32* %10, i32* %12, i32* %7, i32* %8, i32* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %2, align 4
  br label %90

33:                                               ; preds = %21
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 16777215
  store i32 %37, i32* %6, align 4
  %38 = call i32 (...) @dev_cleanup()
  %39 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 4096)
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %42 = bitcast i32* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 4096
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %14, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 -1
  store i32* %47, i32** %14, align 8
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 -1
  store i32* %50, i32** %14, align 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %14, align 8
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %55, i32** %14, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %14, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 -1
  store i32* %59, i32** %14, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 -1
  store i32* %62, i32** %14, align 8
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 -1
  store i32* %65, i32** %14, align 8
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 -1
  store i32* %67, i32** %14, align 8
  store i32 -1091568946, i32* %67, align 4
  %68 = load i32, i32* @copyin, align 4
  %69 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %70 = load i64, i64* @GUEST_STACK, align 8
  %71 = call i32 (i32, ...) @CALLBACK(i32 %68, i32* %69, i64 %70, i64 4096)
  %72 = load i32, i32* @setreg, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %76 = bitcast i32* %75 to i8*
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i64, i64* @GUEST_STACK, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 (i32, ...) @CALLBACK(i32 %72, i32 4, i64 %81)
  %83 = load i32, i32* @setgdt, align 4
  %84 = load i32, i32* @GUEST_GDT, align 4
  %85 = call i32 (i32, ...) @CALLBACK(i32 %83, i32 %84, i32 31)
  %86 = load i32, i32* @exec, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32, ...) @CALLBACK(i32 %86, i32 %87)
  %89 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %33, %31, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bi_load32(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CALLBACK(i32, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
