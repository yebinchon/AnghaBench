; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_paramgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_paramgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i64 }

@EVP_PKEY_DHX = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @pkey_dh_paramgen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dh_paramgen(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
  ]

22:                                               ; preds = %18
  %23 = call i32* (...) @DH_get_1024_160()
  store i32* %23, i32** %6, align 8
  br label %29

24:                                               ; preds = %18
  %25 = call i32* (...) @DH_get_2048_224()
  store i32* %25, i32** %6, align 8
  br label %29

26:                                               ; preds = %18
  %27 = call i32* (...) @DH_get_2048_256()
  store i32* %27, i32** %6, align 8
  br label %29

28:                                               ; preds = %18
  store i32 -2, i32* %3, align 4
  br label %123

29:                                               ; preds = %26, %24, %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @EVP_PKEY_DHX, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @EVP_PKEY_assign(i32* %30, i32 %31, i32* %32)
  store i32 1, i32* %3, align 4
  br label %123

34:                                               ; preds = %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @DH_new_by_nid(i64 %42)
  store i32* %43, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %123

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @EVP_PKEY_DH, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @EVP_PKEY_assign(i32* %47, i32 %48, i32* %49)
  store i32 1, i32* %3, align 4
  br label %123

51:                                               ; preds = %34
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = call i32* (...) @BN_GENCB_new()
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %123

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = call i32 @evp_pkey_set_cb_translate(i32* %62, %struct.TYPE_6__* %63)
  br label %66

65:                                               ; preds = %51
  store i32* null, i32** %8, align 8
  br label %66

66:                                               ; preds = %65, %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @dsa_dh_generate(%struct.TYPE_7__* %72, i32* %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @BN_GENCB_free(i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %123

80:                                               ; preds = %71
  %81 = load i32*, i32** %10, align 8
  %82 = call i32* @DSA_dup_DH(i32* %81)
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @DSA_free(i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %123

88:                                               ; preds = %80
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @EVP_PKEY_DHX, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @EVP_PKEY_assign(i32* %89, i32 %90, i32* %91)
  store i32 1, i32* %3, align 4
  br label %123

93:                                               ; preds = %66
  %94 = call i32* (...) @DH_new()
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @BN_GENCB_free(i32* %98)
  store i32 0, i32* %3, align 4
  br label %123

100:                                              ; preds = %93
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @DH_generate_parameters_ex(i32* %101, i32 %104, i32 %107, i32* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @BN_GENCB_free(i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @EVP_PKEY_assign_DH(i32* %115, i32* %116)
  br label %121

118:                                              ; preds = %100
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @DH_free(i32* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %97, %88, %87, %79, %60, %46, %45, %29, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32* @DH_get_1024_160(...) #1

declare dso_local i32* @DH_get_2048_224(...) #1

declare dso_local i32* @DH_get_2048_256(...) #1

declare dso_local i32 @EVP_PKEY_assign(i32*, i32, i32*) #1

declare dso_local i32* @DH_new_by_nid(i64) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @evp_pkey_set_cb_translate(i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @dsa_dh_generate(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32* @DSA_dup_DH(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32 @DH_generate_parameters_ex(i32*, i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DH(i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
