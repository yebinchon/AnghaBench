; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2s_ref.c_blake2s_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2s_ref.c_blake2s_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }

@BLAKE2S_BLOCKBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2s_update(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %18 = load i64, i64* %8, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %13
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %36 = call i32 @blake2s_increment_counter(%struct.TYPE_5__* %34, i64 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @blake2s_compress(%struct.TYPE_5__* %37, i8* %40)
  %42 = load i64, i64* %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %52, %23
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %55 = call i32 @blake2s_increment_counter(%struct.TYPE_5__* %53, i64 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @blake2s_compress(%struct.TYPE_5__* %56, i8* %57)
  %59 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %7, align 8
  %62 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %13
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %66, %3
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @blake2s_increment_counter(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @blake2s_compress(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
