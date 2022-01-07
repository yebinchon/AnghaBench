; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@recsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cat1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cat2\00", align 1
@STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @cat(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32**, i32*** %3, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.TYPE_7__* @execute(i32* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = call i32 @getsval(%struct.TYPE_7__* %16)
  %18 = call i32 @strlen(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @recsize, align 4
  %22 = call i32 @adjbuf(i8** %10, i32* %11, i32 %20, i32 %21, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @strncpy(i8* %23, i8* %26, i32 %27)
  %29 = load i32**, i32*** %3, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = call %struct.TYPE_7__* @execute(i32* %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = call i32 @getsval(%struct.TYPE_7__* %33)
  %35 = call i32 @strlen(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @recsize, align 4
  %41 = call i32 @adjbuf(i8** %10, i32* %11, i32 %39, i32 %40, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @strncpy(i8* %45, i8* %48, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = call i32 @tempfree(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = call i32 @tempfree(%struct.TYPE_7__* %55)
  %57 = call %struct.TYPE_7__* (...) @gettemp()
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @STR, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local %struct.TYPE_7__* @execute(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @getsval(%struct.TYPE_7__*) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @tempfree(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @gettemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
