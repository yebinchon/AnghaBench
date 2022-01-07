; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_copymodules.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_copymodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.file_metadata*, i32, i32, i64, i32, i32, %struct.preloaded_file* }
%struct.file_metadata = type { i32, %struct.file_metadata* }

@MODINFOMD_NOCOPY = common dso_local global i32 0, align 4
@relocation_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @bi_copymodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bi_copymodules(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %10, %struct.preloaded_file** %3, align 8
  br label %11

11:                                               ; preds = %77, %1
  %12 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %13 = icmp ne %struct.preloaded_file* %12, null
  br i1 %13, label %14, label %81

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %17 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MOD_NAME(i64 %15, i32 %18, i32 %19)
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %23 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @MOD_TYPE(i64 %21, i32 %24, i32 %25)
  %27 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %28 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %34 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @MOD_ARGS(i64 %32, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %14
  %39 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %40 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @MOD_ADDR(i64 %42, i32 %43, i32 %44)
  %46 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %47 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @MOD_SIZE(i64 %49, i32 %50, i32 %51)
  %53 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %54 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %53, i32 0, i32 0
  %55 = load %struct.file_metadata*, %struct.file_metadata** %54, align 8
  store %struct.file_metadata* %55, %struct.file_metadata** %4, align 8
  br label %56

56:                                               ; preds = %72, %38
  %57 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %58 = icmp ne %struct.file_metadata* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %61 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MODINFOMD_NOCOPY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %2, align 8
  %68 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @MOD_METADATA(i64 %67, %struct.file_metadata* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %74 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %73, i32 0, i32 1
  %75 = load %struct.file_metadata*, %struct.file_metadata** %74, align 8
  store %struct.file_metadata* %75, %struct.file_metadata** %4, align 8
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %79 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %78, i32 0, i32 6
  %80 = load %struct.preloaded_file*, %struct.preloaded_file** %79, align 8
  store %struct.preloaded_file* %80, %struct.preloaded_file** %3, align 8
  br label %11

81:                                               ; preds = %11
  %82 = load i64, i64* %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @MOD_END(i64 %82, i32 %83)
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i32*) #1

declare dso_local i32 @MOD_NAME(i64, i32, i32) #1

declare dso_local i32 @MOD_TYPE(i64, i32, i32) #1

declare dso_local i32 @MOD_ARGS(i64, i64, i32) #1

declare dso_local i32 @MOD_ADDR(i64, i32, i32) #1

declare dso_local i32 @MOD_SIZE(i64, i32, i32) #1

declare dso_local i32 @MOD_METADATA(i64, %struct.file_metadata*, i32) #1

declare dso_local i32 @MOD_END(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
