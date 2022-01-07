; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_dbregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_dbregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32, i32, i32, i32, i32, i32 }
%struct.dbreg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_dbregs(%struct.thread* %0, %struct.dbreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.dbreg*, align 8
  %5 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.dbreg* %1, %struct.dbreg** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = icmp eq %struct.thread* %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = call i32 (...) @rdr0()
  %10 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %11 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = call i32 (...) @rdr1()
  %15 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %16 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = call i32 (...) @rdr2()
  %20 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %21 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %19, i32* %23, align 4
  %24 = call i32 (...) @rdr3()
  %25 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %26 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %24, i32* %28, align 4
  %29 = call i32 (...) @rdr6()
  %30 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %31 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  store i32 %29, i32* %33, align 4
  %34 = call i32 (...) @rdr7()
  %35 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %36 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  store i32 %34, i32* %38, align 4
  br label %85

39:                                               ; preds = %2
  %40 = load %struct.thread*, %struct.thread** %3, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load %struct.pcb*, %struct.pcb** %41, align 8
  store %struct.pcb* %42, %struct.pcb** %5, align 8
  %43 = load %struct.pcb*, %struct.pcb** %5, align 8
  %44 = getelementptr inbounds %struct.pcb, %struct.pcb* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %47 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.pcb*, %struct.pcb** %5, align 8
  %51 = getelementptr inbounds %struct.pcb, %struct.pcb* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %54 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.pcb*, %struct.pcb** %5, align 8
  %58 = getelementptr inbounds %struct.pcb, %struct.pcb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %61 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.pcb*, %struct.pcb** %5, align 8
  %65 = getelementptr inbounds %struct.pcb, %struct.pcb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %68 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %66, i32* %70, align 4
  %71 = load %struct.pcb*, %struct.pcb** %5, align 8
  %72 = getelementptr inbounds %struct.pcb, %struct.pcb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %75 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 %73, i32* %77, align 4
  %78 = load %struct.pcb*, %struct.pcb** %5, align 8
  %79 = getelementptr inbounds %struct.pcb, %struct.pcb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %82 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %39, %8
  %86 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %87 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 0, i32* %89, align 4
  %90 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %91 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  store i32 0, i32* %93, align 4
  %94 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %95 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32 0, i32* %97, align 4
  %98 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %99 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 9
  store i32 0, i32* %101, align 4
  %102 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %103 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 10
  store i32 0, i32* %105, align 4
  %106 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %107 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 11
  store i32 0, i32* %109, align 4
  %110 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %111 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  store i32 0, i32* %113, align 4
  %114 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %115 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 13
  store i32 0, i32* %117, align 4
  %118 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %119 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 14
  store i32 0, i32* %121, align 4
  %122 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %123 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 15
  store i32 0, i32* %125, align 4
  ret i32 0
}

declare dso_local i32 @rdr0(...) #1

declare dso_local i32 @rdr1(...) #1

declare dso_local i32 @rdr2(...) #1

declare dso_local i32 @rdr3(...) #1

declare dso_local i32 @rdr6(...) #1

declare dso_local i32 @rdr7(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
