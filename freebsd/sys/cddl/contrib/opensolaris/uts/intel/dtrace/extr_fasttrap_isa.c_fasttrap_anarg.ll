; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_anarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_anarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.reg = type { i64, i32, i32, i32, i32, i32, i32 }

@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@DATAMODEL_LP64 = common dso_local global i64 0, align 8
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reg*, i32, i32)* @fasttrap_anarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_anarg(%struct.reg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.reg* %0, %struct.reg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DATAMODEL_LP64, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %50 [
    i32 0, label %26
    i32 1, label %30
    i32 2, label %34
    i32 3, label %38
    i32 4, label %42
    i32 5, label %46
  ]

26:                                               ; preds = %24
  %27 = load %struct.reg*, %struct.reg** %5, align 8
  %28 = getelementptr inbounds %struct.reg, %struct.reg* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %24
  %31 = load %struct.reg*, %struct.reg** %5, align 8
  %32 = getelementptr inbounds %struct.reg, %struct.reg* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  br label %90

34:                                               ; preds = %24
  %35 = load %struct.reg*, %struct.reg** %5, align 8
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %90

38:                                               ; preds = %24
  %39 = load %struct.reg*, %struct.reg** %5, align 8
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %24
  %43 = load %struct.reg*, %struct.reg** %5, align 8
  %44 = getelementptr inbounds %struct.reg, %struct.reg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %90

46:                                               ; preds = %24
  %47 = load %struct.reg*, %struct.reg** %5, align 8
  %48 = getelementptr inbounds %struct.reg, %struct.reg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %4, align 4
  br label %90

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.reg*, %struct.reg** %5, align 8
  %53 = getelementptr inbounds %struct.reg, %struct.reg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %10, align 8
  %56 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %57 = call i32 @DTRACE_CPUFLAG_SET(i32 %56)
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 6
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  %65 = call i32 @dtrace_fulword(i64* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %67 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %68)
  br label %88

70:                                               ; preds = %3
  %71 = load %struct.reg*, %struct.reg** %5, align 8
  %72 = getelementptr inbounds %struct.reg, %struct.reg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %76 = call i32 @DTRACE_CPUFLAG_SET(i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = call i32 @dtrace_fuword32(i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %85 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %86)
  br label %88

88:                                               ; preds = %70, %51
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %46, %42, %38, %34, %30, %26
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_fulword(i64*) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local i32 @dtrace_fuword32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
