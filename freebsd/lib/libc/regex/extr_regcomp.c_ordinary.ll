; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_ordinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_ordinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@REG_ICASE = common dso_local global i32 0, align 4
@OPDMASK = common dso_local global i32 0, align 4
@OCHAR = common dso_local global i32 0, align 4
@OANYOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32)* @ordinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ordinary(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.parse*, %struct.parse** %3, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @REG_ICASE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @iswalpha(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @othercase(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.parse*, %struct.parse** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bothcases(%struct.parse* %24, i32 %25)
  br label %61

27:                                               ; preds = %18, %14, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @OPDMASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @OCHAR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @EMIT(i32 %34, i32 %35)
  br label %60

37:                                               ; preds = %27
  %38 = load %struct.parse*, %struct.parse** %3, align 8
  %39 = call i32* @allocset(%struct.parse* %38)
  store i32* %39, i32** %5, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %61

42:                                               ; preds = %37
  %43 = load %struct.parse*, %struct.parse** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CHadd(%struct.parse* %43, i32* %44, i32 %45)
  %47 = load i32, i32* @OANYOF, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.parse*, %struct.parse** %3, align 8
  %50 = getelementptr inbounds %struct.parse, %struct.parse* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %48 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @EMIT(i32 %47, i32 %58)
  br label %60

60:                                               ; preds = %42, %33
  br label %61

61:                                               ; preds = %41, %60, %23
  ret void
}

declare dso_local i64 @iswalpha(i32) #1

declare dso_local i32 @othercase(i32) #1

declare dso_local i32 @bothcases(%struct.parse*, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32* @allocset(%struct.parse*) #1

declare dso_local i32 @CHadd(%struct.parse*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
