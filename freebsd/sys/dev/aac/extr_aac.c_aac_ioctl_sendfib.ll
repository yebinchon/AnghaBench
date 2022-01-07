; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_ioctl_sendfib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_ioctl_sendfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_command = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aac_event = type { %struct.aac_command**, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AAC_EVENT_CMFREE = common dso_local global i32 0, align 4
@aac_ioctl_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sendfib\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"incoming FIB oversized (%d > %d)\0A\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"aac_wait_command return %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"outbound FIB oversized (%d > %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_ioctl_sendfib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_ioctl_sendfib(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_event*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.aac_command* null, %struct.aac_command** %5, align 8
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = call i64 @aac_alloc_command(%struct.aac_softc* %15, %struct.aac_command** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @M_AACBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.aac_event* @malloc(i32 16, i32 %19, i32 %22)
  store %struct.aac_event* %23, %struct.aac_event** %8, align 8
  %24 = load %struct.aac_event*, %struct.aac_event** %8, align 8
  %25 = icmp eq %struct.aac_event* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 1
  %30 = call i32 @mtx_unlock(i32* %29)
  br label %150

31:                                               ; preds = %18
  %32 = load i32, i32* @AAC_EVENT_CMFREE, align 4
  %33 = load %struct.aac_event*, %struct.aac_event** %8, align 8
  %34 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @aac_ioctl_event, align 4
  %36 = load %struct.aac_event*, %struct.aac_event** %8, align 8
  %37 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.aac_event*, %struct.aac_event** %8, align 8
  %39 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %38, i32 0, i32 0
  store %struct.aac_command** %5, %struct.aac_command*** %39, align 8
  %40 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %41 = load %struct.aac_event*, %struct.aac_event** %8, align 8
  %42 = call i32 @aac_add_event(%struct.aac_softc* %40, %struct.aac_event* %41)
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 1
  %45 = call i32 @msleep(%struct.aac_command** %5, i32* %44, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %46

46:                                               ; preds = %31, %2
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 1
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %52 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @copyin(i32 %50, %struct.TYPE_5__* %53, i32 4)
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %150

57:                                               ; preds = %46
  %58 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %59 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %69 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %57
  %73 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %74 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %78 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %72, %57
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %87 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @copyin(i32 %85, %struct.TYPE_5__* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %150

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %96 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* @time_uptime, align 4
  %101 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %102 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %104 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %103, i32 0, i32 1
  %105 = call i32 @mtx_lock(i32* %104)
  %106 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %107 = call i32 @aac_wait_command(%struct.aac_command* %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %109 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %108, i32 0, i32 1
  %110 = call i32 @mtx_unlock(i32* %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %93
  %114 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %150

119:                                              ; preds = %93
  %120 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %121 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %128 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %119
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %137 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %141 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %131, %119
  %144 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %145 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @copyout(%struct.TYPE_5__* %146, i32 %147, i32 %148)
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %143, %113, %92, %56, %26
  %151 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %152 = icmp ne %struct.aac_command* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 1
  %156 = call i32 @mtx_lock(i32* %155)
  %157 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %158 = call i32 @aac_release_command(%struct.aac_command* %157)
  %159 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %160 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %159, i32 0, i32 1
  %161 = call i32 @mtx_unlock(i32* %160)
  br label %162

162:                                              ; preds = %153, %150
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @aac_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local %struct.aac_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aac_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @msleep(%struct.aac_command**, i32*, i32, i8*, i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @aac_wait_command(%struct.aac_command*) #1

declare dso_local i32 @copyout(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @aac_release_command(%struct.aac_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
