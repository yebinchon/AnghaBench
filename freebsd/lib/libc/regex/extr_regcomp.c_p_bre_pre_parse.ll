; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_bre_pre_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_bre_pre_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.branchc = type { i32 }

@OBOL = common dso_local global i32 0, align 4
@USEBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.branchc*)* @p_bre_pre_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_bre_pre_parse(%struct.parse* %0, %struct.branchc* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.branchc*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.branchc* %1, %struct.branchc** %4, align 8
  %5 = load %struct.branchc*, %struct.branchc** %4, align 8
  %6 = call i64 @EAT(i8 signext 94)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i32, i32* @OBOL, align 4
  %10 = call i32 @EMIT(i32 %9, i32 0)
  %11 = load i32, i32* @USEBOL, align 4
  %12 = load %struct.parse*, %struct.parse** %3, align 8
  %13 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.parse*, %struct.parse** %3, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @EMIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
