; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32 }
%struct.ctl_io_pool = type { i32, i32, %struct.ctl_softc* }

@M_CTL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CTL IO %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_pool_create(%struct.ctl_softc* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.ctl_io_pool*, align 8
  store %struct.ctl_softc* %0, %struct.ctl_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %11 = load i32, i32* @M_CTL, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @malloc(i32 16, i32 %11, i32 %14)
  %16 = inttoptr i64 %15 to %struct.ctl_io_pool*
  store %struct.ctl_io_pool* %16, %struct.ctl_io_pool** %10, align 8
  %17 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %10, align 8
  %18 = icmp eq %struct.ctl_io_pool* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %10, align 8
  %23 = getelementptr inbounds %struct.ctl_io_pool, %struct.ctl_io_pool* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %28 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %10, align 8
  %29 = getelementptr inbounds %struct.ctl_io_pool, %struct.ctl_io_pool* %28, i32 0, i32 2
  store %struct.ctl_softc* %27, %struct.ctl_softc** %29, align 8
  %30 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %10, align 8
  %34 = getelementptr inbounds %struct.ctl_io_pool, %struct.ctl_io_pool* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %10, align 8
  %36 = bitcast %struct.ctl_io_pool* %35 to i8*
  %37 = load i8**, i8*** %9, align 8
  store i8* %36, i8** %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %21, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
