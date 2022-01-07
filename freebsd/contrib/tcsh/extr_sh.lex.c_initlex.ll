; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_initlex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_initlex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { %struct.wordent*, %struct.wordent*, i32 }

@STRNULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initlex(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %2, align 8
  %3 = load i32, i32* @STRNULL, align 4
  %4 = load %struct.wordent*, %struct.wordent** %2, align 8
  %5 = getelementptr inbounds %struct.wordent, %struct.wordent* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load %struct.wordent*, %struct.wordent** %2, align 8
  %7 = load %struct.wordent*, %struct.wordent** %2, align 8
  %8 = getelementptr inbounds %struct.wordent, %struct.wordent* %7, i32 0, i32 1
  store %struct.wordent* %6, %struct.wordent** %8, align 8
  %9 = load %struct.wordent*, %struct.wordent** %2, align 8
  %10 = load %struct.wordent*, %struct.wordent** %2, align 8
  %11 = getelementptr inbounds %struct.wordent, %struct.wordent* %10, i32 0, i32 0
  store %struct.wordent* %9, %struct.wordent** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
