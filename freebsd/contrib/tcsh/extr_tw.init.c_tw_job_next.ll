; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_job_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_job_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i64, i64, i64, i32, %struct.process* }
%struct.Strbuf = type opaque

@tw_index = common dso_local global i64 0, align 8
@pmaxindex = common dso_local global i64 0, align 8
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_job_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Strbuf*, align 8
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.process*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %5, align 8
  store %struct.Strbuf* %1, %struct.Strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %10 = bitcast %struct.Strbuf* %9 to i32*
  %11 = call i32 @USE(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @USE(i32* %12)
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i64, i64* @tw_index, align 8
  %16 = load i64, i64* @pmaxindex, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %19, %struct.process** %8, align 8
  br label %20

20:                                               ; preds = %39, %18
  %21 = load %struct.process*, %struct.process** %8, align 8
  %22 = icmp ne %struct.process* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.process*, %struct.process** %8, align 8
  %25 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @tw_index, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.process*, %struct.process** %8, align 8
  %31 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.process*, %struct.process** %8, align 8
  %34 = getelementptr inbounds %struct.process, %struct.process* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %43

38:                                               ; preds = %29, %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.process*, %struct.process** %8, align 8
  %41 = getelementptr inbounds %struct.process, %struct.process* %40, i32 0, i32 4
  %42 = load %struct.process*, %struct.process** %41, align 8
  store %struct.process* %42, %struct.process** %8, align 8
  br label %20

43:                                               ; preds = %37, %20
  %44 = load %struct.process*, %struct.process** %8, align 8
  %45 = icmp eq %struct.process* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %56

47:                                               ; preds = %43
  %48 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %49 = bitcast %struct.Strbuf* %48 to i32*
  %50 = load %struct.process*, %struct.process** %8, align 8
  %51 = getelementptr inbounds %struct.process, %struct.process* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @Strbuf_append(i32* %49, i32 %52)
  %54 = load i64, i64* @tw_index, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @tw_index, align 8
  store i32 1, i32* %4, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load i64, i64* @tw_index, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* @tw_index, align 8
  br label %14

59:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @USE(i32*) #1

declare dso_local i32 @Strbuf_append(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
