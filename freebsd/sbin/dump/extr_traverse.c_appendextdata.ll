; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_appendextdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_appendextdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%union.dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@spcl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@UFS_NXADDR = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_6__* null, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@TP_NINDIR = common dso_local global i32 0, align 4
@tp_bshift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.dinode*)* @appendextdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appendextdata(%union.dinode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  %12 = load i32, i32* @UFS_NXADDR, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = icmp sgt i32 %11, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @UFS_NXADDR, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load i32, i32* @TP_BSIZE, align 4
  %25 = call i32 @howmany(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %10
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  %28 = load i32, i32* @TP_BSIZE, align 4
  %29 = call i32 @howmany(i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @TP_NINDIR, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %88

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @tp_bshift, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @TP_NINDIR, align 4
  %47 = icmp slt i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %80, %37
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load %union.dinode*, %union.dinode** %3, align 8
  %56 = bitcast %union.dinode* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sdiv i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 1, i32* %71, align 4
  br label %79

72:                                               ; preds = %54
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %36, %9
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
