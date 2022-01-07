; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_bnrand_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_bnrand_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }

@BN_F_BNRAND_RANGE = common dso_local global i32 0, align 4
@BN_R_INVALID_RANGE = common dso_local global i32 0, align 4
@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_R_TOO_MANY_ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*, %struct.TYPE_15__*)* @bnrand_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnrand_range(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 100, i32* %9, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = call i64 @BN_is_zero(%struct.TYPE_15__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %20 = load i32, i32* @BN_R_INVALID_RANGE, align 4
  %21 = call i32 @BNerr(i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %123

22:                                               ; preds = %14
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = call i32 @BN_num_bits(%struct.TYPE_15__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = call i32 @BN_zero(%struct.TYPE_15__* %28)
  br label %120

30:                                               ; preds = %22
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 2
  %34 = call i32 @BN_is_bit_set(%struct.TYPE_15__* %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 3
  %40 = call i32 @BN_is_bit_set(%struct.TYPE_15__* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %94, label %42

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %88, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %49 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %50 = call i32 @bnrand(i32 %44, %struct.TYPE_15__* %45, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %123

53:                                               ; preds = %43
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = call i64 @BN_cmp(%struct.TYPE_15__* %54, %struct.TYPE_15__* %55)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = call i32 @BN_sub(%struct.TYPE_15__* %59, %struct.TYPE_15__* %60, %struct.TYPE_15__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %123

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = call i64 @BN_cmp(%struct.TYPE_15__* %66, %struct.TYPE_15__* %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = call i32 @BN_sub(%struct.TYPE_15__* %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %123

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %85 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %86 = call i32 @BNerr(i32 %84, i32 %85)
  store i32 0, i32* %4, align 4
  br label %123

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = call i64 @BN_cmp(%struct.TYPE_15__* %89, %struct.TYPE_15__* %90)
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %43, label %93

93:                                               ; preds = %88
  br label %119

94:                                               ; preds = %36, %30
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %100 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %101 = call i32 @bnrand(i32 %96, %struct.TYPE_15__* %97, i32 %98, i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %123

104:                                              ; preds = %95
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %110 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %111 = call i32 @BNerr(i32 %109, i32 %110)
  store i32 0, i32* %4, align 4
  br label %123

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = call i64 @BN_cmp(%struct.TYPE_15__* %114, %struct.TYPE_15__* %115)
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %95, label %118

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %93
  br label %120

120:                                              ; preds = %119, %27
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = call i32 @bn_check_top(%struct.TYPE_15__* %121)
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %108, %103, %83, %76, %64, %52, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @BN_is_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_num_bits(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_is_bit_set(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bnrand(i32, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @BN_cmp(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @BN_sub(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
