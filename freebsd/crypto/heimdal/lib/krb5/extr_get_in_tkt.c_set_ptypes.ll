; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_in_tkt.c_set_ptypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_in_tkt.c_set_ptypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@set_ptypes.preauth2 = internal global %struct.TYPE_17__ zeroinitializer, align 8
@set_ptypes.ptypes2 = internal global [2 x i32] [i32 130, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_19__*, i32**, %struct.TYPE_17__**)* @set_ptypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ptypes(i32 %0, %struct.TYPE_19__* %1, i32** %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %8, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @decode_METHOD_DATA(i32 %20, i32 %25, %struct.TYPE_18__* %9, i32* null)
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %75, %15
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %73 [
    i32 130, label %39
    i32 129, label %41
  ]

39:                                               ; preds = %32
  %40 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @set_ptypes.ptypes2, i64 0, i64 0), i32** %40, align 8
  br label %74

41:                                               ; preds = %32
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* @set_ptypes.preauth2, %struct.TYPE_17__** %42, align 8
  %43 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = call i32 @ALLOC_SEQ(%struct.TYPE_17__* %44, i32 1)
  %46 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 130, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = call i32 @decode_ETYPE_INFO(i32 %58, i32 %65, i32* %71, i32* null)
  br label %74

73:                                               ; preds = %32
  br label %74

74:                                               ; preds = %73, %41, %39
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %27

78:                                               ; preds = %27
  %79 = call i32 @free_METHOD_DATA(%struct.TYPE_18__* %9)
  br label %82

80:                                               ; preds = %4
  %81 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @set_ptypes.ptypes2, i64 0, i64 0), i32** %81, align 8
  br label %82

82:                                               ; preds = %80, %78
  ret i32 1
}

declare dso_local i32 @decode_METHOD_DATA(i32, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ALLOC_SEQ(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @decode_ETYPE_INFO(i32, i32, i32*, i32*) #1

declare dso_local i32 @free_METHOD_DATA(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
