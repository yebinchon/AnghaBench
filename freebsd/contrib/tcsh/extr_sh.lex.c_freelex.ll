; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_freelex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_freelex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { %struct.wordent*, %struct.wordent*, %struct.wordent* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freelex(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.wordent*, %struct.wordent** %2, align 8
  %6 = getelementptr inbounds %struct.wordent, %struct.wordent* %5, i32 0, i32 2
  %7 = load %struct.wordent*, %struct.wordent** %6, align 8
  %8 = load %struct.wordent*, %struct.wordent** %2, align 8
  %9 = icmp ne %struct.wordent* %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load %struct.wordent*, %struct.wordent** %2, align 8
  %12 = getelementptr inbounds %struct.wordent, %struct.wordent* %11, i32 0, i32 2
  %13 = load %struct.wordent*, %struct.wordent** %12, align 8
  store %struct.wordent* %13, %struct.wordent** %3, align 8
  %14 = load %struct.wordent*, %struct.wordent** %3, align 8
  %15 = getelementptr inbounds %struct.wordent, %struct.wordent* %14, i32 0, i32 2
  %16 = load %struct.wordent*, %struct.wordent** %15, align 8
  %17 = load %struct.wordent*, %struct.wordent** %2, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 2
  store %struct.wordent* %16, %struct.wordent** %18, align 8
  %19 = load %struct.wordent*, %struct.wordent** %3, align 8
  %20 = getelementptr inbounds %struct.wordent, %struct.wordent* %19, i32 0, i32 1
  %21 = load %struct.wordent*, %struct.wordent** %20, align 8
  %22 = call i32 @xfree(%struct.wordent* %21)
  %23 = load %struct.wordent*, %struct.wordent** %3, align 8
  %24 = call i32 @xfree(%struct.wordent* %23)
  br label %4

25:                                               ; preds = %4
  %26 = load %struct.wordent*, %struct.wordent** %2, align 8
  %27 = load %struct.wordent*, %struct.wordent** %2, align 8
  %28 = getelementptr inbounds %struct.wordent, %struct.wordent* %27, i32 0, i32 0
  store %struct.wordent* %26, %struct.wordent** %28, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.wordent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
