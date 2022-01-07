; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32* }

@zOptionCase = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@UNK_OPT_FMT = common dso_local global i8* null, align 8
@OPTION_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @emit_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_long(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @zOptionCase, align 4
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fputs(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %44, %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i64 @SKIP_OPT(%struct.TYPE_12__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %44

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @emit_match_expr(i32* %22, %struct.TYPE_12__* %23, %struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i32 @emit_action(%struct.TYPE_11__* %26, %struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = call i32 @emit_match_expr(i32* %36, %struct.TYPE_12__* %37, %struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i32 @emit_inaction(%struct.TYPE_11__* %40, %struct.TYPE_12__* %41)
  br label %43

43:                                               ; preds = %33, %19
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 1
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %14, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** @UNK_OPT_FMT, align 8
  %52 = load i32, i32* @OPTION_STR, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @printf(i8* %51, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i64 @SKIP_OPT(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_match_expr(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @emit_action(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @emit_inaction(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
