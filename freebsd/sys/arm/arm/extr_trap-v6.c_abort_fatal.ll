; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v6.c_abort_fatal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v6.c_abort_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.ksig = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@FSR_WNR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Fatal %s mode data abort: '%s' on %s\0A\00", align 1
@aborts = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"trapframe: %p\0AFSR=%08x, FAR=\00", align 1
@FAULT_EA_IMPREC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%08x, \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Invalid,  \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"spsr=%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Fatal %s mode prefetch abort at 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"trapframe: %p, spsr=%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"r0 =%08x, r1 =%08x, r2 =%08x, r3 =%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"r4 =%08x, r5 =%08x, r6 =%08x, r7 =%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"r8 =%08x, r9 =%08x, r10=%08x, r11=%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"r12=%08x, \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"usp=%08x, ulr=%08x\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"ssp=%08x, slr=%08x\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c", pc =%08x\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Fatal abort\00", align 1
@KDB_WHY_TRAP = common dso_local global i32 0, align 4
@KDB_WHY_UNSET = common dso_local global i32 0, align 4
@debugger_on_trap = common dso_local global i64 0, align 8
@kdb_why = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32, i32, i32, i32, %struct.thread*, %struct.ksig*)* @abort_fatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_fatal(%struct.trapframe* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.thread* %5, %struct.ksig* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.ksig*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.thread* %5, %struct.thread** %14, align 8
  store %struct.ksig* %6, %struct.ksig** %15, align 8
  %19 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %20 = call i32 @TRAPF_USERMODE(%struct.trapframe* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %24, i8** %17, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @FSR_WNR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  store i8* %30, i8** %18, align 8
  %31 = load i32, i32* @PSR_I, align 4
  %32 = load i32, i32* @PSR_F, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @disable_interrupts(i32 %33)
  %35 = load %struct.thread*, %struct.thread** %14, align 8
  %36 = icmp ne %struct.thread* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %7
  %38 = load i8*, i8** %17, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aborts, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %38, i8* %44, i8* %45)
  %47 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), %struct.trapframe* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @FAULT_EA_IMPREC, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  br label %58

56:                                               ; preds = %37
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  br label %74

63:                                               ; preds = %7
  %64 = load i8*, i8** %17, align 8
  %65 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %64, i32 %67)
  %69 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), %struct.trapframe* %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %82 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %77, i32 %80, i32 %83, i32 %86)
  %88 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %92 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %98 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99)
  %101 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %102 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %111 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %115 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %114, i32 0, i32 14
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %74
  %121 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %122 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %121, i32 0, i32 15
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %125 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %123, i32 %126)
  br label %136

128:                                              ; preds = %74
  %129 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %130 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %129, i32 0, i32 17
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %133 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %132, i32 0, i32 18
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %120
  %137 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %138 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %139)
  %141 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
