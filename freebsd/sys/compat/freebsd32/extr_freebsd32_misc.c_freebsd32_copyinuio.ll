; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyinuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyinuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec32 = type { i64, i32 }
%struct.uio = type { i32, i32, i64, i32, %struct.iovec* }
%struct.iovec = type { i64, i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec32*, i32, %struct.uio**)* @freebsd32_copyinuio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freebsd32_copyinuio(%struct.iovec32* %0, i32 %1, %struct.uio** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio**, align 8
  %8 = alloca %struct.iovec32, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iovec32* %0, %struct.iovec32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio** %2, %struct.uio*** %7, align 8
  %14 = load %struct.uio**, %struct.uio*** %7, align 8
  store %struct.uio* null, %struct.uio** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UIO_MAXIOV, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %120

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_IOV, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.uio* @malloc(i32 %28, i32 %29, i32 %30)
  store %struct.uio* %31, %struct.uio** %10, align 8
  %32 = load %struct.uio*, %struct.uio** %10, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i64 1
  %34 = bitcast %struct.uio* %33 to %struct.iovec*
  store %struct.iovec* %34, %struct.iovec** %9, align 8
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %68, %20
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.iovec32*, %struct.iovec32** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.iovec32, %struct.iovec32* %40, i64 %42
  %44 = call i32 @copyin(%struct.iovec32* %43, %struct.iovec32* %8, i32 16)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.uio*, %struct.uio** %10, align 8
  %49 = load i32, i32* @M_IOV, align 4
  %50 = call i32 @free(%struct.uio* %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %120

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.iovec32, %struct.iovec32* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTRIN(i32 %54)
  %56 = load %struct.iovec*, %struct.iovec** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i64 %58
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = getelementptr inbounds %struct.iovec32, %struct.iovec32* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iovec*, %struct.iovec** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i64 %65
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %35

71:                                               ; preds = %35
  %72 = load %struct.iovec*, %struct.iovec** %9, align 8
  %73 = load %struct.uio*, %struct.uio** %10, align 8
  %74 = getelementptr inbounds %struct.uio, %struct.uio* %73, i32 0, i32 4
  store %struct.iovec* %72, %struct.iovec** %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.uio*, %struct.uio** %10, align 8
  %77 = getelementptr inbounds %struct.uio, %struct.uio* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @UIO_USERSPACE, align 4
  %79 = load %struct.uio*, %struct.uio** %10, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.uio*, %struct.uio** %10, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load %struct.uio*, %struct.uio** %10, align 8
  %84 = getelementptr inbounds %struct.uio, %struct.uio* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %114, %71
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load %struct.iovec*, %struct.iovec** %9, align 8
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @INT_MAX, align 8
  %94 = load %struct.uio*, %struct.uio** %10, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = icmp sgt i64 %92, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.uio*, %struct.uio** %10, align 8
  %101 = load i32, i32* @M_IOV, align 4
  %102 = call i32 @free(%struct.uio* %100, i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %4, align 4
  br label %120

104:                                              ; preds = %89
  %105 = load %struct.iovec*, %struct.iovec** %9, align 8
  %106 = getelementptr inbounds %struct.iovec, %struct.iovec* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.uio*, %struct.uio** %10, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.iovec*, %struct.iovec** %9, align 8
  %113 = getelementptr inbounds %struct.iovec, %struct.iovec* %112, i32 1
  store %struct.iovec* %113, %struct.iovec** %9, align 8
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %85

117:                                              ; preds = %85
  %118 = load %struct.uio*, %struct.uio** %10, align 8
  %119 = load %struct.uio**, %struct.uio*** %7, align 8
  store %struct.uio* %118, %struct.uio** %119, align 8
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %99, %47, %18
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.uio* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(%struct.iovec32*, %struct.iovec32*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
