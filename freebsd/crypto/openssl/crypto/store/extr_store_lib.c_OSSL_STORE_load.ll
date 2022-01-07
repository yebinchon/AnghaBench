; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i32, i32* (i32*, i32)*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* (i32, i32, i32)* }

@OSSL_STORE_INFO_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OSSL_STORE_load(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  br label %8

8:                                                ; preds = %89, %47, %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i64 @OSSL_STORE_eof(%struct.TYPE_6__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %96

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32* (i32, i32, i32)*, i32* (i32, i32, i32)** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32* %18(i32 %21, i32 %24, i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32* (i32*, i32)*, i32* (i32*, i32)** %30, align 8
  %32 = icmp ne i32* (i32*, i32)* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %13
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32* (i32*, i32)*, i32* (i32*, i32)** %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32* %39(i32* %40, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %8

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %33, %13
  %50 = load i32*, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %94

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @OSSL_STORE_INFO_get_type(i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @OSSL_STORE_INFO_NAME, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  br label %82

82:                                               ; preds = %73, %66
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @OSSL_STORE_INFO_free(i32* %90)
  br label %8

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %63, %57
  br label %94

94:                                               ; preds = %93, %52, %49
  %95 = load i32*, i32** %4, align 8
  store i32* %95, i32** %2, align 8
  br label %96

96:                                               ; preds = %94, %12
  %97 = load i32*, i32** %2, align 8
  ret i32* %97
}

declare dso_local i64 @OSSL_STORE_eof(%struct.TYPE_6__*) #1

declare dso_local i32 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
