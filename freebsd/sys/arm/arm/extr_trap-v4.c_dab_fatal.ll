; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_fatal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.trapframe = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.ksig = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Fatal %s mode data abort: '%s'\0A\00", align 1
@data_aborts = common dso_local global %struct.TYPE_2__* null, align 8
@FAULT_TYPE_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"trapframe: %p\0AFSR=%08x, FAR=\00", align 1
@FAULT_IMPRECISE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%08x, \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Invalid,  \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"spsr=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Fatal %s mode prefetch abort at 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"trapframe: %p, spsr=%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"r0 =%08x, r1 =%08x, r2 =%08x, r3 =%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"r4 =%08x, r5 =%08x, r6 =%08x, r7 =%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"r8 =%08x, r9 =%08x, r10=%08x, r11=%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"r12=%08x, \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"usp=%08x, ulr=%08x\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ssp=%08x, slr=%08x\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c", pc =%08x\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Fatal abort\00", align 1
@KDB_WHY_TRAP = common dso_local global i32 0, align 4
@KDB_WHY_UNSET = common dso_local global i32 0, align 4
@debugger_on_trap = common dso_local global i64 0, align 8
@kdb_active = common dso_local global i64 0, align 8
@kdb_why = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i64, i64, %struct.thread*, %struct.ksig*)* @dab_fatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dab_fatal(%struct.trapframe* %0, i64 %1, i64 %2, %struct.thread* %3, %struct.ksig* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ksig*, align 8
  %12 = alloca i8*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.thread* %3, %struct.thread** %10, align 8
  store %struct.ksig* %4, %struct.ksig** %11, align 8
  %13 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %14 = call i64 @TRAP_USERMODE(%struct.trapframe* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %12, align 8
  %18 = load i32, i32* @PSR_I, align 4
  %19 = load i32, i32* @PSR_F, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @disable_interrupts(i32 %20)
  %22 = load %struct.thread*, %struct.thread** %10, align 8
  %23 = icmp ne %struct.thread* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %5
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data_aborts, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @FAULT_TYPE_MASK, align 8
  %29 = and i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %32)
  %34 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.trapframe* %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @FAULT_IMPRECISE, align 8
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i64, i64* %9, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  br label %46

44:                                               ; preds = %24
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %49)
  br label %62

51:                                               ; preds = %5
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %52, i32 %55)
  %57 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %58 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.trapframe* %57, i64 %60)
  br label %62

62:                                               ; preds = %51, %46
  %63 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %80 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %83 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %99 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %103 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %102, i32 0, i32 14
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %104)
  %106 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %107 = call i64 @TRAP_USERMODE(%struct.trapframe* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %62
  %110 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %111 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %110, i32 0, i32 15
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %114 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %113, i32 0, i32 16
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %112, i32 %115)
  br label %125

117:                                              ; preds = %62
  %118 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 17
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %122 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %121, i32 0, i32 18
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %109
  %126 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %127 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %128)
  %130 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i64 @TRAP_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
