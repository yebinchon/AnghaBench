; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32, i64, i64, %struct.intrupt*, i32 }
%struct.intrupt = type { i32 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_fifo = common dso_local global i32 0, align 4
@com_ier = common dso_local global i32 0, align 4
@com_mcr = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Serial input overruns occurred.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"This system %s handle %d baud.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cannot\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"needs a 16550 to\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial*)* @dos_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos_close(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca %struct.dos_ttystate*, align 8
  %4 = alloca %struct.intrupt*, align 8
  store %struct.serial* %0, %struct.serial** %2, align 8
  %5 = load %struct.serial*, %struct.serial** %2, align 8
  %6 = icmp ne %struct.serial* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %62

8:                                                ; preds = %1
  %9 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %10 = load %struct.serial*, %struct.serial** %2, align 8
  %11 = getelementptr inbounds %struct.serial, %struct.serial* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %9, i64 %12
  store %struct.dos_ttystate* %13, %struct.dos_ttystate** %3, align 8
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %15 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = icmp sgt i32 %16, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %62

20:                                               ; preds = %8
  %21 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %22 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %21, i32 0, i32 3
  %23 = load %struct.intrupt*, %struct.intrupt** %22, align 8
  store %struct.intrupt* %23, %struct.intrupt** %4, align 8
  %24 = icmp ne %struct.intrupt* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %62

26:                                               ; preds = %20
  %27 = call i32 (...) @disable()
  %28 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %29 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %28, i32 0, i32 3
  store %struct.intrupt* null, %struct.intrupt** %29, align 8
  %30 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %31 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %33 = load i32, i32* @com_fifo, align 4
  %34 = call i32 @outb(%struct.dos_ttystate* %32, i32 %33, i32 0)
  %35 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %36 = load i32, i32* @com_ier, align 4
  %37 = call i32 @outb(%struct.dos_ttystate* %35, i32 %36, i32 0)
  %38 = call i32 (...) @enable()
  %39 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %40 = call i32 @dos_unhookirq(%struct.intrupt* %39)
  %41 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %42 = load i32, i32* @com_mcr, align 4
  %43 = call i32 @outb(%struct.dos_ttystate* %41, i32 %42, i32 0)
  %44 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %45 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %26
  %49 = load i32, i32* @gdb_stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @gdb_stderr, align 4
  %52 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %53 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  %58 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %59 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %7, %19, %25, %48, %26
  ret void
}

declare dso_local i32 @disable(...) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i32) #1

declare dso_local i32 @enable(...) #1

declare dso_local i32 @dos_unhookirq(%struct.intrupt*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
