; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo32.c_bi_copymodules32.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo32.c_bi_copymodules32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.file_metadata*, i32, i32, i64, i32, i32, %struct.preloaded_file* }
%struct.file_metadata = type { i32, %struct.file_metadata* }

@MODINFOMD_NOCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @bi_copymodules32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bi_copymodules32(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %9, %struct.preloaded_file** %3, align 8
  br label %10

10:                                               ; preds = %74, %1
  %11 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %12 = icmp ne %struct.preloaded_file* %11, null
  br i1 %12, label %13, label %78

13:                                               ; preds = %10
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %16 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @MOD_NAME(i64 %14, i32 %17, i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %22 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MOD_TYPE(i64 %20, i32 %23, i32 %24)
  %26 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %27 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %13
  %31 = load i64, i64* %2, align 8
  %32 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %33 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @MOD_ARGS(i64 %31, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %13
  %38 = load i64, i64* %2, align 8
  %39 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %40 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @MOD_ADDR(i64 %38, i32 %41, i32 %42)
  %44 = load i64, i64* %2, align 8
  %45 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %46 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @MOD_SIZE(i64 %44, i32 %47, i32 %48)
  %50 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %51 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %50, i32 0, i32 0
  %52 = load %struct.file_metadata*, %struct.file_metadata** %51, align 8
  store %struct.file_metadata* %52, %struct.file_metadata** %4, align 8
  br label %53

53:                                               ; preds = %69, %37
  %54 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %55 = icmp ne %struct.file_metadata* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %58 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MODINFOMD_NOCOPY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %2, align 8
  %65 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @MOD_METADATA(i64 %64, %struct.file_metadata* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %71 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %70, i32 0, i32 1
  %72 = load %struct.file_metadata*, %struct.file_metadata** %71, align 8
  store %struct.file_metadata* %72, %struct.file_metadata** %4, align 8
  br label %53

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %76 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %75, i32 0, i32 6
  %77 = load %struct.preloaded_file*, %struct.preloaded_file** %76, align 8
  store %struct.preloaded_file* %77, %struct.preloaded_file** %3, align 8
  br label %10

78:                                               ; preds = %10
  %79 = load i64, i64* %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @MOD_END(i64 %79, i32 %80)
  %82 = load i64, i64* %2, align 8
  ret i64 %82
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
