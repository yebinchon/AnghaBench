; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_setalarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32** }

@STRautologout = common dso_local global i32 0, align 4
@auto_logout = common dso_local global i32 0, align 4
@alm_fun = common dso_local global i32 0, align 4
@auto_lock = common dso_local global i32 0, align 4
@sched_run = common dso_local global i32 0, align 4
@alrmcatch_disabled = common dso_local global i64 0, align 8
@CLK_TCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setalarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.varent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @STRautologout, align 4
  %12 = call %struct.varent* @adrof(i32 %11)
  store %struct.varent* %12, %struct.varent** %3, align 8
  %13 = icmp ne %struct.varent* %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %1
  %15 = load %struct.varent*, %struct.varent** %3, align 8
  %16 = getelementptr inbounds %struct.varent, %struct.varent* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %76

19:                                               ; preds = %14
  %20 = load %struct.varent*, %struct.varent** %3, align 8
  %21 = getelementptr inbounds %struct.varent, %struct.varent* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @short2str(i32* %27)
  %29 = call i64 @atoi(i32 %28)
  %30 = trunc i64 %29 to i32
  %31 = mul i32 %30, 60
  store i32 %31, i32* %6, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @auto_logout, align 4
  store i32 %35, i32* @alm_fun, align 4
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.varent*, %struct.varent** %3, align 8
  %39 = getelementptr inbounds %struct.varent, %struct.varent* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @short2str(i32* %45)
  %47 = call i64 @atoi(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = mul i32 %48, 60
  store i32 %49, i32* %7, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @auto_lock, align 4
  store i32 %63, i32* @alm_fun, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %73

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75, %14, %1
  %77 = call i32 (...) @sched_next()
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = call i32 @time(i32* %8)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %85, %86
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ %87, %84 ], [ 0, %88 ]
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @sched_run, align 4
  store i32 %100, i32* @alm_fun, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %76
  store i64 0, i64* @alrmcatch_disabled, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @alarm(i32 %103)
  ret void
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32 @sched_next(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
