; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fputrap_x87.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fputrap_x87.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.savefpu* }
%struct.savefpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@fpcurthread = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@curpcb = common dso_local global %struct.TYPE_4__* null, align 8
@fpetable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fputrap_x87() #0 {
  %1 = alloca %struct.savefpu*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @critical_enter()
  %5 = load i32, i32* @fpcurthread, align 4
  %6 = call i64 @PCPU_GET(i32 %5)
  %7 = load i64, i64* @curthread, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curpcb, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.savefpu*, %struct.savefpu** %11, align 8
  store %struct.savefpu* %12, %struct.savefpu** %1, align 8
  %13 = load %struct.savefpu*, %struct.savefpu** %1, align 8
  %14 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  %17 = load %struct.savefpu*, %struct.savefpu** %1, align 8
  %18 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %0
  %22 = call i32 @fnstcw(i32* %2)
  %23 = call i32 @fnstsw(i32* %3)
  br label %24

24:                                               ; preds = %21, %9
  %25 = call i32 (...) @critical_exit()
  %26 = load i32*, i32** @fpetable, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 63
  %31 = or i32 %30, 64
  %32 = and i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @fnstcw(i32*) #1

declare dso_local i32 @fnstsw(i32*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
