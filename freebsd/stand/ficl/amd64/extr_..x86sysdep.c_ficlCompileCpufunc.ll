; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/amd64/extr_..x86sysdep.c_ficlCompileCpufunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/amd64/extr_..x86sysdep.c_ficlCompileCpufunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"outb\00", align 1
@ficlOutb = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"inb\00", align 1
@ficlInb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ficlCompileCpufunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ficlCompileCpufunc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @ficlOutb, align 4
  %11 = load i32, i32* @FW_DEFAULT, align 4
  %12 = call i32 @dictAppendWord(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @ficlInb, align 4
  %15 = load i32, i32* @FW_DEFAULT, align 4
  %16 = call i32 @dictAppendWord(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dictAppendWord(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
