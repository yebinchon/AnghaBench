; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_get_min_max_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_get_min_max_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* (...)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@tls_version_table = common dso_local global %struct.TYPE_12__* null, align 8
@dtls_version_table = common dso_local global %struct.TYPE_12__* null, align 8
@SSL_R_NO_PROTOCOLS_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_get_min_max_version(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %22 [
    i32 128, label %36
    i32 129, label %38
  ]

22:                                               ; preds = %4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ossl_assert(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  store i32 %34, i32* %5, align 4
  br label %115

35:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %115

36:                                               ; preds = %4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tls_version_table, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %15, align 8
  br label %40

38:                                               ; preds = %4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtls_version_table, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %15, align 8
  br label %40

40:                                               ; preds = %38, %36
  store i32 0, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  store i32 1, i32* %12, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %40
  store i32 0, i32* %11, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %16, align 8
  br label %48

48:                                               ; preds = %104, %46
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__* (...)*, %struct.TYPE_13__* (...)** %55, align 8
  %57 = icmp eq %struct.TYPE_13__* (...)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %104

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_13__* (...)*, %struct.TYPE_13__* (...)** %61, align 8
  %63 = call %struct.TYPE_13__* (...) %62()
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %14, align 8
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %66, %59
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %76 = call i64 @ssl_method_error(%struct.TYPE_14__* %74, %struct.TYPE_13__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %12, align 4
  br label %103

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %102

87:                                               ; preds = %79
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90, %87
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %96, %82
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %58
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 1
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %16, align 8
  br label %48

107:                                              ; preds = %48
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @SSL_R_NO_PROTOCOLS_AVAILABLE, align 4
  store i32 %113, i32* %5, align 4
  br label %115

114:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %112, %35, %33
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @ssl_method_error(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
