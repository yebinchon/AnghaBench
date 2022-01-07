; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_FQR_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_FQR_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, %struct.TYPE_5__**, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QM_FQR_Free(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @ERROR_CODE(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = icmp ne %struct.TYPE_5__** %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @qm_free_fq(i32 %41, %struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @XX_FreeSmart(%struct.TYPE_5__* %55)
  br label %57

57:                                               ; preds = %49, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %63, align 8
  %65 = call i32 @XX_Free(%struct.TYPE_5__** %64)
  br label %66

66:                                               ; preds = %61, %13
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @QmFqidPut(i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %76, %71, %66
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = call i32 @XX_FreeSmart(%struct.TYPE_5__* %85)
  %87 = load i32, i32* @E_OK, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %10
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @qm_free_fq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @XX_FreeSmart(%struct.TYPE_5__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_5__**) #1

declare dso_local i32 @QmFqidPut(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
