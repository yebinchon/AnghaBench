; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32*, i32* }

@NID_undef = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_NONE = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_X9_42 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8*)* @pkey_dh_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dh_ctrl(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %178 [
    i32 136, label %15
    i32 135, label %23
    i32 138, label %33
    i32 137, label %37
    i32 134, label %47
    i32 133, label %58
    i32 139, label %75
    i32 128, label %88
    i32 141, label %89
    i32 144, label %109
    i32 132, label %114
    i32 142, label %120
    i32 130, label %129
    i32 140, label %136
    i32 129, label %154
    i32 143, label %163
    i32 131, label %172
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -2, i32* %5, align 4
  br label %179

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 1, i32* %5, align 4
  br label %179

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -2, i32* %5, align 4
  br label %179

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 1, i32* %5, align 4
  br label %179

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  store i32 1, i32* %5, align 4
  br label %179

37:                                               ; preds = %4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -2, i32* %5, align 4
  br label %179

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  store i32 1, i32* %5, align 4
  br label %179

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47
  store i32 -2, i32* %5, align 4
  br label %179

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %5, align 4
  br label %179

58:                                               ; preds = %4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NID_undef, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %61, %58
  store i32 -2, i32* %5, align 4
  br label %179

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  store i32 1, i32* %5, align 4
  br label %179

75:                                               ; preds = %4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %75
  store i32 -2, i32* %5, align 4
  br label %179

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %5, align 4
  br label %179

88:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %179

89:                                               ; preds = %4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -2
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  br label %179

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @EVP_PKEY_DH_KDF_NONE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @EVP_PKEY_DH_KDF_X9_42, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -2, i32* %5, align 4
  br label %179

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  store i32 1, i32* %5, align 4
  br label %179

109:                                              ; preds = %4
  %110 = load i8*, i8** %9, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 12
  store i32* %111, i32** %113, align 8
  store i32 1, i32* %5, align 4
  br label %179

114:                                              ; preds = %4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 12
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = bitcast i8* %118 to i32**
  store i32* %117, i32** %119, align 8
  store i32 1, i32* %5, align 4
  br label %179

120:                                              ; preds = %4
  %121 = load i32, i32* %8, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 -2, i32* %5, align 4
  br label %179

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  store i64 %126, i64* %128, align 8
  store i32 1, i32* %5, align 4
  br label %179

129:                                              ; preds = %4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i8*, i8** %9, align 8
  %135 = bitcast i8* %134 to i32*
  store i32 %133, i32* %135, align 4
  store i32 1, i32* %5, align 4
  br label %179

136:                                              ; preds = %4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @OPENSSL_free(i8* %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 9
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 8
  br label %153

150:                                              ; preds = %136
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 10
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %146
  store i32 1, i32* %5, align 4
  br label %179

154:                                              ; preds = %4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 9
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = bitcast i8* %158 to i8**
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %5, align 4
  br label %179

163:                                              ; preds = %4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 11
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @ASN1_OBJECT_free(i32* %166)
  %168 = load i8*, i8** %9, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 11
  store i32* %169, i32** %171, align 8
  store i32 1, i32* %5, align 4
  br label %179

172:                                              ; preds = %4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 11
  %175 = load i32*, i32** %174, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = bitcast i8* %176 to i32**
  store i32* %175, i32** %177, align 8
  store i32 1, i32* %5, align 4
  br label %179

178:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %172, %163, %154, %153, %129, %124, %123, %114, %109, %105, %104, %92, %88, %84, %83, %71, %70, %54, %53, %43, %42, %33, %29, %28, %19, %18
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
