; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { {}*, {}* }

@.str = private unnamed_addr constant [4 x i8] c"DSO\00", align 1
@DSO_FLAG_NO_UNLOAD_ON_FREE = common dso_local global i32 0, align 4
@DSO_F_DSO_FREE = common dso_local global i32 0, align 4
@DSO_R_UNLOAD_FAILED = common dso_local global i32 0, align 4
@DSO_R_FINISH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSO_free(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %98

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @CRYPTO_DOWN_REF(i32* %10, i32* %4, i32 %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %98

17:                                               ; preds = %8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %98

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @REF_ASSERT_ISNT(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DSO_FLAG_NO_UNLOAD_ON_FREE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %23
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_9__*)**
  %40 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_9__*)* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = bitcast {}** %46 to i32 (%struct.TYPE_9__*)**
  %48 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call i32 %48(%struct.TYPE_9__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @DSO_F_DSO_FREE, align 4
  %54 = load i32, i32* @DSO_R_UNLOAD_FAILED, align 4
  %55 = call i32 @DSOerr(i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %98

56:                                               ; preds = %42, %34
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.TYPE_9__*)**
  %63 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_9__*)* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.TYPE_9__*)**
  %71 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i32 %71(%struct.TYPE_9__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @DSO_F_DSO_FREE, align 4
  %77 = load i32, i32* @DSO_R_FINISH_FAILED, align 4
  %78 = call i32 @DSOerr(i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %98

79:                                               ; preds = %65, %57
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sk_void_free(i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @OPENSSL_free(%struct.TYPE_9__* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @OPENSSL_free(%struct.TYPE_9__* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CRYPTO_THREAD_lock_free(i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = call i32 @OPENSSL_free(%struct.TYPE_9__* %96)
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %79, %75, %52, %22, %16, %7
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @CRYPTO_DOWN_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @DSOerr(i32, i32) #1

declare dso_local i32 @sk_void_free(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_9__*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
