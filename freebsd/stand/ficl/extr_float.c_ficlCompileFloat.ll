; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_float.c_ficlCompileFloat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_float.c_ficlCompileFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@EDot = common dso_local global i32 0, align 4
@FDot = common dso_local global i32 0, align 4
@FFrom = common dso_local global i32 0, align 4
@FICL_DEFAULT_STACK = common dso_local global i32 0, align 4
@FICL_FALSE = common dso_local global i32 0, align 4
@FW_COMPILE = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@FW_IMMEDIATE = common dso_local global i32 0, align 4
@Fadd = common dso_local global i32 0, align 4
@Faddi = common dso_local global i32 0, align 4
@Fconstant = common dso_local global i32 0, align 4
@Fdepth = common dso_local global i32 0, align 4
@Fdiv = common dso_local global i32 0, align 4
@Fdivi = common dso_local global i32 0, align 4
@Fdrop = common dso_local global i32 0, align 4
@Fdup = common dso_local global i32 0, align 4
@Ffetch = common dso_local global i32 0, align 4
@FisEqual = common dso_local global i32 0, align 4
@FisGreater = common dso_local global i32 0, align 4
@FisLess = common dso_local global i32 0, align 4
@FminusRoll = common dso_local global i32 0, align 4
@Fminusrot = common dso_local global i32 0, align 4
@Fmul = common dso_local global i32 0, align 4
@Fmuli = common dso_local global i32 0, align 4
@Fnegate = common dso_local global i32 0, align 4
@Fover = common dso_local global i32 0, align 4
@Fpick = common dso_local global i32 0, align 4
@FplusStore = common dso_local global i32 0, align 4
@FquestionDup = common dso_local global i32 0, align 4
@Froll = common dso_local global i32 0, align 4
@Frot = common dso_local global i32 0, align 4
@Fstore = common dso_local global i32 0, align 4
@Fsub = common dso_local global i32 0, align 4
@Fsubi = common dso_local global i32 0, align 4
@Fswap = common dso_local global i32 0, align 4
@Ftoi = common dso_local global i32 0, align 4
@FtwoDrop = common dso_local global i32 0, align 4
@FtwoDup = common dso_local global i32 0, align 4
@FtwoOver = common dso_local global i32 0, align 4
@FtwoSwap = common dso_local global i32 0, align 4
@FzeroEquals = common dso_local global i32 0, align 4
@FzeroGreater = common dso_local global i32 0, align 4
@FzeroLess = common dso_local global i32 0, align 4
@ToF = common dso_local global i32 0, align 4
@displayFStack = common dso_local global i32 0, align 4
@fliteralIm = common dso_local global i32 0, align 4
@fliteralParen = common dso_local global i32 0, align 4
@idivf = common dso_local global i32 0, align 4
@isubf = common dso_local global i32 0, align 4
@itof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlCompileFloat(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @assert(i32* %7)
  ret void
}

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
