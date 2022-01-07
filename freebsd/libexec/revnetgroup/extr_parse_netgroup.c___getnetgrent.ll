; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___getnetgrent.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___getnetgrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, %struct.TYPE_2__* }

@nextgrp = common dso_local global %struct.TYPE_2__* null, align 8
@NG_HOST = common dso_local global i64 0, align 8
@NG_USER = common dso_local global i64 0, align 8
@NG_DOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__getnetgrent(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nextgrp, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nextgrp, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load i64, i64* @NG_HOST, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %5, align 8
  store i8* %16, i8** %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nextgrp, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* @NG_USER, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nextgrp, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @NG_DOM, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nextgrp, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** @nextgrp, align 8
  store i32 1, i32* %4, align 4
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
