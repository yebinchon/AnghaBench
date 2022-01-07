; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_get_from_filesource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_get_from_filesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @get_from_filesource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_from_filesource(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 8
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 7
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = add nsw i32 %27, %32
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %60, %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ISC_MIN(i32 %38, i32 128)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @read(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EAGAIN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINTR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %85

55:                                               ; preds = %50
  br label %75

56:                                               ; preds = %37
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %75

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 8
  %66 = call i32 @entropypool_adddata(i32* %61, i8* %62, i32 %63, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 8
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %34

74:                                               ; preds = %34
  br label %85

75:                                               ; preds = %59, %55
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 8
  %82 = load i64, i64* @ISC_TRUE, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %74, %54
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %24
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ISC_MIN(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @entropypool_adddata(i32*, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
