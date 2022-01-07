; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_colonNoName.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_colonNoName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@COMPILE = common dso_local global i32 0, align 4
@colonParen = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@FW_SMUDGE = common dso_local global i32 0, align 4
@colonTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @colonNoName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @colonNoName(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i32* @vmGetDict(%struct.TYPE_5__* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SI_SETLEN(i32 %8, i32 0)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @SI_SETPTR(i32 %10, i32* null)
  %12 = load i32, i32* @COMPILE, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @colonParen, align 4
  %18 = load i32, i32* @FW_DEFAULT, align 4
  %19 = load i32, i32* @FW_SMUDGE, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @dictAppendWord2(i32* %15, i32 %16, i32 %17, i32 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PUSHPTR(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @colonTag, align 4
  %26 = call i32 @markControlTag(%struct.TYPE_5__* %24, i32 %25)
  ret void
}

declare dso_local i32* @vmGetDict(%struct.TYPE_5__*) #1

declare dso_local i32 @SI_SETLEN(i32, i32) #1

declare dso_local i32 @SI_SETPTR(i32, i32*) #1

declare dso_local i32* @dictAppendWord2(i32*, i32, i32, i32) #1

declare dso_local i32 @PUSHPTR(i32*) #1

declare dso_local i32 @markControlTag(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
