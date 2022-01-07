; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_exp2RK.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_exp2RK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@MAXINDEXRK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_exp2RK(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %8 = call i32 @luaK_exp2val(%struct.TYPE_15__* %6, %struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %73 [
    i32 128, label %12
    i32 132, label %12
    i32 129, label %12
    i32 130, label %47
    i32 131, label %59
  ]

12:                                               ; preds = %2, %2, %2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAXINDEXRK, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = call i32 @nilK(%struct.TYPE_15__* %24)
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 128
  %32 = zext i1 %31 to i32
  %33 = call i32 @boolK(%struct.TYPE_15__* %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %23
  %35 = phi i32 [ %25, %23 ], [ %33, %26 ]
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 131, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @RKASK(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %78

46:                                               ; preds = %12
  br label %74

47:                                               ; preds = %2
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @luaK_numberK(%struct.TYPE_15__* %48, i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 131, i32* %58, align 4
  br label %59

59:                                               ; preds = %2, %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MAXINDEXRK, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @RKASK(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %59
  br label %74

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %73, %72, %46
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = call i32 @luaK_exp2anyreg(%struct.TYPE_15__* %75, %struct.TYPE_14__* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %66, %34
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @luaK_exp2val(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @nilK(%struct.TYPE_15__*) #1

declare dso_local i32 @boolK(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @RKASK(i32) #1

declare dso_local i32 @luaK_numberK(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @luaK_exp2anyreg(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
