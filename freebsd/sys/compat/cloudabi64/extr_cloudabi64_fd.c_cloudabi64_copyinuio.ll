; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_fd.c_cloudabi64_copyinuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_fd.c_cloudabi64_copyinuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.uio = type { i64, i32, i64, i32, %struct.iovec* }
%struct.iovec = type { i64, i32 }

@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, %struct.uio**)* @cloudabi64_copyinuio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi64_copyinuio(%struct.TYPE_5__* %0, i64 %1, %struct.uio** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uio**, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.uio** %2, %struct.uio*** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @UIO_MAXIOV, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %104

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, 16
  %21 = add i64 40, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @M_IOV, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call %struct.uio* @malloc(i32 %22, i32 %23, i32 %24)
  store %struct.uio* %25, %struct.uio** %9, align 8
  %26 = load %struct.uio*, %struct.uio** %9, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i64 1
  %28 = bitcast %struct.uio* %27 to %struct.iovec*
  store %struct.iovec* %28, %struct.iovec** %10, align 8
  %29 = load %struct.iovec*, %struct.iovec** %10, align 8
  %30 = load %struct.uio*, %struct.uio** %9, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 4
  store %struct.iovec* %29, %struct.iovec** %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.uio*, %struct.uio** %9, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @UIO_USERSPACE, align 4
  %36 = load %struct.uio*, %struct.uio** %9, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.uio*, %struct.uio** %9, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 8
  %40 = load %struct.uio*, %struct.uio** %9, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %98, %18
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = call i32 @copyin(%struct.TYPE_5__* %49, %struct.TYPE_5__* %8, i32 16)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.uio*, %struct.uio** %9, align 8
  %55 = load i32, i32* @M_IOV, align 4
  %56 = call i32 @free(%struct.uio* %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %104

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TO_PTR(i32 %60)
  %62 = load %struct.iovec*, %struct.iovec** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 %63
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.iovec*, %struct.iovec** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 0
  store i64 %67, i64* %71, align 8
  %72 = load %struct.iovec*, %struct.iovec** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i64 %73
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @INT64_MAX, align 8
  %78 = load %struct.uio*, %struct.uio** %9, align 8
  %79 = getelementptr inbounds %struct.uio, %struct.uio* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = icmp sgt i64 %76, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %58
  %84 = load %struct.uio*, %struct.uio** %9, align 8
  %85 = load i32, i32* @M_IOV, align 4
  %86 = call i32 @free(%struct.uio* %84, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %4, align 4
  br label %104

88:                                               ; preds = %58
  %89 = load %struct.iovec*, %struct.iovec** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %89, i64 %90
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.uio*, %struct.uio** %9, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %42

101:                                              ; preds = %42
  %102 = load %struct.uio*, %struct.uio** %9, align 8
  %103 = load %struct.uio**, %struct.uio*** %7, align 8
  store %struct.uio* %102, %struct.uio** %103, align 8
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %83, %53, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.uio* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

declare dso_local i32 @TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
