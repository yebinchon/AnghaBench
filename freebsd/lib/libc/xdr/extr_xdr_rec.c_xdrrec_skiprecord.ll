; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_skiprecord.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_skiprecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@XPRT_MOREREQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdrrec_skiprecord(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load i64, i64* @FALSE, align 8
  %17 = call i64 @__xdrrec_getrec(%struct.TYPE_7__* %15, i32* %5, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %2, align 8
  br label %83

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XPRT_MOREREQS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %2, align 8
  br label %83

39:                                               ; preds = %31, %23
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %2, align 8
  br label %83

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %77, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i1 [ true, %42 ], [ %52, %47 ]
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @skip_input_bytes(%struct.TYPE_8__* %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %2, align 8
  br label %83

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = call i32 @set_input_fragment(%struct.TYPE_8__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %2, align 8
  br label %83

77:                                               ; preds = %71, %64
  br label %42

78:                                               ; preds = %53
  %79 = load i64, i64* @FALSE, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %78, %75, %62, %39, %35, %19
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i64 @__xdrrec_getrec(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @skip_input_bytes(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @set_input_fragment(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
