; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_alloctape.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_alloctape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i64, i64, %struct.req* }
%struct.req = type { i32 }

@ntrec = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4
@writesize = common dso_local global i32 0, align 4
@reqsiz = common dso_local global i32 0, align 4
@blocksperfile = common dso_local global i64 0, align 8
@unlimited = common dso_local global i32 0, align 4
@density = common dso_local global i32 0, align 4
@cartridge = common dso_local global i64 0, align 8
@tenths = common dso_local global i32 0, align 4
@SLAVES = common dso_local global i32 0, align 4
@slaves = common dso_local global %struct.TYPE_3__* null, align 8
@slp = common dso_local global %struct.TYPE_3__* null, align 8
@nextblock = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloctape() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @getpagesize()
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @ntrec, align 4
  %8 = load i32, i32* @TP_BSIZE, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* @writesize, align 4
  %10 = load i32, i32* @ntrec, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* @reqsiz, align 4
  %15 = load i64, i64* @blocksperfile, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %0
  %18 = load i32, i32* @unlimited, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @writesize, align 4
  %22 = load i32, i32* @density, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i64, i64* @cartridge, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @density, align 4
  %29 = icmp eq i32 %28, 625
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 5, i32 8
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32 [ 16, %26 ], [ %31, %27 ]
  %34 = add nsw i32 %23, %33
  store i32 %34, i32* @tenths, align 4
  br label %35

35:                                               ; preds = %32, %17, %0
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %93, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SLAVES, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load i32, i32* @reqsiz, align 4
  %42 = load i32, i32* @writesize, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @TP_BSIZE, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i64 @malloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %1, align 4
  br label %108

53:                                               ; preds = %40
  %54 = load i32, i32* @TP_BSIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @ntrec, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = ptrtoint i8* %60 to i64
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i32, i32* %2, align 4
  %66 = xor i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = and i64 %64, %67
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to i8**
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i8** %70, i8*** %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = bitcast i8** %81 to %struct.req*
  %83 = load i32, i32* @ntrec, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds %struct.req, %struct.req* %82, i64 %85
  %87 = getelementptr inbounds %struct.req, %struct.req* %86, i64 -1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  store %struct.req* %87, %struct.req** %92, align 8
  br label %93

93:                                               ; preds = %53
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %36

96:                                               ; preds = %36
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 0
  store %struct.TYPE_3__* %98, %struct.TYPE_3__** @slp, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slp, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slp, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slp, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slp, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  store i8** %107, i8*** @nextblock, align 8
  store i32 1, i32* %1, align 4
  br label %108

108:                                              ; preds = %96, %52
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
