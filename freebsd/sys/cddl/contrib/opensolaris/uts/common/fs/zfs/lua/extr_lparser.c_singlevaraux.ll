; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_singlevaraux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_singlevaraux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@VVOID = common dso_local global i32 0, align 4
@VLOCAL = common dso_local global i32 0, align 4
@VUPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32)* @singlevaraux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlevaraux(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @VVOID, align 4
  store i32 %15, i32* %5, align 4
  br label %63

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @searchvar(%struct.TYPE_7__* %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @VLOCAL, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @init_exp(i32* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @markupval(%struct.TYPE_7__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* @VLOCAL, align 4
  store i32 %34, i32* %5, align 4
  br label %63

35:                                               ; preds = %16
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @searchupvalue(%struct.TYPE_7__* %36, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @singlevaraux(%struct.TYPE_7__* %44, i32* %45, i32* %46, i32 0)
  %48 = load i32, i32* @VVOID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @VVOID, align 4
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @newupvalue(%struct.TYPE_7__* %53, i32* %54, i32* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %52, %35
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @VUPVAL, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @init_exp(i32* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @VUPVAL, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %50, %33, %14
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @searchvar(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @init_exp(i32*, i32, i32) #1

declare dso_local i32 @markupval(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @searchupvalue(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @newupvalue(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
