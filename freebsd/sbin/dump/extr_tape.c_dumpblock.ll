; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_dumpblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_dumpblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@sblock = common dso_local global i32 0, align 4
@tp_bshift = common dso_local global i32 0, align 4
@ntrec = common dso_local global i64 0, align 8
@trecno = common dso_local global i64 0, align 8
@slp = common dso_local global %struct.TYPE_6__* null, align 8
@spcl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@dev_bshift = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpblock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @sblock, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @fsbtodb(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @tp_bshift, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* @ntrec, align 8
  %17 = load i64, i64* @trecno, align 8
  %18 = sub i64 %16, %17
  %19 = call i32 @MIN(i32 %15, i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @slp, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* @trecno, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @slp, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* @trecno, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %29, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @trecno, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* @trecno, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 4
  %43 = load i64, i64* @trecno, align 8
  %44 = load i64, i64* @ntrec, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = call i32 (...) @flushtape()
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @tp_bshift, align 4
  %51 = load i32, i32* @dev_bshift, align 4
  %52 = sub nsw i32 %50, %51
  %53 = shl i32 %49, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %14

59:                                               ; preds = %14
  ret void
}

declare dso_local i32 @fsbtodb(i32, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @flushtape(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
