; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_filenode_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_filenode_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32*, i32*, i32*, i32 }

@RESET = common dso_local global i32 0, align 4
@fn_head = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @filenode_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @filenode_new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.TYPE_6__* @emalloc(i32 56)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @memset(%struct.TYPE_6__* %5, i32 0, i32 56)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @estrdup(i8* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @RESET, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fn_head, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %34, align 8
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fn_head, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fn_head, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %42
}

declare dso_local %struct.TYPE_6__* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
