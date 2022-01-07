; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1a.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, %struct.command*, %struct.command*, i32 }
%struct.wordent = type { i32*, %struct.wordent* }

@NODE_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn1a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn1a(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca %struct.command*, align 8
  %10 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %5, align 8
  store %struct.wordent* %1, %struct.wordent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.wordent*, %struct.wordent** %5, align 8
  store %struct.wordent* %11, %struct.wordent** %8, align 8
  br label %12

12:                                               ; preds = %64, %3
  %13 = load %struct.wordent*, %struct.wordent** %8, align 8
  %14 = load %struct.wordent*, %struct.wordent** %6, align 8
  %15 = icmp ne %struct.wordent* %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = load %struct.wordent*, %struct.wordent** %8, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %62 [
    i32 40, label %22
    i32 41, label %25
    i32 124, label %28
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %64

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  br label %64

28:                                               ; preds = %16
  %29 = load %struct.wordent*, %struct.wordent** %8, align 8
  %30 = getelementptr inbounds %struct.wordent, %struct.wordent* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 124
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %64

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = call %struct.command* @xcalloc(i32 1, i32 32)
  store %struct.command* %40, %struct.command** %9, align 8
  %41 = load i32, i32* @NODE_OR, align 4
  %42 = load %struct.command*, %struct.command** %9, align 8
  %43 = getelementptr inbounds %struct.command, %struct.command* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.wordent*, %struct.wordent** %5, align 8
  %45 = load %struct.wordent*, %struct.wordent** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.command* @syn1b(%struct.wordent* %44, %struct.wordent* %45, i32 %46)
  %48 = load %struct.command*, %struct.command** %9, align 8
  %49 = getelementptr inbounds %struct.command, %struct.command* %48, i32 0, i32 2
  store %struct.command* %47, %struct.command** %49, align 8
  %50 = load %struct.wordent*, %struct.wordent** %8, align 8
  %51 = getelementptr inbounds %struct.wordent, %struct.wordent* %50, i32 0, i32 1
  %52 = load %struct.wordent*, %struct.wordent** %51, align 8
  %53 = load %struct.wordent*, %struct.wordent** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.command* @syn1a(%struct.wordent* %52, %struct.wordent* %53, i32 %54)
  %56 = load %struct.command*, %struct.command** %9, align 8
  %57 = getelementptr inbounds %struct.command, %struct.command* %56, i32 0, i32 1
  store %struct.command* %55, %struct.command** %57, align 8
  %58 = load %struct.command*, %struct.command** %9, align 8
  %59 = getelementptr inbounds %struct.command, %struct.command* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %60, %struct.command** %4, align 8
  br label %73

61:                                               ; preds = %36
  br label %64

62:                                               ; preds = %16
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %61, %35, %25, %22
  %65 = load %struct.wordent*, %struct.wordent** %8, align 8
  %66 = getelementptr inbounds %struct.wordent, %struct.wordent* %65, i32 0, i32 1
  %67 = load %struct.wordent*, %struct.wordent** %66, align 8
  store %struct.wordent* %67, %struct.wordent** %8, align 8
  br label %12

68:                                               ; preds = %12
  %69 = load %struct.wordent*, %struct.wordent** %5, align 8
  %70 = load %struct.wordent*, %struct.wordent** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.command* @syn1b(%struct.wordent* %69, %struct.wordent* %70, i32 %71)
  store %struct.command* %72, %struct.command** %4, align 8
  br label %73

73:                                               ; preds = %68, %39
  %74 = load %struct.command*, %struct.command** %4, align 8
  ret %struct.command* %74
}

declare dso_local %struct.command* @xcalloc(i32, i32) #1

declare dso_local %struct.command* @syn1b(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
