; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_padd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_padd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i32, i32*, i32*, %struct.command*, %struct.command*, i32**, %struct.command* }

@STRLparensp = common dso_local global i32* null, align 8
@STRspRparen = common dso_local global i32* null, align 8
@STRspace = common dso_local global i32* null, align 8
@STRspor2sp = common dso_local global i32* null, align 8
@STRspand2sp = common dso_local global i32* null, align 8
@STRsporsp = common dso_local global i32* null, align 8
@STRsemisp = common dso_local global i32* null, align 8
@F_PIPEIN = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@STRspLarrow2sp = common dso_local global i32* null, align 8
@STRspLarrowsp = common dso_local global i32* null, align 8
@F_PIPEOUT = common dso_local global i32 0, align 4
@F_APPEND = common dso_local global i32 0, align 4
@STRspRarrow2 = common dso_local global i32* null, align 8
@STRspRarrow = common dso_local global i32* null, align 8
@F_STDERR = common dso_local global i32 0, align 4
@STRand = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*)* @padd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padd(%struct.command* %0) #0 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca i32**, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  %4 = load %struct.command*, %struct.command** %2, align 8
  %5 = icmp eq %struct.command* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %140

7:                                                ; preds = %1
  %8 = load %struct.command*, %struct.command** %2, align 8
  %9 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %67 [
    i32 129, label %11
    i32 132, label %19
    i32 130, label %43
    i32 133, label %43
    i32 128, label %43
    i32 131, label %43
  ]

11:                                               ; preds = %7
  %12 = load i32*, i32** @STRLparensp, align 8
  %13 = call i32 @pads(i32* %12)
  %14 = load %struct.command*, %struct.command** %2, align 8
  %15 = getelementptr inbounds %struct.command, %struct.command* %14, i32 0, i32 7
  %16 = load %struct.command*, %struct.command** %15, align 8
  call void @padd(%struct.command* %16)
  %17 = load i32*, i32** @STRspRparen, align 8
  %18 = call i32 @pads(i32* %17)
  br label %68

19:                                               ; preds = %7
  %20 = load %struct.command*, %struct.command** %2, align 8
  %21 = getelementptr inbounds %struct.command, %struct.command* %20, i32 0, i32 6
  %22 = load i32**, i32*** %21, align 8
  store i32** %22, i32*** %3, align 8
  br label %23

23:                                               ; preds = %39, %19
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32**, i32*** %3, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @pads(i32* %29)
  %31 = load i32**, i32*** %3, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** @STRspace, align 8
  %37 = call i32 @pads(i32* %36)
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32**, i32*** %3, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i32 1
  store i32** %41, i32*** %3, align 8
  br label %23

42:                                               ; preds = %23
  br label %68

43:                                               ; preds = %7, %7, %7, %7
  %44 = load %struct.command*, %struct.command** %2, align 8
  %45 = getelementptr inbounds %struct.command, %struct.command* %44, i32 0, i32 5
  %46 = load %struct.command*, %struct.command** %45, align 8
  call void @padd(%struct.command* %46)
  %47 = load %struct.command*, %struct.command** %2, align 8
  %48 = getelementptr inbounds %struct.command, %struct.command* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %62 [
    i32 130, label %50
    i32 133, label %53
    i32 128, label %56
    i32 131, label %59
  ]

50:                                               ; preds = %43
  %51 = load i32*, i32** @STRspor2sp, align 8
  %52 = call i32 @pads(i32* %51)
  br label %63

53:                                               ; preds = %43
  %54 = load i32*, i32** @STRspand2sp, align 8
  %55 = call i32 @pads(i32* %54)
  br label %63

56:                                               ; preds = %43
  %57 = load i32*, i32** @STRsporsp, align 8
  %58 = call i32 @pads(i32* %57)
  br label %63

59:                                               ; preds = %43
  %60 = load i32*, i32** @STRsemisp, align 8
  %61 = call i32 @pads(i32* %60)
  br label %63

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %59, %56, %53, %50
  %64 = load %struct.command*, %struct.command** %2, align 8
  %65 = getelementptr inbounds %struct.command, %struct.command* %64, i32 0, i32 4
  %66 = load %struct.command*, %struct.command** %65, align 8
  call void @padd(%struct.command* %66)
  br label %140

67:                                               ; preds = %7
  br label %68

68:                                               ; preds = %67, %42, %11
  %69 = load %struct.command*, %struct.command** %2, align 8
  %70 = getelementptr inbounds %struct.command, %struct.command* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @F_PIPEIN, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load %struct.command*, %struct.command** %2, align 8
  %77 = getelementptr inbounds %struct.command, %struct.command* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.command*, %struct.command** %2, align 8
  %82 = getelementptr inbounds %struct.command, %struct.command* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @F_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32*, i32** @STRspLarrow2sp, align 8
  br label %91

89:                                               ; preds = %80
  %90 = load i32*, i32** @STRspLarrowsp, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32* [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @pads(i32* %92)
  %94 = load %struct.command*, %struct.command** %2, align 8
  %95 = getelementptr inbounds %struct.command, %struct.command* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @pads(i32* %96)
  br label %98

98:                                               ; preds = %91, %75, %68
  %99 = load %struct.command*, %struct.command** %2, align 8
  %100 = getelementptr inbounds %struct.command, %struct.command* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @F_PIPEOUT, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %98
  %106 = load %struct.command*, %struct.command** %2, align 8
  %107 = getelementptr inbounds %struct.command, %struct.command* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %140

110:                                              ; preds = %105
  %111 = load %struct.command*, %struct.command** %2, align 8
  %112 = getelementptr inbounds %struct.command, %struct.command* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @F_APPEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32*, i32** @STRspRarrow2, align 8
  br label %121

119:                                              ; preds = %110
  %120 = load i32*, i32** @STRspRarrow, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @pads(i32* %122)
  %124 = load %struct.command*, %struct.command** %2, align 8
  %125 = getelementptr inbounds %struct.command, %struct.command* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @F_STDERR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32*, i32** @STRand, align 8
  %132 = call i32 @pads(i32* %131)
  br label %133

133:                                              ; preds = %130, %121
  %134 = load i32*, i32** @STRspace, align 8
  %135 = call i32 @pads(i32* %134)
  %136 = load %struct.command*, %struct.command** %2, align 8
  %137 = getelementptr inbounds %struct.command, %struct.command* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @pads(i32* %138)
  br label %140

140:                                              ; preds = %6, %63, %133, %105, %98
  ret void
}

declare dso_local i32 @pads(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
