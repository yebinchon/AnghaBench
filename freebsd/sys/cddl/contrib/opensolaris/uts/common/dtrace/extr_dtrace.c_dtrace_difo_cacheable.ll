; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_difo_cacheable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_difo_cacheable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@DIFV_SCOPE_GLOBAL = common dso_local global i64 0, align 8
@DIF_OP_LDSB = common dso_local global i64 0, align 8
@DIF_OP_LDX = common dso_local global i64 0, align 8
@DIF_OP_ULDSB = common dso_local global i64 0, align 8
@DIF_OP_ULDX = common dso_local global i64 0, align 8
@DIF_OP_RLDSB = common dso_local global i64 0, align 8
@DIF_OP_RLDX = common dso_local global i64 0, align 8
@DIF_OP_LDGA = common dso_local global i64 0, align 8
@DIF_OP_STTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @dtrace_difo_cacheable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_difo_cacheable(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %37, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIFV_SCOPE_GLOBAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %37

30:                                               ; preds = %17
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %35 [
    i32 133, label %34
    i32 130, label %34
    i32 129, label %34
    i32 132, label %34
    i32 131, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %30, %30, %30, %30, %30, %30
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %93

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %11

40:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %89, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @DIF_INSTR_OP(i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @DIF_OP_LDSB, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @DIF_OP_LDX, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %87, label %63

63:                                               ; preds = %59, %47
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @DIF_OP_ULDSB, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @DIF_OP_ULDX, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %87, label %71

71:                                               ; preds = %67, %63
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @DIF_OP_RLDSB, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @DIF_OP_RLDX, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %71
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @DIF_OP_LDGA, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @DIF_OP_STTS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79, %75, %67, %59
  store i32 0, i32* %2, align 4
  br label %93

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %41

92:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %87, %35, %9
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @DIF_INSTR_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
