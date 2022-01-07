; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl_sendfib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl_sendfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_command = type { %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aac_event = type { %struct.aac_command**, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AAC_EVENT_CMFREE = common dso_local global i32 0, align 4
@aac_ioctl_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"aacraid_ctlsfib\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"incoming FIB oversized (%d > %d)\0A\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"aacraid_wait_command return %d\0A\00", align 1
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
  %16 = call i64 @aacraid_alloc_command(%struct.aac_softc* %15, %struct.aac_command** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load i32, i32* @M_AACRAIDBUF, align 4
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
  br label %153

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
  %42 = call i32 @aacraid_add_event(%struct.aac_softc* %40, %struct.aac_event* %41)
  %43 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %44 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 1
  %46 = call i32 @msleep(%struct.aac_command* %43, i32* %45, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %47

47:                                               ; preds = %31, %2
  %48 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 1
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %53 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @copyin(i32 %51, %struct.TYPE_5__* %54, i32 4)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %153

58:                                               ; preds = %47
  %59 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %60 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %58
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %79 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %83 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %73, %58
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %88 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @copyin(i32 %86, %struct.TYPE_5__* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %153

94:                                               ; preds = %85
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %97 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load i32, i32* @time_uptime, align 4
  %102 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %103 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %105 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %107 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %106, i32 0, i32 1
  %108 = call i32 @mtx_lock(i32* %107)
  %109 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %110 = call i32 @aacraid_wait_command(%struct.aac_command* %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %112 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %111, i32 0, i32 1
  %113 = call i32 @mtx_unlock(i32* %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %94
  %117 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %118 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  br label %153

122:                                              ; preds = %94
  %123 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %124 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %131 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %122
  %135 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %136 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %140 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %141)
  %143 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %144 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %134, %122
  %147 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %148 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @copyout(%struct.TYPE_5__* %149, i32 %150, i32 %151)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %146, %116, %93, %57, %26
  %154 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %155 = icmp ne %struct.aac_command* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %158 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %157, i32 0, i32 1
  %159 = call i32 @mtx_lock(i32* %158)
  %160 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %161 = call i32 @aacraid_release_command(%struct.aac_command* %160)
  %162 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %163 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %162, i32 0, i32 1
  %164 = call i32 @mtx_unlock(i32* %163)
  br label %165

165:                                              ; preds = %156, %153
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local %struct.aac_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aacraid_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @msleep(%struct.aac_command*, i32*, i32, i8*, i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @aacraid_wait_command(%struct.aac_command*) #1

declare dso_local i32 @copyout(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
