; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { %struct.command*, %struct.command*, i32, i32 }
%struct.wordent = type { i32*, %struct.wordent* }

@P_OUT = common dso_local global i32 0, align 4
@P_DIAG = common dso_local global i32 0, align 4
@F_STDERR = common dso_local global i32 0, align 4
@NODE_PIPE = common dso_local global i32 0, align 4
@P_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn2(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca %struct.wordent*, align 8
  %10 = alloca %struct.command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %5, align 8
  store %struct.wordent* %1, %struct.wordent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.wordent*, %struct.wordent** %5, align 8
  store %struct.wordent* %13, %struct.wordent** %8, align 8
  br label %14

14:                                               ; preds = %97, %3
  %15 = load %struct.wordent*, %struct.wordent** %8, align 8
  %16 = load %struct.wordent*, %struct.wordent** %6, align 8
  %17 = icmp ne %struct.wordent* %15, %16
  br i1 %17, label %18, label %101

18:                                               ; preds = %14
  %19 = load %struct.wordent*, %struct.wordent** %8, align 8
  %20 = getelementptr inbounds %struct.wordent, %struct.wordent* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %95 [
    i32 40, label %24
    i32 41, label %27
    i32 124, label %30
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %97

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %11, align 4
  br label %97

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %97

34:                                               ; preds = %30
  %35 = call %struct.command* @xcalloc(i32 1, i32 24)
  store %struct.command* %35, %struct.command** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @P_OUT, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.wordent*, %struct.wordent** %8, align 8
  %40 = getelementptr inbounds %struct.wordent, %struct.wordent* %39, i32 0, i32 1
  %41 = load %struct.wordent*, %struct.wordent** %40, align 8
  store %struct.wordent* %41, %struct.wordent** %9, align 8
  %42 = load %struct.wordent*, %struct.wordent** %9, align 8
  %43 = load %struct.wordent*, %struct.wordent** %6, align 8
  %44 = icmp ne %struct.wordent* %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %struct.wordent*, %struct.wordent** %9, align 8
  %47 = getelementptr inbounds %struct.wordent, %struct.wordent* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 38
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @P_DIAG, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @F_STDERR, align 4
  %57 = load %struct.command*, %struct.command** %10, align 8
  %58 = getelementptr inbounds %struct.command, %struct.command* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %45, %34
  %62 = load i32, i32* @NODE_PIPE, align 4
  %63 = load %struct.command*, %struct.command** %10, align 8
  %64 = getelementptr inbounds %struct.command, %struct.command* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.wordent*, %struct.wordent** %5, align 8
  %66 = load %struct.wordent*, %struct.wordent** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call %struct.command* @syn3(%struct.wordent* %65, %struct.wordent* %66, i32 %67)
  %69 = load %struct.command*, %struct.command** %10, align 8
  %70 = getelementptr inbounds %struct.command, %struct.command* %69, i32 0, i32 1
  store %struct.command* %68, %struct.command** %70, align 8
  %71 = load %struct.wordent*, %struct.wordent** %9, align 8
  %72 = load %struct.wordent*, %struct.wordent** %6, align 8
  %73 = icmp ne %struct.wordent* %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %61
  %75 = load %struct.wordent*, %struct.wordent** %9, align 8
  %76 = getelementptr inbounds %struct.wordent, %struct.wordent* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 38
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load %struct.wordent*, %struct.wordent** %9, align 8
  store %struct.wordent* %82, %struct.wordent** %8, align 8
  br label %83

83:                                               ; preds = %81, %74, %61
  %84 = load %struct.wordent*, %struct.wordent** %8, align 8
  %85 = getelementptr inbounds %struct.wordent, %struct.wordent* %84, i32 0, i32 1
  %86 = load %struct.wordent*, %struct.wordent** %85, align 8
  %87 = load %struct.wordent*, %struct.wordent** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @P_IN, align 4
  %90 = or i32 %88, %89
  %91 = call %struct.command* @syn2(%struct.wordent* %86, %struct.wordent* %87, i32 %90)
  %92 = load %struct.command*, %struct.command** %10, align 8
  %93 = getelementptr inbounds %struct.command, %struct.command* %92, i32 0, i32 0
  store %struct.command* %91, %struct.command** %93, align 8
  %94 = load %struct.command*, %struct.command** %10, align 8
  store %struct.command* %94, %struct.command** %4, align 8
  br label %106

95:                                               ; preds = %18
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %33, %27, %24
  %98 = load %struct.wordent*, %struct.wordent** %8, align 8
  %99 = getelementptr inbounds %struct.wordent, %struct.wordent* %98, i32 0, i32 1
  %100 = load %struct.wordent*, %struct.wordent** %99, align 8
  store %struct.wordent* %100, %struct.wordent** %8, align 8
  br label %14

101:                                              ; preds = %14
  %102 = load %struct.wordent*, %struct.wordent** %5, align 8
  %103 = load %struct.wordent*, %struct.wordent** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call %struct.command* @syn3(%struct.wordent* %102, %struct.wordent* %103, i32 %104)
  store %struct.command* %105, %struct.command** %4, align 8
  br label %106

106:                                              ; preds = %101, %83
  %107 = load %struct.command*, %struct.command** %4, align 8
  ret %struct.command* %107
}

declare dso_local %struct.command* @xcalloc(i32, i32) #1

declare dso_local %struct.command* @syn3(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
