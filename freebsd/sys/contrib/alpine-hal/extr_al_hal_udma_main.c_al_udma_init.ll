; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i64, i32, i8*, %union.udma_regs*, %struct.TYPE_3__*, i32, i32, i32* }
%union.udma_regs = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.al_udma_params = type { i32, i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DMA_MAX_Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"udma: invalid num_of_queues parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UDMA_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UDMA_DISABLE = common dso_local global i32 0, align 4
@AL_QUEUE_NOT_INITIALIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"udma [%s] initialized. base %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_init(%struct.al_udma* %0, %struct.al_udma_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca %struct.al_udma_params*, align 8
  %6 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store %struct.al_udma_params* %1, %struct.al_udma_params** %5, align 8
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = call i32 @al_assert(%struct.al_udma* %7)
  %9 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %10 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DMA_MAX_Q, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @al_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %20 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %23 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %25 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %28 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %30 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %34 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %33, i32 0, i32 7
  store i32* %32, i32** %34, align 8
  %35 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %36 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UDMA_TX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %18
  %41 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %42 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to %union.udma_regs*
  %46 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %47 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %46, i32 0, i32 3
  store %union.udma_regs* %45, %union.udma_regs** %47, align 8
  br label %56

48:                                               ; preds = %18
  %49 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %50 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = bitcast i32* %52 to %union.udma_regs*
  %54 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %55 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %54, i32 0, i32 3
  store %union.udma_regs* %53, %union.udma_regs** %55, align 8
  br label %56

56:                                               ; preds = %48, %40
  %57 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %58 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @al_udma_get_revision(%struct.TYPE_4__* %59)
  %61 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %62 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %64 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %69 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %68, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  br label %76

70:                                               ; preds = %56
  %71 = load %struct.al_udma_params*, %struct.al_udma_params** %5, align 8
  %72 = getelementptr inbounds %struct.al_udma_params, %struct.al_udma_params* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %75 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @UDMA_DISABLE, align 4
  %78 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %79 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %93, %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @DMA_MAX_Q, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32, i32* @AL_QUEUE_NOT_INITIALIZED, align 4
  %86 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %87 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %86, i32 0, i32 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %80

96:                                               ; preds = %80
  %97 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %98 = call i32 @al_udma_set_defaults(%struct.al_udma* %97)
  %99 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %100 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %103 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %102, i32 0, i32 3
  %104 = load %union.udma_regs*, %union.udma_regs** %103, align 8
  %105 = call i32 @al_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %101, %union.udma_regs* %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @al_assert(%struct.al_udma*) #1

declare dso_local i32 @al_err(i8*) #1

declare dso_local i32 @al_udma_get_revision(%struct.TYPE_4__*) #1

declare dso_local i32 @al_udma_set_defaults(%struct.al_udma*) #1

declare dso_local i32 @al_dbg(i8*, i8*, %union.udma_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
