; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* }

@EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_INVALID_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @BN_num_bits(i32* %15)
  %17 = icmp sle i32 %16, 2
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @BN_is_odd(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %5
  %23 = load i32, i32* @EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE, align 4
  %24 = load i32, i32* @EC_R_INVALID_FIELD, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %151

26:                                               ; preds = %18
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = call i32* (...) @BN_CTX_new()
  store i32* %30, i32** %13, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %151

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @BN_CTX_start(i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %145

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @BN_copy(i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %145

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @BN_set_negative(i32* %54, i32 0)
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @BN_nnmod(i32* %56, i32* %57, i32* %58, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %145

63:                                               ; preds = %51
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 %75(%struct.TYPE_7__* %76, i32* %79, i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %70
  br label %145

85:                                               ; preds = %70
  br label %95

86:                                               ; preds = %63
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @BN_copy(i32* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %145

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %85
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @BN_nnmod(i32* %98, i32* %99, i32* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %145

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %109, align 8
  %111 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 %117(%struct.TYPE_7__* %118, i32* %121, i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %112
  br label %145

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %105
  %131 = load i32*, i32** %14, align 8
  %132 = call i32 @BN_add_word(i32* %131, i32 3)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %145

135:                                              ; preds = %130
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @BN_cmp(i32* %136, i32* %139)
  %141 = icmp eq i64 0, %140
  %142 = zext i1 %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %135, %134, %128, %104, %93, %84, %62, %50, %42
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @BN_CTX_end(i32* %146)
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @BN_CTX_free(i32* %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %145, %33, %22
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
