; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_createDCtx_advanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_createDCtx_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 (i32, i32)*, i32 }
%struct.TYPE_9__ = type { i32 }

@defaultCustomMem = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ZSTDv07_createDCtx_advanced(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %5 = load i64 (i32, i32)*, i64 (i32, i32)** %4, align 8
  %6 = icmp ne i64 (i32, i32)* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = bitcast %struct.TYPE_8__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_8__* @defaultCustomMem to i8*), i64 24, i1 false)
  br label %13

13:                                               ; preds = %11, %7, %1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %15 = load i64 (i32, i32)*, i64 (i32, i32)** %14, align 8
  %16 = icmp ne i64 (i32, i32)* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %39

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %24 = load i64 (i32, i32)*, i64 (i32, i32)** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 %24(i32 %26, i32 4)
  %28 = inttoptr i64 %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i32* %34, %struct.TYPE_8__* %0, i32 24)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @ZSTDv07_decompressBegin(%struct.TYPE_9__* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %2, align 8
  br label %39

39:                                               ; preds = %32, %31, %21
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @ZSTDv07_decompressBegin(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
