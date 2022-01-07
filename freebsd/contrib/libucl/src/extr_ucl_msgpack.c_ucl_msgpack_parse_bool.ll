; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ucl_stack = type { i32 }

@UCL_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_stack*, i64, i32, i8*, i64)* @ucl_msgpack_parse_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_parse_bool(%struct.ucl_parser* %0, %struct.ucl_stack* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store %struct.ucl_stack* %1, %struct.ucl_stack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %42

19:                                               ; preds = %6
  %20 = load i32, i32* @UCL_BOOLEAN, align 4
  %21 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %22 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_7__* @ucl_object_new_full(i32 %20, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %14, align 8
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %32
  ]

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @assert(i32 0)
  br label %38

38:                                               ; preds = %36, %32, %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %41 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %40, i32 0, i32 0
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %41, align 8
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_7__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
