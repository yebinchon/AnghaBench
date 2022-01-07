; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_new_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_new_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, %struct.aac_command* }
%struct.aac_command = type { i32 (%struct.aac_command*)*, i32, %struct.aac_fib* }
%struct.aac_fib = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@AAC_DB_RESPONSE_READY = common dso_local global i32 0, align 4
@AAC_FIBSTATE_DONEADAP = common dso_local global i32 0, align 4
@AAC_ERROR_NORMAL = common dso_local global i32 0, align 4
@AAC_CMD_COMPLETED = common dso_local global i32 0, align 4
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_new_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_command*, align 8
  %7 = alloca %struct.aac_fib*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.aac_softc*
  store %struct.aac_softc* %10, %struct.aac_softc** %3, align 8
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %13 = call i32 @fwprintf(%struct.aac_softc* %11, i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %1, %36, %139
  %18 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %19 = call i32 @AAC_GET_OUTB_QUEUE(%struct.aac_softc* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %24 = call i32 @AAC_GET_OUTB_QUEUE(%struct.aac_softc* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %140

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %17

37:                                               ; preds = %33
  %38 = load i32, i32* @M_AACBUF, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @malloc(i32 16, i32 %38, i32 %41)
  %43 = inttoptr i64 %42 to %struct.aac_fib*
  store %struct.aac_fib* %43, %struct.aac_fib** %7, align 8
  %44 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %45 = icmp eq %struct.aac_fib* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %140

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, -3
  store i32 %49, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %66, %47
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = call i32 @AAC_MEM1_GETREG4(%struct.aac_softc* %55, i32 %59)
  %61 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %62 = bitcast %struct.aac_fib* %61 to i32*
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %71 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %72 = call i32 @aac_handle_aif(%struct.aac_softc* %70, %struct.aac_fib* %71)
  %73 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %74 = load i32, i32* @M_AACBUF, align 4
  %75 = call i32 @free(%struct.aac_fib* %73, i32 %74)
  %76 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @AAC_SET_OUTB_QUEUE(%struct.aac_softc* %76, i32 %77)
  %79 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %80 = load i32, i32* @AAC_DB_RESPONSE_READY, align 4
  %81 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %79, i32 %80)
  br label %139

82:                                               ; preds = %29
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %86 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %85, i32 0, i32 2
  %87 = load %struct.aac_command*, %struct.aac_command** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %87, i64 %90
  store %struct.aac_command* %91, %struct.aac_command** %6, align 8
  %92 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %93 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %92, i32 0, i32 2
  %94 = load %struct.aac_fib*, %struct.aac_fib** %93, align 8
  store %struct.aac_fib* %94, %struct.aac_fib** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %82
  %98 = load i32, i32* @AAC_FIBSTATE_DONEADAP, align 4
  %99 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %100 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @AAC_ERROR_NORMAL, align 4
  %105 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %106 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %97, %82
  %110 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %111 = call i32 @aac_remove_busy(%struct.aac_command* %110)
  %112 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %113 = call i32 @aac_unmap_command(%struct.aac_command* %112)
  %114 = load i32, i32* @AAC_CMD_COMPLETED, align 4
  %115 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %116 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %120 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %119, i32 0, i32 0
  %121 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %120, align 8
  %122 = icmp ne i32 (%struct.aac_command*)* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %109
  %124 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %125 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %124, i32 0, i32 0
  %126 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %125, align 8
  %127 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %128 = call i32 %126(%struct.aac_command* %127)
  br label %132

129:                                              ; preds = %109
  %130 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %131 = call i32 @wakeup(%struct.aac_command* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %136 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %69
  br label %17

140:                                              ; preds = %46, %28
  %141 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %142 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %149 = call i32 @aac_startio(%struct.aac_softc* %148)
  br label %150

150:                                              ; preds = %147, %140
  %151 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %152 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %151, i32 0, i32 1
  %153 = call i32 @mtx_unlock(i32* %152)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AAC_GET_OUTB_QUEUE(%struct.aac_softc*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @AAC_MEM1_GETREG4(%struct.aac_softc*, i32) #1

declare dso_local i32 @aac_handle_aif(%struct.aac_softc*, %struct.aac_fib*) #1

declare dso_local i32 @free(%struct.aac_fib*, i32) #1

declare dso_local i32 @AAC_SET_OUTB_QUEUE(%struct.aac_softc*, i32) #1

declare dso_local i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc*, i32) #1

declare dso_local i32 @aac_remove_busy(%struct.aac_command*) #1

declare dso_local i32 @aac_unmap_command(%struct.aac_command*) #1

declare dso_local i32 @wakeup(%struct.aac_command*) #1

declare dso_local i32 @aac_startio(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
