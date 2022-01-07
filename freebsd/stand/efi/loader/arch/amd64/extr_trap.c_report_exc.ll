; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_report_exc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_report_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Exception %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"ss 0x%04hx cs 0x%04hx ds 0x%04hx es 0x%04hx fs 0x%04hx gs 0x%04hx\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"err 0x%08x rfl 0x%08x addr 0x%016lx\0Arsp 0x%016lx rip 0x%016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [196 x i8] c"rdi 0x%016lx rsi 0x%016lx rdx 0x%016lx\0Arcx 0x%016lx r8  0x%016lx r9  0x%016lx\0Arax 0x%016lx rbx 0x%016lx rbp 0x%016lx\0Ar10 0x%016lx r11 0x%016lx r12 0x%016lx\0Ar13 0x%016lx r14 0x%016lx r15 0x%016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Machine stopped.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_exc(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %5 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %9 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %8, i32 0, i32 26
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 25
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 24
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 23
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %25 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %24, i32 0, i32 22
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 21
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31)
  %33 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 17
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 16
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 20
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 18
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %82 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %88 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %91 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %94 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
