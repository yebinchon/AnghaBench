; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@BIO_F_BIO_CTRL = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_CB_CTRL = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BIO_ctrl(%struct.TYPE_7__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %86

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i64 (%struct.TYPE_7__*, i32, i64, i8*)**
  %25 = load i64 (%struct.TYPE_7__*, i32, i64, i8*)*, i64 (%struct.TYPE_7__*, i32, i64, i8*)** %24, align 8
  %26 = icmp eq i64 (%struct.TYPE_7__*, i32, i64, i8*)* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %14
  %28 = load i32, i32* @BIO_F_BIO_CTRL, align 4
  %29 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %30 = call i32 @BIOerr(i32 %28, i32 %29)
  store i64 -2, i64* %5, align 8
  br label %86

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @BIO_CB_CTRL, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @bio_call_callback(%struct.TYPE_7__* %42, i32 %43, i8* %44, i32 0, i32 %45, i64 %46, i64 1, i32* null)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %5, align 8
  br label %86

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i64 (%struct.TYPE_7__*, i32, i64, i8*)**
  %59 = load i64 (%struct.TYPE_7__*, i32, i64, i8*)*, i64 (%struct.TYPE_7__*, i32, i64, i8*)** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 %59(%struct.TYPE_7__* %60, i32 %61, i64 %62, i8* %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %53
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %69, %53
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load i32, i32* @BIO_CB_CTRL, align 4
  %77 = load i32, i32* @BIO_CB_RETURN, align 4
  %78 = or i32 %76, %77
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @bio_call_callback(%struct.TYPE_7__* %75, i32 %78, i8* %79, i32 0, i32 %80, i64 %81, i64 %82, i32* null)
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %74, %69
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %84, %50, %27, %13
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i32, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
