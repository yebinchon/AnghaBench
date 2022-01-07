; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_match_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_match_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }

@DTRACE_PRIV_ALL = common dso_local global i32 0, align 4
@DTRACE_PRIV_PROC = common dso_local global i32 0, align 4
@DTRACE_PRIV_USER = common dso_local global i32 0, align 4
@DTRACE_PRIV_KERNEL = common dso_local global i32 0, align 4
@DTRACE_PRIV_OWNER = common dso_local global i32 0, align 4
@DTRACE_PRIV_ZONEOWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64, i64)* @dtrace_match_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_match_priv(%struct.TYPE_7__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DTRACE_PRIV_ALL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %27 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DTRACE_PRIV_KERNEL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %79

34:                                               ; preds = %15
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %79

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* @DTRACE_PRIV_OWNER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %79

59:                                               ; preds = %49, %41
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @DTRACE_PRIV_ZONEOWNER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %79

77:                                               ; preds = %67, %59
  br label %78

78:                                               ; preds = %77, %4
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %76, %58, %40, %33
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
