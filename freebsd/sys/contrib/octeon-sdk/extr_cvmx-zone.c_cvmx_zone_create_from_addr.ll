; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-zone.c_cvmx_zone_create_from_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-zone.c_cvmx_zone_create_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@CVMX_SPINLOCK_UNLOCKED_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @cvmx_zone_create_from_addr(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %95

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 4, %27
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %95

31:                                               ; preds = %21
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i8* null, i8** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @CVMX_SPINLOCK_UNLOCKED_VAL, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %90, %31
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = bitcast i8* %77 to i8**
  store i8* %69, i8** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %65
  %91 = load i32, i32* %15, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %61

93:                                               ; preds = %61
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %7, align 8
  br label %95

95:                                               ; preds = %93, %30, %20
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
