; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_lookup_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_lookup_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@UCL_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ucl_object_lookup_len(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UCL_OBJECT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12, %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %33

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_8__* @ucl_hash_search_obj(i32 %30, %struct.TYPE_8__* %9)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  br label %33

33:                                               ; preds = %22, %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %34
}

declare dso_local %struct.TYPE_8__* @ucl_hash_search_obj(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
