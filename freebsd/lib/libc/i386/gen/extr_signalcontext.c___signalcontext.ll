; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/i386/gen/extr_signalcontext.c___signalcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/i386/gen/extr_signalcontext.c___signalcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8* }
%struct.sigframe = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@_ctx_start = common dso_local global i64 0, align 8
@PSL_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__signalcontext(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.sigframe*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = ptrtoint %struct.TYPE_10__* %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 -1
  store i8** %20, i8*** %7, align 8
  store i8* %18, i8** %20, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = ptrtoint i8** %21 to i32
  %23 = and i32 %22, -16
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %7, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = ptrtoint i8** %26 to i32
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 40
  %30 = inttoptr i64 %29 to i8**
  store i8** %30, i8*** %7, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = bitcast i8** %31 to %struct.sigframe*
  store %struct.sigframe* %32, %struct.sigframe** %8, align 8
  %33 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %34 = call i32 @bzero(%struct.sigframe* %33, i32 40)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %37 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %39 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %38, i32 0, i32 2
  %40 = ptrtoint %struct.TYPE_8__* %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %43 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %45 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %44, i32 0, i32 1
  %46 = ptrtoint i32* %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %49 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %52 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %56 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %55, i32 0, i32 1
  %57 = call i32 @bcopy(%struct.TYPE_10__* %54, i32* %56, i32 48)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %60 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 -1
  store i8** %66, i8*** %7, align 8
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr i8, i8* %70, i64 -4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  store i8* %71, i8** %74, align 8
  %75 = load i8**, i8*** %7, align 8
  %76 = ptrtoint i8** %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i64, i64* @_ctx_start, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @PSL_T, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load %struct.sigframe*, %struct.sigframe** %8, align 8
  %94 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @sigdelset(i32* %98, i32 %99)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.sigframe*, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
