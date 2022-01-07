; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_probe_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_probe_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@dtrace_match_string = common dso_local global i32 0, align 4
@dtrace_match_nul = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@DTRACE_PRIV_ALL = common dso_local global i32 0, align 4
@dtrace_probe_lookup_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_probe_lookup(i64 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i32* @dtrace_match_string, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i32* %23, i32** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32* %30, i32** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @DTRACE_IDNONE, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = call i32 @mutex_enter(i32* @dtrace_lock)
  %42 = load i32, i32* @DTRACE_PRIV_ALL, align 4
  %43 = load i32, i32* @dtrace_probe_lookup_match, align 4
  %44 = call i32 @dtrace_match(%struct.TYPE_5__* %9, i32 %42, i32 0, i32 0, i32 %43, i32* %10)
  store i32 %44, i32* %11, align 4
  %45 = call i32 @mutex_exit(i32* @dtrace_lock)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %48, %4
  %52 = phi i1 [ true, %4 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  ret i32 %61
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_match(%struct.TYPE_5__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
