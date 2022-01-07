; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fwrite.c_fwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fwrite.c_fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.__suio = type { i64, i32, %struct.__siov* }
%struct.__siov = type { i64, i8* }

@SIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fwrite(i8* noalias %0, i64 %1, i64 %2, %struct.TYPE_6__* noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.__suio, align 8
  %12 = alloca %struct.__siov, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i64 0, i64* %5, align 8
  br label %65

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %20, %21
  %23 = icmp ugt i64 %22, 65535
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = load i64, i64* %7, align 8
  %28 = udiv i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i32, i32* @__SERR, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i64 0, i64* %5, align 8
  br label %65

37:                                               ; preds = %24, %19
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.__siov, %struct.__siov* %12, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.__siov, %struct.__siov* %12, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 2
  store %struct.__siov* %12, %struct.__siov** %46, align 8
  %47 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = call i32 @ORIENT(%struct.TYPE_6__* %50, i32 -1)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = call i64 @__sfvwrite(%struct.TYPE_6__* %52, %struct.__suio* %11)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %37
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %56, %58
  %60 = load i64, i64* %7, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %55, %37
  %63 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %62, %30, %18
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_6__*) #1

declare dso_local i32 @ORIENT(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @__sfvwrite(%struct.TYPE_6__*, %struct.__suio*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
