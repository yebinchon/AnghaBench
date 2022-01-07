; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_ring_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_ring_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.al_udma_q* }
%struct.al_udma_q = type { i64, i64, i8*, i8* }

@DMA_MAX_Q = common dso_local global i64 0, align 8
@AL_RING_SUBMISSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Q[%d] submission ring pointers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Q[%d] submission ring is not allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Q[%d] completion ring pointers:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Q[%d] completion ring is not allocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[%04d](%p): %08x %08x %08x %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"[%04d](%p): %08x %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"[%04d](%p): %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_udma_ring_print(%struct.al_udma* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_udma_q*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %13 = icmp ne %struct.al_udma* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %119

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @DMA_MAX_Q, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %119

20:                                               ; preds = %15
  %21 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %22 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %21, i32 0, i32 0
  %23 = load %struct.al_udma_q*, %struct.al_udma_q** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %23, i64 %24
  store %struct.al_udma_q* %25, %struct.al_udma_q** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AL_RING_SUBMISSION, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.al_udma_q*, %struct.al_udma_q** %7, align 8
  %31 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  store i64 4, i64* %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %119

41:                                               ; preds = %35
  br label %58

42:                                               ; preds = %20
  %43 = load %struct.al_udma_q*, %struct.al_udma_q** %7, align 8
  %44 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %9, align 8
  %46 = load %struct.al_udma_q*, %struct.al_udma_q** %7, align 8
  %47 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %57

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  br label %119

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %41
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %116, %58
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.al_udma_q*, %struct.al_udma_q** %7, align 8
  %62 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %119

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = mul i64 %68, %69
  %71 = add i64 %67, %70
  %72 = inttoptr i64 %71 to i8*
  %73 = bitcast i8* %72 to i64*
  store i64* %73, i64** %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %74, 16
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load i64, i64* %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %77, i64* %78, i64 %80, i64 %83, i64 %86, i64 %89)
  br label %115

91:                                               ; preds = %65
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %11, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %95, i64* %96, i64 %98, i64 %101)
  br label %114

103:                                              ; preds = %91
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i64, i64* %10, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i64, ...) @al_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %107, i64* %108, i64 %110)
  br label %113

112:                                              ; preds = %103
  br label %119

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %94
  br label %115

115:                                              ; preds = %114, %76
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %10, align 8
  br label %59

119:                                              ; preds = %14, %19, %38, %54, %112, %59
  ret void
}

declare dso_local i32 @al_dbg(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
