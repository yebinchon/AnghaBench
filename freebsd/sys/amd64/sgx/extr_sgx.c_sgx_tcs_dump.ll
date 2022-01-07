; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_tcs_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_tcs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32 }
%struct.tcs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"t->flags %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"t->ossa %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"t->cssa %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"t->nssa %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"t->oentry %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"t->ofsbasgx %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"t->ogsbasgx %lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"t->fslimit %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"t->gslimit %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgx_softc*, %struct.tcs*)* @sgx_tcs_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgx_tcs_dump(%struct.sgx_softc* %0, %struct.tcs* %1) #0 {
  %3 = alloca %struct.sgx_softc*, align 8
  %4 = alloca %struct.tcs*, align 8
  store %struct.sgx_softc* %0, %struct.sgx_softc** %3, align 8
  store %struct.tcs* %1, %struct.tcs** %4, align 8
  %5 = load %struct.tcs*, %struct.tcs** %4, align 8
  %6 = getelementptr inbounds %struct.tcs, %struct.tcs* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.tcs*, %struct.tcs** %4, align 8
  %10 = getelementptr inbounds %struct.tcs, %struct.tcs* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.tcs*, %struct.tcs** %4, align 8
  %14 = getelementptr inbounds %struct.tcs, %struct.tcs* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.tcs*, %struct.tcs** %4, align 8
  %18 = getelementptr inbounds %struct.tcs, %struct.tcs* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load %struct.tcs*, %struct.tcs** %4, align 8
  %22 = getelementptr inbounds %struct.tcs, %struct.tcs* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load %struct.tcs*, %struct.tcs** %4, align 8
  %26 = getelementptr inbounds %struct.tcs, %struct.tcs* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load %struct.tcs*, %struct.tcs** %4, align 8
  %30 = getelementptr inbounds %struct.tcs, %struct.tcs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load %struct.tcs*, %struct.tcs** %4, align 8
  %34 = getelementptr inbounds %struct.tcs, %struct.tcs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = load %struct.tcs*, %struct.tcs** %4, align 8
  %38 = getelementptr inbounds %struct.tcs, %struct.tcs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  ret void
}

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
