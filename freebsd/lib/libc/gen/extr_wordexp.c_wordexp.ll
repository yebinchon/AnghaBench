; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_wordexp.c_wordexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_wordexp.c_wordexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32*, i64 }

@WRDE_REUSE = common dso_local global i32 0, align 4
@WRDE_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wordexp(i8* noalias %0, %struct.TYPE_5__* noalias %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WRDE_REUSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = call i32 @wordfree(%struct.TYPE_5__* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WRDE_APPEND, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @we_check(i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i32 @wordfree(%struct.TYPE_5__* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @we_askshell(i8* %39, %struct.TYPE_5__* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = call i32 @wordfree(%struct.TYPE_5__* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44, %34
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @wordfree(%struct.TYPE_5__*) #1

declare dso_local i32 @we_check(i8*) #1

declare dso_local i32 @we_askshell(i8*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
