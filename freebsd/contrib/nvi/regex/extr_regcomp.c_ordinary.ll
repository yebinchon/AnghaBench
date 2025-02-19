; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_ordinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_ordinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_ICASE = common dso_local global i32 0, align 4
@OCHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32)* @ordinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ordinary(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.parse*, %struct.parse** %3, align 8
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REG_ICASE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @isalpha(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @othercase(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.parse*, %struct.parse** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @bothcases(%struct.parse* %23, i32 %24)
  br label %30

26:                                               ; preds = %17, %13, %2
  %27 = load i32, i32* @OCHAR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @EMIT(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @othercase(i32) #1

declare dso_local i32 @bothcases(%struct.parse*, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
