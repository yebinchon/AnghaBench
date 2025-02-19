; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_retain_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_retain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_5__*, i32* }

@xo_retain = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@xo_retain_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @xo_retain_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_retain_add(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @xo_retain_hash(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_5__* @xo_realloc(i32* null, i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 1
  %27 = bitcast %struct.TYPE_5__* %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32* %28, i32* %29, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = call i32 @bzero(%struct.TYPE_5__* %35, i32 32)
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xo_retain, i32 0, i32 0), align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xo_retain, i32 0, i32 0), align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %57, align 8
  %58 = load i32, i32* @xo_retain_count, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @xo_retain_count, align 4
  br label %60

60:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @xo_retain_hash(i8*) #1

declare dso_local %struct.TYPE_5__* @xo_realloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
