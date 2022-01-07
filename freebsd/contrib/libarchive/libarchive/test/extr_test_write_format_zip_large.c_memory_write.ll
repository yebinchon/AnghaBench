; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.fileblocks = type { i64, %struct.fileblock*, %struct.fileblock* }
%struct.fileblock = type { i32, %struct.fileblock*, i64, i32 }

@nulldata = common dso_local global i64 0, align 8
@nullsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i8*, i64)* @memory_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_write(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fileblocks*, align 8
  %10 = alloca %struct.fileblock*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fileblocks*
  store %struct.fileblocks* %12, %struct.fileblocks** %9, align 8
  %13 = load %struct.archive*, %struct.archive** %5, align 8
  %14 = load i64, i64* @nulldata, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ule i8* %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* @nulldata, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @nullsize, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = icmp ult i8* %19, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %29 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %28, i32 0, i32 1
  %30 = load %struct.fileblock*, %struct.fileblock** %29, align 8
  %31 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %27
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %77

36:                                               ; preds = %18, %4
  %37 = call i64 @malloc(i64 32)
  %38 = inttoptr i64 %37 to %struct.fileblock*
  store %struct.fileblock* %38, %struct.fileblock** %10, align 8
  %39 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %40 = call i32 @memset(%struct.fileblock* %39, i32 0, i32 32)
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %44 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @malloc(i64 %45)
  %47 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %48 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %50 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memcpy(i64 %51, i8* %52, i64 %53)
  %55 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %56 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %55, i32 0, i32 1
  %57 = load %struct.fileblock*, %struct.fileblock** %56, align 8
  %58 = icmp eq %struct.fileblock* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %36
  %60 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %61 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %62 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %61, i32 0, i32 1
  store %struct.fileblock* %60, %struct.fileblock** %62, align 8
  %63 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %64 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %63, i32 0, i32 2
  store %struct.fileblock* %60, %struct.fileblock** %64, align 8
  br label %74

65:                                               ; preds = %36
  %66 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %67 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %68 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %67, i32 0, i32 1
  %69 = load %struct.fileblock*, %struct.fileblock** %68, align 8
  %70 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %69, i32 0, i32 1
  store %struct.fileblock* %66, %struct.fileblock** %70, align 8
  %71 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %72 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %73 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %72, i32 0, i32 1
  store %struct.fileblock* %71, %struct.fileblock** %73, align 8
  br label %74

74:                                               ; preds = %65, %59
  %75 = load %struct.fileblock*, %struct.fileblock** %10, align 8
  %76 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %75, i32 0, i32 1
  store %struct.fileblock* null, %struct.fileblock** %76, align 8
  br label %77

77:                                               ; preds = %74, %26
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.fileblocks*, %struct.fileblocks** %9, align 8
  %80 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %8, align 8
  ret i64 %83
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.fileblock*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
