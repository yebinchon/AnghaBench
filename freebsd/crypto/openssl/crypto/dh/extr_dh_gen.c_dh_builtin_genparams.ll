; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_gen.c_dh_builtin_genparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_gen.c_dh_builtin_genparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@DH_F_DH_BUILTIN_GENPARAMS = common dso_local global i32 0, align 4
@DH_R_BAD_GENERATOR = common dso_local global i32 0, align 4
@DH_GENERATOR_2 = common dso_local global i32 0, align 4
@DH_GENERATOR_5 = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @dh_builtin_genparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_builtin_genparams(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = call i32* (...) @BN_CTX_new()
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %127

18:                                               ; preds = %4
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @BN_CTX_start(i32* %19)
  %21 = load i32*, i32** %13, align 8
  %22 = call i32* @BN_CTX_get(i32* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32* @BN_CTX_get(i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %127

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = call i8* (...) @BN_new()
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %127

40:                                               ; preds = %33, %28
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = call i8* (...) @BN_new()
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %127

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %57 = load i32, i32* @DH_R_BAD_GENERATOR, align 4
  %58 = call i32 @DHerr(i32 %56, i32 %57)
  br label %127

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DH_GENERATOR_2, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @BN_set_word(i32* %64, i32 24)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %127

68:                                               ; preds = %63
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @BN_set_word(i32* %69, i32 11)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %127

73:                                               ; preds = %68
  store i32 2, i32* %11, align 4
  br label %102

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @DH_GENERATOR_5, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @BN_set_word(i32* %79, i32 60)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %127

83:                                               ; preds = %78
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @BN_set_word(i32* %84, i32 23)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %127

88:                                               ; preds = %83
  store i32 5, i32* %11, align 4
  br label %101

89:                                               ; preds = %74
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @BN_set_word(i32* %90, i32 12)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %127

94:                                               ; preds = %89
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @BN_set_word(i32* %95, i32 11)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  br label %127

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %88
  br label %102

102:                                              ; preds = %101, %73
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @BN_generate_prime_ex(i32* %105, i32 %106, i32 1, i32* %107, i32* %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %127

113:                                              ; preds = %102
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @BN_GENCB_call(i32* %114, i32 3, i32 0)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %127

118:                                              ; preds = %113
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @BN_set_word(i32* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %127

126:                                              ; preds = %118
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %125, %117, %112, %98, %93, %87, %82, %72, %67, %55, %51, %39, %27, %17
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %132 = load i32, i32* @ERR_R_BN_LIB, align 4
  %133 = call i32 @DHerr(i32 %131, i32 %132)
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @BN_CTX_end(i32* %135)
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @BN_CTX_free(i32* %137)
  %139 = load i32, i32* %12, align 4
  ret i32 %139
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
