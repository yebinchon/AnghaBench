; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_hx509_ca_tbs_set_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_hx509_ca_tbs_set_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }

@HX509_CA_TEMPLATE_SUBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get subject from template\00", align 1
@HX509_CA_TEMPLATE_SERIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to copy serial number\00", align 1
@HX509_CA_TEMPLATE_NOTBEFORE = common dso_local global i32 0, align 4
@HX509_CA_TEMPLATE_NOTAFTER = common dso_local global i32 0, align 4
@HX509_CA_TEMPLATE_SPKI = common dso_local global i32 0, align 4
@HX509_CA_TEMPLATE_KU = common dso_local global i32 0, align 4
@HX509_CA_TEMPLATE_EKU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_ca_tbs_set_template(i32 %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @HX509_CA_TEMPLATE_SUBJECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  %26 = call i32 @hx509_name_free(i64* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  %31 = call i32 @hx509_cert_get_subject(i32 %28, i64* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @hx509_set_error_string(i32 %35, i32 0, i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %171

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HX509_CA_TEMPLATE_SERIAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = call i32 @der_free_heim_integer(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = call i32 @hx509_cert_get_serialnumber(i32 %49, i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @hx509_set_error_string(i32 %63, i32 0, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %171

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @HX509_CA_TEMPLATE_NOTBEFORE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @hx509_cert_get_notBefore(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @HX509_CA_TEMPLATE_NOTAFTER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @hx509_cert_get_notAfter(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @HX509_CA_TEMPLATE_SPKI, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = call i32 @free_SubjectPublicKeyInfo(i32* %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = call i32 @hx509_cert_get_SPKI(i32 %97, i32 %98, i32* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %93
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %5, align 4
  br label %171

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @HX509_CA_TEMPLATE_KU, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @_hx509_cert_get_keyusage(i32 %120, i32 %121, i32* %11)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %171

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @KeyUsage2int(i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %114
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @HX509_CA_TEMPLATE_EKU, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @_hx509_cert_get_eku(i32 %138, i32 %139, %struct.TYPE_10__* %12)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %5, align 4
  br label %171

145:                                              ; preds = %137
  store i64 0, i64* %13, align 8
  br label %146

146:                                              ; preds = %165, %145
  %147 = load i64, i64* %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %147, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %13, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = call i32 @hx509_ca_tbs_add_eku(i32 %152, %struct.TYPE_9__* %153, i32* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = call i32 @free_ExtKeyUsage(%struct.TYPE_10__* %12)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %171

164:                                              ; preds = %151
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %13, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %13, align 8
  br label %146

168:                                              ; preds = %146
  %169 = call i32 @free_ExtKeyUsage(%struct.TYPE_10__* %12)
  br label %170

170:                                              ; preds = %168, %132
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %161, %143, %125, %111, %62, %34
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @hx509_name_free(i64*) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i64*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @der_free_heim_integer(i32*) #1

declare dso_local i32 @hx509_cert_get_serialnumber(i32, i32*) #1

declare dso_local i32 @hx509_cert_get_notBefore(i32) #1

declare dso_local i32 @hx509_cert_get_notAfter(i32) #1

declare dso_local i32 @free_SubjectPublicKeyInfo(i32*) #1

declare dso_local i32 @hx509_cert_get_SPKI(i32, i32, i32*) #1

declare dso_local i32 @_hx509_cert_get_keyusage(i32, i32, i32*) #1

declare dso_local i32 @KeyUsage2int(i32) #1

declare dso_local i32 @_hx509_cert_get_eku(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @hx509_ca_tbs_add_eku(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @free_ExtKeyUsage(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
