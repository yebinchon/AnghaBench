; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lh_stats.c_OPENSSL_LH_node_usage_stats_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lh_stats.c_OPENSSL_LH_node_usage_stats_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [26 x i8] c"%lu nodes used out of %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%lu items\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"load %d.%02d  actual load %d.%02d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_LH_node_usage_stats_bio(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %30, %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %5, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %96

62:                                               ; preds = %47
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = udiv i64 %64, %68
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = urem i64 %71, %75
  %77 = mul i64 %76, 100
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = zext i32 %80 to i64
  %82 = udiv i64 %77, %81
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = udiv i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = urem i64 %88, %89
  %91 = mul i64 %90, 100
  %92 = load i64, i64* %9, align 8
  %93 = udiv i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %83, i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
