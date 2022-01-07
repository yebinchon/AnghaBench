; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_res_getservers.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_res_getservers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%union.res_sockaddr_union = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_getservers(%struct.TYPE_13__* %0, %union.res_sockaddr_union* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %union.res_sockaddr_union*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %union.res_sockaddr_union* %1, %union.res_sockaddr_union** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %95, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i1 [ false, %10 ], [ %19, %16 ]
  br i1 %21, label %22, label %98

22:                                               ; preds = %20
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %52

43:                                               ; preds = %22
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %43, %29
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %88 [
    i32 129, label %54
  ]

54:                                               ; preds = %52
  store i64 4, i64* %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %5, align 8
  %63 = bitcast %union.res_sockaddr_union* %62 to %struct.TYPE_14__*
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %72
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memcpy(%struct.TYPE_14__* %63, %struct.TYPE_15__* %73, i64 %74)
  br label %87

76:                                               ; preds = %54
  %77 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %5, align 8
  %78 = bitcast %union.res_sockaddr_union* %77 to %struct.TYPE_14__*
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %83
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @memcpy(%struct.TYPE_14__* %78, %struct.TYPE_15__* %84, i64 %85)
  br label %87

87:                                               ; preds = %76, %61
  br label %92

88:                                               ; preds = %52
  %89 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %5, align 8
  %90 = bitcast %union.res_sockaddr_union* %89 to %struct.TYPE_14__*
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %5, align 8
  %94 = getelementptr inbounds %union.res_sockaddr_union, %union.res_sockaddr_union* %93, i32 1
  store %union.res_sockaddr_union* %94, %union.res_sockaddr_union** %5, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %10

98:                                               ; preds = %20
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  ret i32 %101
}

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
