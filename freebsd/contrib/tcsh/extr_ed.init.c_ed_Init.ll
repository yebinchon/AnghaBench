; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_ed_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_ed_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@GettingInput = common dso_local global i64 0, align 8
@GotTermCaps = common dso_local global i32 0, align 4
@T_Tabs = common dso_local global i64 0, align 8
@ttylist = common dso_local global %struct.TYPE_7__** null, align 8
@ED_IO = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@XTABS = common dso_local global i32 0, align 4
@edtty = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@M_LOCAL = common dso_local global i64 0, align 8
@ttychars = common dso_local global i32* null, align 8
@KillPos = common dso_local global i64 0, align 8
@KillRing = common dso_local global %struct.TYPE_9__* null, align 8
@KillRingLen = common dso_local global i64 0, align 8
@KillRingMax = common dso_local global i32 0, align 4
@M_INPUT = common dso_local global i64 0, align 8
@M_LINED = common dso_local global i64 0, align 8
@M_OUTPUT = common dso_local global i64 0, align 8
@NTTYDISC = common dso_local global i32 0, align 4
@YankPos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ed_Init() #0 {
  %1 = call i32 @ResetInLine(i32 1)
  store i64 0, i64* @GettingInput, align 8
  %2 = call i32 @ed_Setup(i32 0)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %88

5:                                                ; preds = %0
  %6 = load i32, i32* @GotTermCaps, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @GetTermCaps()
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i64, i64* @T_Tabs, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %15 = load i64, i64* @ED_IO, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 %15
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load i64, i64* @M_CONTROL, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XTABS, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %28 = load i64, i64* @ED_IO, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* @M_CONTROL, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  br label %61

37:                                               ; preds = %10
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %39 = load i64, i64* @ED_IO, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i64, i64* @M_CONTROL, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %50 = load i64, i64* @ED_IO, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* @M_CONTROL, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @XTABS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 1, i32 4), align 4
  br label %61

61:                                               ; preds = %37, %13
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %63 = load i64, i64* @ED_IO, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i64, i64* @M_LOCAL, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 0), align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 0), align 4
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %74 = load i64, i64* @ED_IO, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* @M_LOCAL, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 0), align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @edtty, i32 0, i32 0), align 4
  %83 = load i32*, i32** @ttychars, align 8
  %84 = load i64, i64* @ED_IO, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tty_setchar(%struct.TYPE_8__* @edtty, i32 %86)
  br label %88

88:                                               ; preds = %61, %4
  ret void
}

declare dso_local i32 @ResetInLine(i32) #1

declare dso_local i32 @ed_Setup(i32) #1

declare dso_local i32 @GetTermCaps(...) #1

declare dso_local i32 @tty_setchar(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
