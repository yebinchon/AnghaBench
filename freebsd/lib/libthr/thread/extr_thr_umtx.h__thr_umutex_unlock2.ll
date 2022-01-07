; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_unlock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_unlock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umutex = type { i32, i32 }

@UMUTEX_NONCONSISTENT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@UMUTEX_UNOWNED = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_WAKE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umutex*, i32, i32*)* @_thr_umutex_unlock2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_umutex_unlock2(%struct.umutex* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.umutex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.umutex* %0, %struct.umutex** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.umutex*, %struct.umutex** %5, align 8
  %12 = getelementptr inbounds %struct.umutex, %struct.umutex* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %21 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load %struct.umutex*, %struct.umutex** %5, align 8
  %27 = getelementptr inbounds %struct.umutex, %struct.umutex* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @UMUTEX_UNOWNED, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i64 @atomic_cmpset_rel_32(i32* %27, i32 %28, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %98

40:                                               ; preds = %35
  %41 = load %struct.umutex*, %struct.umutex** %5, align 8
  %42 = call i32 @__thr_umutex_unlock(%struct.umutex* %41)
  store i32 %42, i32* %4, align 4
  br label %98

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %70, %43
  %45 = load %struct.umutex*, %struct.umutex** %5, align 8
  %46 = getelementptr inbounds %struct.umutex, %struct.umutex* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %4, align 4
  br label %98

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.umutex*, %struct.umutex** %5, align 8
  %62 = getelementptr inbounds %struct.umutex, %struct.umutex* %61, i32 0, i32 1
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @UMUTEX_UNOWNED, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i64 @atomic_cmpset_rel_32(i32* %62, i32 %63, i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @__predict_false(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %44, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %83
  %90 = load %struct.umutex*, %struct.umutex** %5, align 8
  %91 = load i32, i32* @UMTX_OP_MUTEX_WAKE2, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @_umtx_op_err(%struct.umutex* %90, i32 %91, i32 %92, i32 0, i32 0)
  br label %96

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %78
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %57, %40, %39
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @atomic_cmpset_rel_32(i32*, i32, i32) #1

declare dso_local i32 @__thr_umutex_unlock(%struct.umutex*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @_umtx_op_err(%struct.umutex*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
