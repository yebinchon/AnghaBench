; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_command_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_command_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.aac_fib = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_AIFFLAGS_RUNNING = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_EXIT = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_PENDING = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"aifthd\00", align 1
@AAC_PERIODIC_INTERVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_ALLOCFIBS = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM = common dso_local global i32 0, align 4
@AAC_HOST_NORM_CMD_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown command from controller\0A\00", align 1
@AAC_FIBTYPE_TFIB = common dso_local global i64 0, align 8
@AAC_FIBSTATE_FROMADAP = common dso_local global i32 0, align 4
@AAC_FIBSTATE_DONEHOST = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4
@AAC_ADAP_NORM_RESP_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_command_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_command_thread(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fib*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %10, i32 0, i32 3
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %14 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %168, %91, %1
  %17 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AAC_AIFFLAGS_EXIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %169

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %24 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %25 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AAC_AIFFLAGS_PENDING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %32 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 3
  %36 = load i32, i32* @PRIBIO, align 4
  %37 = load i32, i32* @AAC_PERIODIC_INTERVAL, align 4
  %38 = load i32, i32* @hz, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @msleep(i32 %33, i32* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %23
  %42 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %43 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AAC_AIFFLAGS_ALLOCFIBS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 3
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %53 = call i32 @aac_alloc_commands(%struct.aac_softc* %52)
  %54 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 3
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load i32, i32* @AAC_AIFFLAGS_ALLOCFIBS, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %60 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %64 = call i32 @aac_startio(%struct.aac_softc* %63)
  br label %65

65:                                               ; preds = %48, %41
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EWOULDBLOCK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %71 = call i32 @aac_timeout(%struct.aac_softc* %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %74 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %83 = call i32 @aac_print_printf(%struct.aac_softc* %82)
  br label %84

84:                                               ; preds = %81, %72
  %85 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %86 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %16

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %167, %92
  %94 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %95 = load i32, i32* @AAC_HOST_NORM_CMD_QUEUE, align 4
  %96 = call i64 @aac_dequeue_fib(%struct.aac_softc* %94, i32 %95, i32* %4, %struct.aac_fib** %3)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %168

99:                                               ; preds = %93
  %100 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %101 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %102 = call i32 @AAC_PRINT_FIB(%struct.aac_softc* %100, %struct.aac_fib* %101)
  %103 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %104 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %111 [
    i32 128, label %107
  ]

107:                                              ; preds = %99
  %108 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %109 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %110 = call i32 @aac_handle_aif(%struct.aac_softc* %108, %struct.aac_fib* %109)
  br label %116

111:                                              ; preds = %99
  %112 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %118 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %124 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AAC_FIBTYPE_TFIB, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %122, %116
  br label %168

130:                                              ; preds = %122
  %131 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %132 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AAC_FIBSTATE_FROMADAP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %130
  %139 = load i32, i32* @AAC_FIBSTATE_DONEHOST, align 4
  %140 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %141 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @ST_OK, align 4
  %146 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %147 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  store i32 %145, i32* %149, align 4
  %150 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %151 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ugt i64 %155, 32
  br i1 %156, label %157, label %162

157:                                              ; preds = %138
  store i32 32, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %160 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store i32 %158, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %138
  %163 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %164 = load i32, i32* @AAC_ADAP_NORM_RESP_QUEUE, align 4
  %165 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %166 = call i32 @aac_enqueue_response(%struct.aac_softc* %163, i32 %164, %struct.aac_fib* %165)
  br label %167

167:                                              ; preds = %162, %130
  br label %93

168:                                              ; preds = %129, %98
  br label %16

169:                                              ; preds = %16
  %170 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %173 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %177 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %176, i32 0, i32 3
  %178 = call i32 @mtx_unlock(i32* %177)
  %179 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @wakeup(i32 %181)
  %183 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aac_alloc_commands(%struct.aac_softc*) #1

declare dso_local i32 @aac_startio(%struct.aac_softc*) #1

declare dso_local i32 @aac_timeout(%struct.aac_softc*) #1

declare dso_local i32 @aac_print_printf(%struct.aac_softc*) #1

declare dso_local i64 @aac_dequeue_fib(%struct.aac_softc*, i32, i32*, %struct.aac_fib**) #1

declare dso_local i32 @AAC_PRINT_FIB(%struct.aac_softc*, %struct.aac_fib*) #1

declare dso_local i32 @aac_handle_aif(%struct.aac_softc*, %struct.aac_fib*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aac_enqueue_response(%struct.aac_softc*, i32, %struct.aac_fib*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
