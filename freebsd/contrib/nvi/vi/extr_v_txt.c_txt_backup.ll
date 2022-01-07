; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_backup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i32* }

@_texth = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@TXT_REPLAY = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"193|Already at the beginning of the insert\00", align 1
@CH_CURSOR = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@LINE_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, %struct.TYPE_8__*, i32*)* @txt_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @txt_backup(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = load i32, i32* @_texth, align 4
  %14 = load i32, i32* @q, align 4
  %15 = call %struct.TYPE_8__* @TAILQ_PREV(%struct.TYPE_8__* %12, i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TXT_REPLAY, align 4
  %21 = call i32 @FL_ISSET(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @M_BERR, align 4
  %26 = call i32 @msgq(i32* %24, i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %5, align 8
  br label %90

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @VIP(i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i32, i32* @CH_CURSOR, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TXT_APPENDEOL, align 4
  %66 = call i32 @FL_SET(i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %41, %29
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TXT_APPENDEOL, align 4
  %71 = call i32 @FL_CLR(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %46
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = load i32, i32* @q, align 4
  %76 = call i32 @TAILQ_REMOVE(i32* %73, %struct.TYPE_8__* %74, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = call i32 @text_free(%struct.TYPE_8__* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i32, i32* @LINE_DELETE, align 4
  %85 = call i64 @vs_change(i32* %79, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %90

88:                                               ; preds = %72
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %5, align 8
  br label %90

90:                                               ; preds = %88, %87, %27
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %91
}

declare dso_local %struct.TYPE_8__* @TAILQ_PREV(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i32* @VIP(i32*) #1

declare dso_local i32 @FL_SET(i32, i32) #1

declare dso_local i32 @FL_CLR(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @text_free(%struct.TYPE_8__*) #1

declare dso_local i64 @vs_change(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
