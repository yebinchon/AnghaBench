; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospnp.c_biospnp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospnp.c_biospnp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_ICstructure = type { i32 }
%struct.pnp_isaConfiguration = type { i32, i32, i32 }

@pnp_Icheck = common dso_local global %struct.pnp_ICstructure* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"$PnP\00", align 1
@pnp_NumNodes = common dso_local global %struct.pnp_isaConfiguration zeroinitializer, align 4
@pnp_NodeSize = common dso_local global %struct.pnp_isaConfiguration zeroinitializer, align 4
@isapnp_readport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PnP BIOS claims no ISA bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @biospnp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biospnp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pnp_isaConfiguration, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.pnp_ICstructure* null, %struct.pnp_ICstructure** @pnp_Icheck, align 8
  %5 = call i8* @PTOV(i32 983040)
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @PTOV(i32 1048575)
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @bcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.pnp_ICstructure*
  store %struct.pnp_ICstructure* %16, %struct.pnp_ICstructure** @pnp_Icheck, align 8
  br label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 16
  store i8* %20, i8** %3, align 8
  br label %6

21:                                               ; preds = %14, %6
  %22 = load %struct.pnp_ICstructure*, %struct.pnp_ICstructure** @pnp_Icheck, align 8
  %23 = icmp eq %struct.pnp_ICstructure* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %51

25:                                               ; preds = %21
  %26 = call i32 @vsegofs(%struct.pnp_isaConfiguration* @pnp_NumNodes)
  %27 = call i32 @vsegofs(%struct.pnp_isaConfiguration* @pnp_NodeSize)
  %28 = call i32 @biospnp_f00(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %51

32:                                               ; preds = %25
  %33 = call i32 @vsegofs(%struct.pnp_isaConfiguration* %2)
  %34 = call i32 @biospnp_f40(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 129, label %48
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.pnp_isaConfiguration, %struct.pnp_isaConfiguration* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pnp_isaConfiguration, %struct.pnp_isaConfiguration* %2, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.pnp_isaConfiguration, %struct.pnp_isaConfiguration* %2, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @isapnp_readport, align 4
  br label %47

47:                                               ; preds = %44, %40, %36
  br label %50

48:                                               ; preds = %32
  %49 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @isapnp_readport, align 4
  br label %50

50:                                               ; preds = %32, %48, %47
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %31, %24
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i8* @PTOV(i32) #1

declare dso_local i32 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @biospnp_f00(i32, i32) #1

declare dso_local i32 @vsegofs(%struct.pnp_isaConfiguration*) #1

declare dso_local i32 @biospnp_f40(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
