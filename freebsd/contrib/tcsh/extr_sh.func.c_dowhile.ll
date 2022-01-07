; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dowhile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dowhile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whyle = type { i64, %struct.whyle*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.command = type { i32 }

@whyles = common dso_local global %struct.whyle* null, align 8
@lineloc = common dso_local global i32 0, align 4
@noexec = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_EXPRESSION = common dso_local global i32 0, align 4
@TCSH_F_SEEK = common dso_local global i32 0, align 4
@TC_WHILE = common dso_local global i32 0, align 4
@zlast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dowhile(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.whyle*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %8 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %9 = icmp ne %struct.whyle* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %12 = getelementptr inbounds %struct.whyle, %struct.whyle* %11, i32 0, i32 3
  %13 = call i64 @SEEKEQ(i32* %12, i32* @lineloc)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %17 = getelementptr inbounds %struct.whyle, %struct.whyle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10, %2
  %21 = phi i1 [ false, %10 ], [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.command*, %struct.command** %4, align 8
  %24 = call i32 @USE(%struct.command* %23)
  %25 = load i32**, i32*** %3, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i32 1
  store i32** %26, i32*** %3, align 8
  %27 = load i64, i64* @noexec, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %47

30:                                               ; preds = %20
  %31 = load i64, i64* @intty, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = call i32 @exp0(i32*** %3, i32 1)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %33, %30
  %42 = call i32 @expr(i32*** %3)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32**, i32*** %3, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* @noexec, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @ERR_NAME, align 4
  %56 = load i32, i32* @ERR_EXPRESSION, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @stderror(i32 %57)
  br label %59

59:                                               ; preds = %54, %51, %47
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %59
  %63 = call %struct.whyle* @xcalloc(i32 1, i32 48)
  store %struct.whyle* %63, %struct.whyle** %7, align 8
  %64 = load i32, i32* @lineloc, align 4
  %65 = load %struct.whyle*, %struct.whyle** %7, align 8
  %66 = getelementptr inbounds %struct.whyle, %struct.whyle* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @TCSH_F_SEEK, align 4
  %68 = load %struct.whyle*, %struct.whyle** %7, align 8
  %69 = getelementptr inbounds %struct.whyle, %struct.whyle* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.whyle*, %struct.whyle** %7, align 8
  %72 = getelementptr inbounds %struct.whyle, %struct.whyle* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.whyle*, %struct.whyle** %7, align 8
  %75 = getelementptr inbounds %struct.whyle, %struct.whyle* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %78 = load %struct.whyle*, %struct.whyle** %7, align 8
  %79 = getelementptr inbounds %struct.whyle, %struct.whyle* %78, i32 0, i32 1
  store %struct.whyle* %77, %struct.whyle** %79, align 8
  %80 = load %struct.whyle*, %struct.whyle** %7, align 8
  store %struct.whyle* %80, %struct.whyle** @whyles, align 8
  %81 = load i32, i32* @TC_WHILE, align 4
  store i32 %81, i32* @zlast, align 4
  %82 = load i64, i64* @intty, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %62
  %85 = call i32 (...) @preread()
  %86 = call i32 (...) @doagain()
  br label %93

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @toend()
  br label %93

93:                                               ; preds = %84, %91, %88
  ret void
}

declare dso_local i64 @SEEKEQ(i32*, i32*) #1

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @exp0(i32***, i32) #1

declare dso_local i32 @expr(i32***) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local %struct.whyle* @xcalloc(i32, i32) #1

declare dso_local i32 @preread(...) #1

declare dso_local i32 @doagain(...) #1

declare dso_local i32 @toend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
