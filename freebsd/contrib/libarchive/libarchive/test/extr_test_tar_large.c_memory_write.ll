; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_large.c_memory_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_large.c_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.memdata = type { %struct.memblock*, %struct.memblock* }
%struct.memblock = type { i64, %struct.memblock*, i64, i32 }

@filedata = common dso_local global i64 0, align 8
@filedatasize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i8*, i64)* @memory_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_write(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.memdata*, align 8
  %10 = alloca %struct.memblock*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.memdata*
  store %struct.memdata* %12, %struct.memdata** %9, align 8
  %13 = load %struct.archive*, %struct.archive** %5, align 8
  %14 = load i64, i64* @filedata, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ule i8* %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* @filedata, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @filedatasize, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = icmp ult i8* %19, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.memdata*, %struct.memdata** %9, align 8
  %29 = getelementptr inbounds %struct.memdata, %struct.memdata* %28, i32 0, i32 0
  %30 = load %struct.memblock*, %struct.memblock** %29, align 8
  %31 = getelementptr inbounds %struct.memblock, %struct.memblock* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %27
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %76

36:                                               ; preds = %18, %4
  %37 = call i64 @malloc(i64 32)
  %38 = inttoptr i64 %37 to %struct.memblock*
  store %struct.memblock* %38, %struct.memblock** %10, align 8
  %39 = load %struct.memblock*, %struct.memblock** %10, align 8
  %40 = call i32 @memset(%struct.memblock* %39, i32 0, i32 32)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.memblock*, %struct.memblock** %10, align 8
  %43 = getelementptr inbounds %struct.memblock, %struct.memblock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @malloc(i64 %44)
  %46 = load %struct.memblock*, %struct.memblock** %10, align 8
  %47 = getelementptr inbounds %struct.memblock, %struct.memblock* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.memblock*, %struct.memblock** %10, align 8
  %49 = getelementptr inbounds %struct.memblock, %struct.memblock* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @memcpy(i64 %50, i8* %51, i64 %52)
  %54 = load %struct.memdata*, %struct.memdata** %9, align 8
  %55 = getelementptr inbounds %struct.memdata, %struct.memdata* %54, i32 0, i32 0
  %56 = load %struct.memblock*, %struct.memblock** %55, align 8
  %57 = icmp eq %struct.memblock* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %36
  %59 = load %struct.memblock*, %struct.memblock** %10, align 8
  %60 = load %struct.memdata*, %struct.memdata** %9, align 8
  %61 = getelementptr inbounds %struct.memdata, %struct.memdata* %60, i32 0, i32 0
  store %struct.memblock* %59, %struct.memblock** %61, align 8
  %62 = load %struct.memdata*, %struct.memdata** %9, align 8
  %63 = getelementptr inbounds %struct.memdata, %struct.memdata* %62, i32 0, i32 1
  store %struct.memblock* %59, %struct.memblock** %63, align 8
  br label %73

64:                                               ; preds = %36
  %65 = load %struct.memblock*, %struct.memblock** %10, align 8
  %66 = load %struct.memdata*, %struct.memdata** %9, align 8
  %67 = getelementptr inbounds %struct.memdata, %struct.memdata* %66, i32 0, i32 0
  %68 = load %struct.memblock*, %struct.memblock** %67, align 8
  %69 = getelementptr inbounds %struct.memblock, %struct.memblock* %68, i32 0, i32 1
  store %struct.memblock* %65, %struct.memblock** %69, align 8
  %70 = load %struct.memblock*, %struct.memblock** %10, align 8
  %71 = load %struct.memdata*, %struct.memdata** %9, align 8
  %72 = getelementptr inbounds %struct.memdata, %struct.memdata* %71, i32 0, i32 0
  store %struct.memblock* %70, %struct.memblock** %72, align 8
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.memblock*, %struct.memblock** %10, align 8
  %75 = getelementptr inbounds %struct.memblock, %struct.memblock* %74, i32 0, i32 1
  store %struct.memblock* null, %struct.memblock** %75, align 8
  br label %76

76:                                               ; preds = %73, %26
  %77 = load i64, i64* %8, align 8
  ret i64 %77
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.memblock*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
