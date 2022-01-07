; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_callback_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_callback_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@BIO_CTRL_SET_CALLBACK = common dso_local global i32 0, align 4
@BIO_F_BIO_CALLBACK_CTRL = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_CB_CTRL = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BIO_callback_ctrl(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %85

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i64 (%struct.TYPE_7__*, i32, i32*)**
  %23 = load i64 (%struct.TYPE_7__*, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32*)** %22, align 8
  %24 = icmp eq i64 (%struct.TYPE_7__*, i32, i32*)* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BIO_CTRL_SET_CALLBACK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %17, %12
  %30 = load i32, i32* @BIO_F_BIO_CALLBACK_CTRL, align 4
  %31 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %32 = call i32 @BIOerr(i32 %30, i32 %31)
  store i64 -2, i64* %4, align 8
  br label %85

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i32, i32* @BIO_CB_CTRL, align 4
  %46 = bitcast i32** %7 to i8*
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @bio_call_callback(%struct.TYPE_7__* %44, i32 %45, i8* %46, i32 0, i32 %47, i32 0, i64 1, i32* null)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %85

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i64 (%struct.TYPE_7__*, i32, i32*)**
  %60 = load i64 (%struct.TYPE_7__*, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32*)** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 %60(%struct.TYPE_7__* %61, i32 %62, i32* %63)
  store i64 %64, i64* %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %54
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69, %54
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load i32, i32* @BIO_CB_CTRL, align 4
  %77 = load i32, i32* @BIO_CB_RETURN, align 4
  %78 = or i32 %76, %77
  %79 = bitcast i32** %7 to i8*
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @bio_call_callback(%struct.TYPE_7__* %75, i32 %78, i8* %79, i32 0, i32 %80, i32 0, i64 %81, i32* null)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %51, %29, %11
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i32, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
