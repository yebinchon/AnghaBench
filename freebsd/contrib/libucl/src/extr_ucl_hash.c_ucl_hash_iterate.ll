; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_hash.c_ucl_hash_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_hash.c_ucl_hash_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ucl_hash_real_iter = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ucl_hash_iterate(%struct.TYPE_5__* %0, %struct.ucl_hash_real_iter** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ucl_hash_real_iter**, align 8
  %6 = alloca %struct.ucl_hash_real_iter*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.ucl_hash_real_iter** %1, %struct.ucl_hash_real_iter*** %5, align 8
  %8 = load %struct.ucl_hash_real_iter**, %struct.ucl_hash_real_iter*** %5, align 8
  %9 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %8, align 8
  store %struct.ucl_hash_real_iter* %9, %struct.ucl_hash_real_iter** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %15 = icmp eq %struct.ucl_hash_real_iter* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = call %struct.ucl_hash_real_iter* @UCL_ALLOC(i32 16)
  store %struct.ucl_hash_real_iter* %17, %struct.ucl_hash_real_iter** %6, align 8
  %18 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %19 = icmp eq %struct.ucl_hash_real_iter* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %64

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %28 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %30 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %39 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %21, %13
  %41 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %42 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %45 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ult i32* %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %50 = getelementptr inbounds %struct.ucl_hash_real_iter, %struct.ucl_hash_real_iter* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %50, align 8
  %53 = load i32, i32* %51, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %7, align 8
  br label %60

56:                                               ; preds = %40
  %57 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %58 = call i32 @UCL_FREE(i32 16, %struct.ucl_hash_real_iter* %57)
  %59 = load %struct.ucl_hash_real_iter**, %struct.ucl_hash_real_iter*** %5, align 8
  store %struct.ucl_hash_real_iter* null, %struct.ucl_hash_real_iter** %59, align 8
  store i8* null, i8** %3, align 8
  br label %64

60:                                               ; preds = %48
  %61 = load %struct.ucl_hash_real_iter*, %struct.ucl_hash_real_iter** %6, align 8
  %62 = load %struct.ucl_hash_real_iter**, %struct.ucl_hash_real_iter*** %5, align 8
  store %struct.ucl_hash_real_iter* %61, %struct.ucl_hash_real_iter** %62, align 8
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %60, %56, %20, %12
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local %struct.ucl_hash_real_iter* @UCL_ALLOC(i32) #1

declare dso_local i32 @UCL_FREE(i32, %struct.ucl_hash_real_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
