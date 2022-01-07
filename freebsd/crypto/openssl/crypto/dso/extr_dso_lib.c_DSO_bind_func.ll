; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_bind_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_bind_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@DSO_F_DSO_BIND_FUNC = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@DSO_R_UNSUPPORTED = common dso_local global i32 0, align 4
@DSO_R_SYM_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DSO_bind_func(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @DSO_F_DSO_BIND_FUNC, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @DSOerr(i32 %13, i32 %14)
  store i32* null, i32** %3, align 8
  br label %45

16:                                               ; preds = %9
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32* (%struct.TYPE_6__*, i8*)**
  %22 = load i32* (%struct.TYPE_6__*, i8*)*, i32* (%struct.TYPE_6__*, i8*)** %21, align 8
  %23 = icmp eq i32* (%struct.TYPE_6__*, i8*)* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @DSO_F_DSO_BIND_FUNC, align 4
  %26 = load i32, i32* @DSO_R_UNSUPPORTED, align 4
  %27 = call i32 @DSOerr(i32 %25, i32 %26)
  store i32* null, i32** %3, align 8
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32* (%struct.TYPE_6__*, i8*)**
  %34 = load i32* (%struct.TYPE_6__*, i8*)*, i32* (%struct.TYPE_6__*, i8*)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32* %34(%struct.TYPE_6__* %35, i8* %36)
  store i32* %37, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @DSO_F_DSO_BIND_FUNC, align 4
  %41 = load i32, i32* @DSO_R_SYM_FAILURE, align 4
  %42 = call i32 @DSOerr(i32 %40, i32 %41)
  store i32* null, i32** %3, align 8
  br label %45

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %39, %24, %12
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @DSOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
