; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dio_printopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dio_printopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.rpl_dio_genoption = type { i32, i64 }

@RPL_DIO_GENOPTION_LEN = common dso_local global i64 0, align 8
@RPL_OPT_PAD0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" opt:pad0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" opt:%s len:%u \00", align 1
@rpl_subopt_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"subopt:%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" [|truncated]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.rpl_dio_genoption*, i64)* @rpl_dio_printopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpl_dio_printopt(%struct.TYPE_5__* %0, %struct.rpl_dio_genoption* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.rpl_dio_genoption*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.rpl_dio_genoption* %1, %struct.rpl_dio_genoption** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @RPL_DIO_GENOPTION_LEN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %112

13:                                               ; preds = %3
  %14 = load i64, i64* @RPL_DIO_GENOPTION_LEN, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub nsw i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %18 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ND_TCHECK(i32 %19)
  br label %21

21:                                               ; preds = %97, %13
  %22 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %23 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RPL_OPT_PAD0, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %29 = bitcast %struct.rpl_dio_genoption* %28 to i32*
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ult i32* %29, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %36 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %37 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 2
  %40 = bitcast %struct.rpl_dio_genoption* %35 to { i32, i64 }*
  %41 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @ND_TTEST2(i32 %42, i64 %44, i32 %39)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %34, %27
  %48 = phi i1 [ true, %27 ], [ %46, %34 ]
  br i1 %48, label %49, label %108

49:                                               ; preds = %47
  %50 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %51 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %55 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RPL_OPT_PAD0, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([10 x i8]* @.str to %struct.TYPE_5__*))
  br label %97

62:                                               ; preds = %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load i32, i32* @rpl_subopt_values, align 4
  %65 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %66 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @tok2str(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_5__*
  %72 = call i32 @ND_PRINT(%struct.TYPE_5__* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %96

77:                                               ; preds = %62
  %78 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %79 = getelementptr inbounds %struct.rpl_dio_genoption, %struct.rpl_dio_genoption* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %6, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %91 = bitcast %struct.rpl_dio_genoption* %90 to i32*
  %92 = load i64, i64* @RPL_DIO_GENOPTION_LEN, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @hex_print(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %62
  br label %97

97:                                               ; preds = %96, %59
  %98 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %5, align 8
  %99 = bitcast %struct.rpl_dio_genoption* %98 to i8*
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = bitcast i8* %102 to %struct.rpl_dio_genoption*
  store %struct.rpl_dio_genoption* %103, %struct.rpl_dio_genoption** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %6, align 8
  br label %21

108:                                              ; preds = %47
  br label %112

109:                                              ; No predecessors!
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([14 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %112

112:                                              ; preds = %109, %108, %12
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i64 @ND_TTEST2(i32, i64, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @hex_print(%struct.TYPE_5__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
