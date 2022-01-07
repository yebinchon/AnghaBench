; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"lines=%lu\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"columns=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @cl_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_resize(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x %struct.TYPE_3__*], align 16
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca [1024 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %8, i64 0, i64 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %17, align 16
  %18 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %8, i64 0, i64 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %18, align 8
  %19 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %20 = call i32 @L(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @SPRINTF(i32* %19, i32 4096, i32 %20, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %8, i64 0, i64 0
  %27 = call i64 @opts_set(i32* %25, %struct.TYPE_3__** %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %32 = call i32 @L(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @SPRINTF(i32* %31, i32 4096, i32 %32, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %8, i64 0, i64 0
  %39 = call i64 @opts_set(i32* %37, %struct.TYPE_3__** %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %43

42:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i8* @SPRINTF(i32*, i32, i32, i32) #1

declare dso_local i32 @L(i8*) #1

declare dso_local i64 @opts_set(i32*, %struct.TYPE_3__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
