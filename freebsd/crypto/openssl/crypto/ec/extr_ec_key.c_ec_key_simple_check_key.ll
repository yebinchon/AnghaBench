; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_check_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32* }

@EC_F_EC_KEY_SIMPLE_CHECK_KEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@EC_R_POINT_IS_NOT_ON_CURVE = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_WRONG_ORDER = common dso_local global i32 0, align 4
@EC_R_INVALID_PRIVATE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_key_simple_check_key(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp eq %struct.TYPE_8__* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %10, %1
  %21 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %22 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %23 = call i32 @ECerr(i32 %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %156

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_9__* %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %35 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %150

37:                                               ; preds = %24
  %38 = call i32* (...) @BN_CTX_new()
  store i32* %38, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %150

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = call i32* @EC_POINT_new(%struct.TYPE_9__* %44)
  store i32* %45, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %150

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @EC_POINT_is_on_curve(%struct.TYPE_9__* %51, i32* %54, i32* %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %60 = load i32, i32* @EC_R_POINT_IS_NOT_ON_CURVE, align 4
  %61 = call i32 @ECerr(i32 %59, i32 %60)
  br label %150

62:                                               ; preds = %48
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @BN_is_zero(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %73 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %74 = call i32 @ECerr(i32 %72, i32 %73)
  br label %150

75:                                               ; preds = %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @EC_POINT_mul(%struct.TYPE_9__* %78, i32* %79, i32* null, i32* %82, i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %89 = load i32, i32* @ERR_R_EC_LIB, align 4
  %90 = call i32 @ECerr(i32 %88, i32 %89)
  br label %150

91:                                               ; preds = %75
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_9__* %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %100 = load i32, i32* @EC_R_WRONG_ORDER, align 4
  %101 = call i32 @ECerr(i32 %99, i32 %100)
  br label %150

102:                                              ; preds = %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %149

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i64 @BN_cmp(i32* %110, i32* %111)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %116 = load i32, i32* @EC_R_WRONG_ORDER, align 4
  %117 = call i32 @ECerr(i32 %115, i32 %116)
  br label %150

118:                                              ; preds = %107
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @EC_POINT_mul(%struct.TYPE_9__* %121, i32* %122, i32* %125, i32* null, i32* null, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %118
  %130 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %131 = load i32, i32* @ERR_R_EC_LIB, align 4
  %132 = call i32 @ECerr(i32 %130, i32 %131)
  br label %150

133:                                              ; preds = %118
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i64 @EC_POINT_cmp(%struct.TYPE_9__* %136, i32* %137, i32* %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %146 = load i32, i32* @EC_R_INVALID_PRIVATE_KEY, align 4
  %147 = call i32 @ECerr(i32 %145, i32 %146)
  br label %150

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %102
  store i32 1, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %144, %129, %114, %98, %87, %71, %58, %47, %40, %33
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @BN_CTX_free(i32* %151)
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @EC_POINT_free(i32* %153)
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %20
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_9__*) #1

declare dso_local i64 @EC_POINT_is_on_curve(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(%struct.TYPE_9__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_9__*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
