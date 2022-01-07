; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32*, i8* }

@HKDF_MAXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @pkey_hkdf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_hkdf_ctrl(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
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
  switch i32 %14, label %135 [
    i32 130, label %15
    i32 129, label %23
    i32 128, label %27
    i32 131, label %67
    i32 132, label %100
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %136

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  store i32 1, i32* %5, align 4
  br label %136

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 1, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i32 1, i32* %5, align 4
  br label %136

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %136

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OPENSSL_clear_free(i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @OPENSSL_memdup(i8* %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %136

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 1, i32* %5, align 4
  br label %136

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %136

71:                                               ; preds = %67
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @OPENSSL_clear_free(i32* %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i8* @OPENSSL_memdup(i8* %85, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %136

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  store i32 1, i32* %5, align 4
  br label %136

100:                                              ; preds = %4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %100
  store i32 1, i32* %5, align 4
  br label %136

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @HKDF_MAXBUF, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = icmp sgt i32 %111, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110, %107
  store i32 0, i32* %5, align 4
  br label %136

119:                                              ; preds = %110
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @memcpy(i32 %126, i8* %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  store i32 1, i32* %5, align 4
  br label %136

135:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %119, %118, %106, %96, %95, %70, %63, %62, %37, %33, %23, %19, %18
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @OPENSSL_clear_free(i32*, i32) #1

declare dso_local i8* @OPENSSL_memdup(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
