; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_saalsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_saalsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscfu = type { i32, i64, i32, i32 }
%struct.SSCFU_MBUF_T = type { i32 }
%struct.sscfu_sig = type { i32, %struct.SSCFU_MBUF_T* }

@SSCFU_DBG_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"queuing user signal %s(%s)\00", align 1
@sscf_sigs = common dso_local global i32* null, align 8
@sscf_states = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sscfu_saalsig(%struct.sscfu* %0, i32 %1, %struct.SSCFU_MBUF_T* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sscfu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.SSCFU_MBUF_T*, align 8
  %8 = alloca %struct.sscfu_sig*, align 8
  store %struct.sscfu* %0, %struct.sscfu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.SSCFU_MBUF_T* %2, %struct.SSCFU_MBUF_T** %7, align 8
  %9 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %10 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %15 = load i32, i32* @SSCFU_DBG_EXEC, align 4
  %16 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %17 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %18 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @sscf_sigs, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @sscf_states, align 8
  %26 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %27 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.sscfu*
  %33 = call i32 @VERBOSE(%struct.sscfu* %14, i32 %15, %struct.sscfu* %32)
  %34 = load %struct.sscfu_sig*, %struct.sscfu_sig** %8, align 8
  %35 = call i32 @SIG_ALLOC(%struct.sscfu_sig* %34)
  %36 = load %struct.sscfu_sig*, %struct.sscfu_sig** %8, align 8
  %37 = icmp eq %struct.sscfu_sig* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %13
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %13
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.sscfu_sig*, %struct.sscfu_sig** %8, align 8
  %43 = getelementptr inbounds %struct.sscfu_sig, %struct.sscfu_sig* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %7, align 8
  %45 = load %struct.sscfu_sig*, %struct.sscfu_sig** %8, align 8
  %46 = getelementptr inbounds %struct.sscfu_sig, %struct.sscfu_sig* %45, i32 0, i32 1
  store %struct.SSCFU_MBUF_T* %44, %struct.SSCFU_MBUF_T** %46, align 8
  %47 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %48 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %47, i32 0, i32 2
  %49 = load %struct.sscfu_sig*, %struct.sscfu_sig** %8, align 8
  %50 = call i32 @SIGQ_APPEND(i32* %48, %struct.sscfu_sig* %49)
  store i32 0, i32* %4, align 4
  br label %60

51:                                               ; preds = %3
  %52 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %53 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %7, align 8
  %57 = call i32 @sscfu_dosig(%struct.sscfu* %54, i32 %55, %struct.SSCFU_MBUF_T* %56)
  %58 = load %struct.sscfu*, %struct.sscfu** %5, align 8
  %59 = call i32 @sscfu_unqueue(%struct.sscfu* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %40, %38
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @VERBOSE(%struct.sscfu*, i32, %struct.sscfu*) #1

declare dso_local i32 @SIG_ALLOC(%struct.sscfu_sig*) #1

declare dso_local i32 @SIGQ_APPEND(i32*, %struct.sscfu_sig*) #1

declare dso_local i32 @sscfu_dosig(%struct.sscfu*, i32, %struct.SSCFU_MBUF_T*) #1

declare dso_local i32 @sscfu_unqueue(%struct.sscfu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
