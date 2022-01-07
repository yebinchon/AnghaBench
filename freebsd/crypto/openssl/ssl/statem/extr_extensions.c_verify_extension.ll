; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_verify_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_verify_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ext_defs = common dso_local global %struct.TYPE_7__* null, align 8
@ENDPOINT_BOTH = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_SERVER = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, i32**)* @verify_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_extension(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ext_defs, align 8
  %21 = call i64 @OSSL_NELEM(%struct.TYPE_7__* %20)
  store i64 %21, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ext_defs, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %16, align 8
  br label %23

23:                                               ; preds = %48, %6
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @validate_context(i32* %34, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %98

42:                                               ; preds = %33
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32**, i32*** %13, align 8
  store i32* %45, i32** %46, align 8
  store i32 1, i32* %7, align 4
  br label %98

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %14, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 1
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %16, align 8
  br label %23

53:                                               ; preds = %23
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %53
  store i64 0, i64* %17, align 8
  %57 = load i32, i32* @ENDPOINT_BOTH, align 4
  store i32 %57, i32* %18, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ENDPOINT_SERVER, align 4
  store i32 %63, i32* %18, align 4
  br label %72

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @ENDPOINT_CLIENT, align 4
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.TYPE_6__* @custom_ext_find(i32* %73, i32 %74, i32 %75, i64* %17)
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %19, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @validate_context(i32* %80, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %98

88:                                               ; preds = %79
  %89 = load i32*, i32** %12, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32**, i32*** %13, align 8
  store i32* %93, i32** %94, align 8
  store i32 1, i32* %7, align 4
  br label %98

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i32**, i32*** %13, align 8
  store i32* null, i32** %97, align 8
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %88, %87, %42, %41
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_7__*) #1

declare dso_local i32 @validate_context(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @custom_ext_find(i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
