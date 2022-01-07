; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_pkey_tls1_prf_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_pkey_tls1_prf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i8* }

@TLS1_PRF_MAXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @pkey_tls1_prf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_tls1_prf_ctrl(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %95 [
    i32 130, label %15
    i32 129, label %19
    i32 128, label %60
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  store i32 1, i32* %5, align 4
  br label %96

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %96

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @OPENSSL_clear_free(i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @OPENSSL_cleanse(i32 %39, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32* @OPENSSL_memdup(i8* %46, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %96

56:                                               ; preds = %36
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 1, i32* %5, align 4
  br label %96

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store i32 1, i32* %5, align 4
  br label %96

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TLS1_PRF_MAXBUF, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = icmp sgt i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %67
  store i32 0, i32* %5, align 4
  br label %96

79:                                               ; preds = %70
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @memcpy(i32 %86, i8* %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  store i32 1, i32* %5, align 4
  br label %96

95:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %79, %78, %66, %56, %55, %22, %15
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @OPENSSL_clear_free(i32*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

declare dso_local i32* @OPENSSL_memdup(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
