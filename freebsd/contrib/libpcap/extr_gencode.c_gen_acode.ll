; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_acode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_acode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qual = type { i64, i32, i32 }

@Q_HOST = common dso_local global i32 0, align 4
@Q_DEFAULT = common dso_local global i32 0, align 4
@Q_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ARCnet address used in non-arc expression\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"aid supported only on ARCnet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_acode(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.qual, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = bitcast %struct.qual* %6 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %41 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %4, %4
  %16 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @Q_HOST, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @Q_DEFAULT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @Q_LINK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.block* @gen_ahostop(%struct.TYPE_5__* %31, i32* %32, i32 %35)
  store %struct.block* %36, %struct.block** %5, align 8
  br label %44

37:                                               ; preds = %25, %20
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = call i32 @bpf_error(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = call i32 @bpf_error(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %30, %41, %40
  %45 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %45
}

declare dso_local %struct.block* @gen_ahostop(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
