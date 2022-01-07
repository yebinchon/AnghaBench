; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_prog_detail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_prog_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*)*, i32 }

@OPTPROC_ENVIRON = common dso_local global i32 0, align 4
@zPresetIntro = common dso_local global i32* null, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@zExamineFmt = common dso_local global i8* null, align 8
@displayEnum = common dso_local global i64 0, align 8
@NL = common dso_local global i32 0, align 4
@OPTPROC_EMIT_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @prt_prog_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_prog_detail(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 7
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @prt_ini_list(i32* %17, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OPTPROC_ENVIRON, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** @zPresetIntro, align 8
  %37 = load i32, i32* @option_usage_fp, align 4
  %38 = call i32 @fputs(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @option_usage_fp, align 4
  %41 = load i8*, i8** @zExamineFmt, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @fprintf(i32 %40, i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %25
  %47 = load i64, i64* @displayEnum, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %6, align 8
  %56 = load i32, i32* @NL, align 4
  %57 = load i32, i32* @option_usage_fp, align 4
  %58 = call i32 @fputc(i32 %56, i32 %57)
  %59 = load i32, i32* @option_usage_fp, align 4
  %60 = call i32 @fflush(i32 %59)
  br label %61

61:                                               ; preds = %74, %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @OPTST_GET_ARGTYPE(i32 %64)
  switch i32 %65, label %73 [
    i32 129, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %61, %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %68, align 8
  %70 = load i32, i32* @OPTPROC_EMIT_USAGE, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = call i32 %69(i32 %70, %struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 1
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %61, label %82

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @option_usage_fp, align 4
  %93 = call i32 @fputs(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @prt_ini_list(i32*, i32, i32) #1

declare dso_local i32 @fputs(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @OPTST_GET_ARGTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
