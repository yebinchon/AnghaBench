; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)* }

@EC_FLAGS_CUSTOM_CURVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_cmp(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %15, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = call i32 @EC_GROUP_method_of(%struct.TYPE_14__* %20)
  %22 = call i64 @EC_METHOD_get_field_type(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = call i32 @EC_GROUP_method_of(%struct.TYPE_14__* %23)
  %25 = call i64 @EC_METHOD_get_field_type(i32 %24)
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %183

28:                                               ; preds = %3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = call i64 @EC_GROUP_get_curve_name(%struct.TYPE_14__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = call i64 @EC_GROUP_get_curve_name(%struct.TYPE_14__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i64 @EC_GROUP_get_curve_name(%struct.TYPE_14__* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i64 @EC_GROUP_get_curve_name(%struct.TYPE_14__* %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %183

43:                                               ; preds = %36, %32, %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EC_FLAGS_CUSTOM_CURVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %183

53:                                               ; preds = %43
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32* (...) @BN_CTX_new()
  store i32* %57, i32** %7, align 8
  store i32* %57, i32** %15, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32*, i32** %7, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %183

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @BN_CTX_start(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32* @BN_CTX_get(i32* %65)
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @BN_CTX_get(i32* %67)
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32* @BN_CTX_get(i32* %69)
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @BN_CTX_get(i32* %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32* @BN_CTX_get(i32* %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32* @BN_CTX_get(i32* %75)
  store i32* %76, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %62
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @BN_CTX_end(i32* %80)
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @BN_CTX_free(i32* %82)
  store i32 -1, i32* %4, align 4
  br label %183

84:                                               ; preds = %62
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 %89(%struct.TYPE_14__* %90, i32* %91, i32* %92, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %84
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 %102(%struct.TYPE_14__* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %97, %84
  store i32 1, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = call i64 @BN_cmp(i32* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i64 @BN_cmp(i32* %120, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = call i64 @BN_cmp(i32* %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119, %114, %111
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %124
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = call i32 @EC_GROUP_get0_generator(%struct.TYPE_14__* %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = call i32 @EC_GROUP_get0_generator(%struct.TYPE_14__* %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i64 @EC_POINT_cmp(%struct.TYPE_14__* %134, i32 %136, i32 %138, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133, %130
  store i32 1, i32* %8, align 4
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %177, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = call i32* @EC_GROUP_get0_order(%struct.TYPE_14__* %147)
  store i32* %148, i32** %16, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = call i32* @EC_GROUP_get0_order(%struct.TYPE_14__* %149)
  store i32* %150, i32** %17, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = call i32* @EC_GROUP_get0_cofactor(%struct.TYPE_14__* %151)
  store i32* %152, i32** %18, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = call i32* @EC_GROUP_get0_cofactor(%struct.TYPE_14__* %153)
  store i32* %154, i32** %19, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %146
  %158 = load i32*, i32** %17, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157, %146
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @BN_CTX_end(i32* %161)
  %163 = load i32*, i32** %15, align 8
  %164 = call i32 @BN_CTX_free(i32* %163)
  store i32 -1, i32* %4, align 4
  br label %183

165:                                              ; preds = %157
  %166 = load i32*, i32** %16, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = call i64 @BN_cmp(i32* %166, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i32*, i32** %18, align 8
  %172 = load i32*, i32** %19, align 8
  %173 = call i64 @BN_cmp(i32* %171, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %165
  store i32 1, i32* %8, align 4
  br label %176

176:                                              ; preds = %175, %170
  br label %177

177:                                              ; preds = %176, %143
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @BN_CTX_end(i32* %178)
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @BN_CTX_free(i32* %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %160, %79, %61, %52, %42, %27
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(%struct.TYPE_14__*) #1

declare dso_local i64 @EC_GROUP_get_curve_name(%struct.TYPE_14__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @EC_GROUP_get0_generator(%struct.TYPE_14__*) #1

declare dso_local i32* @EC_GROUP_get0_order(%struct.TYPE_14__*) #1

declare dso_local i32* @EC_GROUP_get0_cofactor(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
