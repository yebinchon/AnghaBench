; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_canstore_statvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_canstore_statvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@dtrace_statvar_maxsize = common dso_local global i32 0, align 4
@NCPU = common dso_local global i64 0, align 8
@DIFV_SCOPE_GLOBAL = common dso_local global i64 0, align 8
@DIFV_SCOPE_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*, %struct.TYPE_5__**, i32)* @dtrace_canstore_statvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_canstore_statvar(i32 %0, i64 %1, i64* %2, %struct.TYPE_5__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %97

21:                                               ; preds = %5
  %22 = load i32, i32* @dtrace_statvar_maxsize, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @NCPU, align 8
  %27 = mul i64 %25, %26
  store i64 %27, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %93, %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %15, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %17, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %32
  br label %93

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @DIFV_SCOPE_GLOBAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54, %46
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* @DIFV_SCOPE_LOCAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ule i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %54
  %69 = phi i1 [ true, %54 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @DTRACE_INRANGE(i32 %72, i64 %73, i32 %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %68
  %83 = load i64*, i64** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @DTRACE_RANGE_REMAIN(i64* %83, i32 %84, i32 %87, i64 %90)
  store i32 1, i32* %6, align 4
  br label %97

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %45
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %28

96:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %82, %20
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @DTRACE_INRANGE(i32, i64, i32, i64) #1

declare dso_local i32 @DTRACE_RANGE_REMAIN(i64*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
