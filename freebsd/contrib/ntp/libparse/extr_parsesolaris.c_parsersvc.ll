; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parsersvc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parsersvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@QPCTL = common dso_local global i64 0, align 8
@DD_RSVC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"parse: RSVC - putnext\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"parse: RSVC - flow control wait\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @parsersvc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsersvc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_7__* @getq(i32* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @canputnext(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QPCTL, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12, %8
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @putnext(i32* %21, %struct.TYPE_7__* %22)
  %24 = load i32, i32* @DD_RSVC, align 4
  %25 = call i32 @pprintf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

26:                                               ; preds = %12
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @putbq(i32* %27, %struct.TYPE_7__* %28)
  %30 = load i32, i32* @DD_RSVC, align 4
  %31 = call i32 @pprintf(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %33

32:                                               ; preds = %20
  br label %4

33:                                               ; preds = %26, %4
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @getq(i32*) #1

declare dso_local i64 @canputnext(i32*) #1

declare dso_local i32 @putnext(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @pprintf(i32, i8*) #1

declare dso_local i32 @putbq(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
