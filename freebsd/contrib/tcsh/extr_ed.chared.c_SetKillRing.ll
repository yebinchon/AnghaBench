; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_SetKillRing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_SetKillRing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@KillRingMax = common dso_local global i32 0, align 4
@KillRing = common dso_local global %struct.TYPE_5__* null, align 8
@KillRingLen = common dso_local global i32 0, align 4
@KillPos = common dso_local global i32 0, align 4
@YankPos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetKillRing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @KillRingMax, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %88

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.TYPE_5__* @xcalloc(i32 %16, i32 8)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KillRing, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %85

20:                                               ; preds = %15
  %21 = load i32, i32* @KillRingLen, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @KillRingLen, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @KillRingLen, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @KillPos, align 4
  store i32 %29, i32* %6, align 4
  br label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @KillPos, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @KillRingLen, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @KillRingLen, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %30, %27
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %72, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @KillRingLen, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KillRing, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = bitcast %struct.TYPE_5__* %52 to i8*
  %58 = bitcast %struct.TYPE_5__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  br label %67

59:                                               ; preds = %44
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KillRing, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @xfree(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %59, %48
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @KillRingLen, align 4
  %71 = srem i32 %69, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %40

75:                                               ; preds = %40
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* @KillRingLen, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %2, align 4
  %79 = srem i32 %77, %78
  store i32 %79, i32* @KillPos, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* @YankPos, align 4
  br label %82

82:                                               ; preds = %75, %20
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KillRing, align 8
  %84 = call i32 @xfree(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %82, %15
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** @KillRing, align 8
  %87 = load i32, i32* %2, align 4
  store i32 %87, i32* @KillRingMax, align 4
  br label %88

88:                                               ; preds = %85, %14
  ret void
}

declare dso_local %struct.TYPE_5__* @xcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
