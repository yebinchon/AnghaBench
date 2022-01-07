; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_7__**, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BLAKE2S_OUTBYTES = common dso_local global i64 0, align 8
@PARALLELISM_DEGREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2sp_init(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %66

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @blake2sp_init_root(%struct.TYPE_6__* %26, i64 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %66

31:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @blake2sp_init_leaf(%struct.TYPE_7__* %42, i64 %43, i32 0, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %66

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %48, %30, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @blake2sp_init_root(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @blake2sp_init_leaf(%struct.TYPE_7__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
