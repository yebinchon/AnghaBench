; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@CVMX_TRA_READ_DAT = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@CVMX_TRA_READ_DAT_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i8* } @cvmx_tra_read() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CVMX_TRA_READ_DAT, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %5 = call i64 @OCTEON_IS_MODEL(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @cvmx_read_csr(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @cvmx_read_csr(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %41

16:                                               ; preds = %0
  %17 = load i32, i32* @OCTEON_CN3XXX, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @OCTEON_CN5XXX, align 4
  %22 = call i64 @OCTEON_IS_MODEL(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @CVMX_TRA_READ_DAT_HI, align 4
  %30 = call i8* @cvmx_read_csr(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %40

33:                                               ; preds = %20, %16
  %34 = load i32, i32* %2, align 4
  %35 = call i8* @cvmx_read_csr(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %24
  br label %41

41:                                               ; preds = %40, %7
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %43 = bitcast %struct.TYPE_4__* %42 to { i8*, i8* }*
  %44 = load { i8*, i8* }, { i8*, i8* }* %43, align 8
  ret { i8*, i8* } %44
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
