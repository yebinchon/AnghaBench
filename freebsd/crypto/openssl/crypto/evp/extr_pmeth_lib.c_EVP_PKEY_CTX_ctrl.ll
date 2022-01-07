; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32, i32* }

@EVP_F_EVP_PKEY_CTX_CTRL = common dso_local global i32 0, align 4
@EVP_R_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i32 0, align 4
@EVP_R_NO_OPERATION_SET = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_6__*, i32, i32, i8*)* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22, %17, %6
  %30 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %31 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %32 = call i32 @EVPerr(i32 %30, i32 %31)
  store i32 -2, i32* %7, align 4
  br label %97

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %97

45:                                               ; preds = %36, %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %78

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EVP_PKEY_OP_UNDEFINED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %61 = load i32, i32* @EVP_R_NO_OPERATION_SET, align 4
  %62 = call i32 @EVPerr(i32 %60, i32 %61)
  store i32 -1, i32* %7, align 4
  br label %97

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %75 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %76 = call i32 @EVPerr(i32 %74, i32 %75)
  store i32 -1, i32* %7, align 4
  br label %97

77:                                               ; preds = %66, %63
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 %83(%struct.TYPE_6__* %84, i32 %85, i32 %86, i8* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, -2
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %93 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %94 = call i32 @EVPerr(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %78
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %73, %59, %44, %29
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
