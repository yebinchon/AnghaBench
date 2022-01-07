; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@DSO_F_DSO_CTRL = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@DSO_R_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSO_ctrl(%struct.TYPE_6__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @DSO_F_DSO_CTRL, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @DSOerr(i32 %13, i32 %14)
  store i64 -1, i64* %5, align 8
  br label %66

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %36 [
    i32 130, label %18
    i32 128, label %22
    i32 129, label %28
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %66

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i64 0, i64* %5, align 8
  br label %66

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, %31
  store i64 %35, i64* %33, align 8
  store i64 0, i64* %5, align 8
  br label %66

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i64 (%struct.TYPE_6__*, i32, i64, i8*)**
  %48 = load i64 (%struct.TYPE_6__*, i32, i64, i8*)*, i64 (%struct.TYPE_6__*, i32, i64, i8*)** %47, align 8
  %49 = icmp eq i64 (%struct.TYPE_6__*, i32, i64, i8*)* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %42, %37
  %51 = load i32, i32* @DSO_F_DSO_CTRL, align 4
  %52 = load i32, i32* @DSO_R_UNSUPPORTED, align 4
  %53 = call i32 @DSOerr(i32 %51, i32 %52)
  store i64 -1, i64* %5, align 8
  br label %66

54:                                               ; preds = %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i64 (%struct.TYPE_6__*, i32, i64, i8*)**
  %60 = load i64 (%struct.TYPE_6__*, i32, i64, i8*)*, i64 (%struct.TYPE_6__*, i32, i64, i8*)** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 %60(%struct.TYPE_6__* %61, i32 %62, i64 %63, i8* %64)
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %54, %50, %28, %22, %18, %12
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @DSOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
