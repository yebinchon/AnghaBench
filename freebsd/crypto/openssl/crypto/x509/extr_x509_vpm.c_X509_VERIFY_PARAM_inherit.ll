; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vpm.c_X509_VERIFY_PARAM_inherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vpm.c_X509_VERIFY_PARAM_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@X509_VP_FLAG_ONCE = common dso_local global i64 0, align 8
@X509_VP_FLAG_LOCKED = common dso_local global i64 0, align 8
@X509_VP_FLAG_DEFAULT = common dso_local global i64 0, align 8
@X509_VP_FLAG_OVERWRITE = common dso_local global i64 0, align 8
@purpose = common dso_local global i32 0, align 4
@trust = common dso_local global i32 0, align 4
@X509_TRUST_DEFAULT = common dso_local global i32 0, align 4
@depth = common dso_local global i32 0, align 4
@auth_level = common dso_local global i32 0, align 4
@X509_V_FLAG_USE_CHECK_TIME = common dso_local global i32 0, align 4
@X509_VP_FLAG_RESET_FLAGS = common dso_local global i64 0, align 8
@policies = common dso_local global i32 0, align 4
@hosts = common dso_local global i32 0, align 4
@str_free = common dso_local global i32 0, align 4
@str_copy = common dso_local global i32 0, align 4
@email = common dso_local global i32 0, align 4
@ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_VERIFY_PARAM_inherit(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %176

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %15, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @X509_VP_FLAG_ONCE, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %12
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @X509_VP_FLAG_LOCKED, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %176

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @X509_VP_FLAG_DEFAULT, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @X509_VP_FLAG_OVERWRITE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* @purpose, align 4
  %49 = call i32 @x509_verify_param_copy(i32 %48, i32 0)
  %50 = load i32, i32* @trust, align 4
  %51 = load i32, i32* @X509_TRUST_DEFAULT, align 4
  %52 = call i32 @x509_verify_param_copy(i32 %50, i32 %51)
  %53 = load i32, i32* @depth, align 4
  %54 = call i32 @x509_verify_param_copy(i32 %53, i32 -1)
  %55 = load i32, i32* @auth_level, align 4
  %56 = call i32 @x509_verify_param_copy(i32 %55, i32 -1)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %47
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @X509_V_FLAG_USE_CHECK_TIME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59, %47
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @X509_V_FLAG_USE_CHECK_TIME, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %66, %59
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @X509_VP_FLAG_RESET_FLAGS, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @policies, align 4
  %95 = call i64 @test_x509_verify_param_copy(i32 %94, i32* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @X509_VERIFY_PARAM_set1_policies(%struct.TYPE_7__* %98, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %176

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i32, i32* @hosts, align 4
  %108 = call i64 @test_x509_verify_param_copy(i32 %107, i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %106
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @str_free, align 4
  %115 = call i32 @sk_OPENSSL_STRING_pop_free(i32* %113, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 7
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %110
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @str_copy, align 4
  %127 = load i32, i32* @str_free, align 4
  %128 = call i32* @sk_OPENSSL_STRING_deep_copy(i32* %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 7
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %176

136:                                              ; preds = %122
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %110
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i32, i32* @email, align 4
  %145 = call i64 @test_x509_verify_param_copy(i32 %144, i32* null)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @X509_VERIFY_PARAM_set1_email(%struct.TYPE_7__* %148, i32 %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %176

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %143
  %160 = load i32, i32* @ip, align 4
  %161 = call i64 @test_x509_verify_param_copy(i32 %160, i32* null)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @X509_VERIFY_PARAM_set1_ip(%struct.TYPE_7__* %164, i32 %167, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %176

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %159
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %173, %157, %135, %104, %32, %11
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @x509_verify_param_copy(i32, i32) #1

declare dso_local i64 @test_x509_verify_param_copy(i32, i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_policies(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sk_OPENSSL_STRING_pop_free(i32*, i32) #1

declare dso_local i32* @sk_OPENSSL_STRING_deep_copy(i32*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_email(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_ip(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
