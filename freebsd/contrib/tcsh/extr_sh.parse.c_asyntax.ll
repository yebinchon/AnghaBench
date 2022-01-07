; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_asyntax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_asyntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { %struct.wordent*, i32* }

@.str = private unnamed_addr constant [4 x i8] c";&\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wordent*, %struct.wordent*)* @asyntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyntax(%struct.wordent* %0, %struct.wordent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %4, align 8
  store %struct.wordent* %1, %struct.wordent** %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.wordent*, %struct.wordent** %4, align 8
  %8 = load %struct.wordent*, %struct.wordent** %5, align 8
  %9 = icmp ne %struct.wordent* %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.wordent*, %struct.wordent** %4, align 8
  %12 = getelementptr inbounds %struct.wordent, %struct.wordent* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @any(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load %struct.wordent*, %struct.wordent** %4, align 8
  %20 = load %struct.wordent*, %struct.wordent** %5, align 8
  %21 = call i32 @asyn0(%struct.wordent* %19, %struct.wordent* %20)
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %10
  %23 = load %struct.wordent*, %struct.wordent** %4, align 8
  %24 = getelementptr inbounds %struct.wordent, %struct.wordent* %23, i32 0, i32 0
  %25 = load %struct.wordent*, %struct.wordent** %24, align 8
  store %struct.wordent* %25, %struct.wordent** %4, align 8
  br label %6

26:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @any(i8*, i32) #1

declare dso_local i32 @asyn0(%struct.wordent*, %struct.wordent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
