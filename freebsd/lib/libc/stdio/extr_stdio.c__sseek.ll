; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_stdio.c__sseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_stdio.c__sseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32, i64, i32)*, i32, i64, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@__SEOF = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@__SAPP = common dso_local global i32 0, align 4
@__SOFF = common dso_local global i32 0, align 4
@__SOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_sseek(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* @errno, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64 (i32, i64, i32)*, i64 (i32, i64, i32)** %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 %13(i32 %16, i64 %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* @errno, align 4
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34, %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = call i64 @HASUB(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @FREEUB(%struct.TYPE_7__* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @__SEOF, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %45, %34
  %61 = load i32, i32* @__SERR, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* @errno, align 4
  br label %79

67:                                               ; preds = %28
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ESPIPE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* @__SAPP, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %67
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i32, i32* @__SOFF, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i64 -1, i64* %7, align 8
  br label %103

86:                                               ; preds = %25
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @__SOPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load i32, i32* @__SOFF, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %86
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i64, i64* %7, align 8
  ret i64 %104
}

declare dso_local i64 @HASUB(%struct.TYPE_7__*) #1

declare dso_local i32 @FREEUB(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
