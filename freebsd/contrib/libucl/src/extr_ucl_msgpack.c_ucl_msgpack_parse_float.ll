; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ucl_stack = type { i32 }
%union.anon = type { i32 }

@UCL_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_stack*, i64, i32, i8*, i64)* @ucl_msgpack_parse_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_parse_float(%struct.ucl_parser* %0, %struct.ucl_stack* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %union.anon, align 4
  %16 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store %struct.ucl_stack* %1, %struct.ucl_stack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %60

21:                                               ; preds = %6
  %22 = load i32, i32* @UCL_FLOAT, align 4
  %23 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %24 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_7__* @ucl_object_new_full(i32 %22, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %14, align 8
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %52 [
    i32 129, label %30
    i32 128, label %43
  ]

30:                                               ; preds = %21
  %31 = bitcast %union.anon* %15 to i32*
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @memcpy(i32* %31, i8* %32, i32 4)
  %34 = bitcast %union.anon* %15 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FROM_BE32(i32 %35)
  %37 = bitcast %union.anon* %15 to i32*
  store i32 %36, i32* %37, align 4
  %38 = bitcast %union.anon* %15 to float*
  %39 = load float, float* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store float %39, float* %42, align 4
  store i64 4, i64* %10, align 8
  br label %54

43:                                               ; preds = %21
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @memcpy(i32* %16, i8* %44, i32 4)
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @FROM_BE64(i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  store i64 8, i64* %10, align 8
  br label %54

52:                                               ; preds = %21
  %53 = call i32 @assert(i32 0)
  br label %54

54:                                               ; preds = %52, %43, %30
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %57 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %56, i32 0, i32 0
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %20
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_7__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @FROM_BE32(i32) #1

declare dso_local i32 @FROM_BE64(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
