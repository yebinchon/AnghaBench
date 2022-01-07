; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options.c_opts_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options.c_opts_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@O_OPTIONCOUNT = common dso_local global i32 0, align 4
@optlist = common dso_local global %struct.TYPE_10__* null, align 8
@OPT_STR = common dso_local global i64 0, align 8
@OPT_GLOBAL = common dso_local global i32 0, align 4
@OS_NOFREE = common dso_local global i32 0, align 4
@OS_STR = common dso_local global i32 0, align 4
@OS_DEF = common dso_local global i32 0, align 4
@OS_STRDUP = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opts_copy(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @memcpy(i32* %9, i32* %12, i32 8)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %105, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @O_OPTIONCOUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @optlist, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPT_STR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @OPT_GLOBAL, align 4
  %35 = call i64 @F_ISSET(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %18
  br label %105

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @O_STR(%struct.TYPE_9__* %42, i32 %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41, %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @OS_NOFREE, align 4
  %50 = load i32, i32* @OS_STR, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @o_set(%struct.TYPE_9__* %47, i32 %48, i32 %51, i32* null, i32 0)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @OS_DEF, align 4
  %56 = load i32, i32* @OS_NOFREE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @OS_STR, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @o_set(%struct.TYPE_9__* %53, i32 %54, i32 %59, i32* null, i32 0)
  br label %105

61:                                               ; preds = %41
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @OS_NOFREE, align 4
  %65 = load i32, i32* @OS_STRDUP, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32* @O_STR(%struct.TYPE_9__* %67, i32 %68)
  %70 = call i64 @o_set(%struct.TYPE_9__* %62, i32 %63, i32 %66, i32* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @OS_DEF, align 4
  %76 = load i32, i32* @OS_NOFREE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @OS_STR, align 4
  %79 = or i32 %77, %78
  %80 = call i64 @o_set(%struct.TYPE_9__* %73, i32 %74, i32 %79, i32* null, i32 0)
  br label %100

81:                                               ; preds = %61
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32* @O_D_STR(%struct.TYPE_9__* %82, i32 %83)
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @OS_DEF, align 4
  %90 = load i32, i32* @OS_NOFREE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @OS_STRDUP, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32* @O_D_STR(%struct.TYPE_9__* %94, i32 %95)
  %97 = call i64 @o_set(%struct.TYPE_9__* %87, i32 %88, i32 %93, i32* %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %72
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = load i32, i32* @M_SYSERR, align 4
  %103 = call i32 @msgq(%struct.TYPE_9__* %101, i32 %102, i32* null)
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %86, %81
  br label %105

105:                                              ; preds = %104, %46, %37
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %14

108:                                              ; preds = %14
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @F_ISSET(i32*, i32) #1

declare dso_local i32* @O_STR(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @o_set(%struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32* @O_D_STR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
