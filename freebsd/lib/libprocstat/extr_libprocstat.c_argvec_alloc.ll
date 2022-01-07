; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_argvec_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_argvec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argvec = type { i64, i32, %struct.argvec*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.argvec* (i64)* @argvec_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.argvec* @argvec_alloc(i64 %0) #0 {
  %2 = alloca %struct.argvec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.argvec*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i8* @malloc(i32 32)
  %6 = bitcast i8* %5 to %struct.argvec*
  store %struct.argvec* %6, %struct.argvec** %4, align 8
  %7 = load %struct.argvec*, %struct.argvec** %4, align 8
  %8 = icmp eq %struct.argvec* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.argvec* null, %struct.argvec** %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.argvec*, %struct.argvec** %4, align 8
  %13 = getelementptr inbounds %struct.argvec, %struct.argvec* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.argvec*, %struct.argvec** %4, align 8
  %15 = getelementptr inbounds %struct.argvec, %struct.argvec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i8* @malloc(i32 %17)
  %19 = bitcast i8* %18 to %struct.argvec*
  %20 = load %struct.argvec*, %struct.argvec** %4, align 8
  %21 = getelementptr inbounds %struct.argvec, %struct.argvec* %20, i32 0, i32 2
  store %struct.argvec* %19, %struct.argvec** %21, align 8
  %22 = load %struct.argvec*, %struct.argvec** %4, align 8
  %23 = getelementptr inbounds %struct.argvec, %struct.argvec* %22, i32 0, i32 2
  %24 = load %struct.argvec*, %struct.argvec** %23, align 8
  %25 = icmp eq %struct.argvec* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.argvec*, %struct.argvec** %4, align 8
  %28 = call i32 @free(%struct.argvec* %27)
  store %struct.argvec* null, %struct.argvec** %2, align 8
  br label %55

29:                                               ; preds = %10
  %30 = load %struct.argvec*, %struct.argvec** %4, align 8
  %31 = getelementptr inbounds %struct.argvec, %struct.argvec* %30, i32 0, i32 1
  store i32 32, i32* %31, align 8
  %32 = load %struct.argvec*, %struct.argvec** %4, align 8
  %33 = getelementptr inbounds %struct.argvec, %struct.argvec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @malloc(i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.argvec*, %struct.argvec** %4, align 8
  %41 = getelementptr inbounds %struct.argvec, %struct.argvec* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.argvec*, %struct.argvec** %4, align 8
  %43 = getelementptr inbounds %struct.argvec, %struct.argvec* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %29
  %47 = load %struct.argvec*, %struct.argvec** %4, align 8
  %48 = getelementptr inbounds %struct.argvec, %struct.argvec* %47, i32 0, i32 2
  %49 = load %struct.argvec*, %struct.argvec** %48, align 8
  %50 = call i32 @free(%struct.argvec* %49)
  %51 = load %struct.argvec*, %struct.argvec** %4, align 8
  %52 = call i32 @free(%struct.argvec* %51)
  store %struct.argvec* null, %struct.argvec** %2, align 8
  br label %55

53:                                               ; preds = %29
  %54 = load %struct.argvec*, %struct.argvec** %4, align 8
  store %struct.argvec* %54, %struct.argvec** %2, align 8
  br label %55

55:                                               ; preds = %53, %46, %26, %9
  %56 = load %struct.argvec*, %struct.argvec** %2, align 8
  ret %struct.argvec* %56
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.argvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
