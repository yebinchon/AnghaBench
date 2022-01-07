; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_name_constraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_name_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }

@EXFLAG_SI = common dso_local global i32 0, align 4
@EXFLAG_PROXY = common dso_local global i32 0, align 4
@X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION = common dso_local global i32 0, align 4
@X509_F_CHECK_NAME_CONSTRAINTS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_commonName = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_NEVER_CHECK_SUBJECT = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT = common dso_local global i32 0, align 4
@GEN_DNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @check_name_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_name_constraints(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sk_X509_num(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %200, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %203

23:                                               ; preds = %20
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.TYPE_15__* @sk_X509_value(i32 %26, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EXFLAG_SI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %200

39:                                               ; preds = %31, %23
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EXFLAG_PROXY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %125

46:                                               ; preds = %39
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i32* @X509_get_subject_name(%struct.TYPE_15__* %47)
  store i32* %48, i32** %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = call i32* @X509_get_issuer_name(%struct.TYPE_15__* %49)
  store i32* %50, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 128, i32* %11, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @X509_NAME_entry_count(i32* %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION, align 4
  store i32 %57, i32* %11, align 4
  br label %113

58:                                               ; preds = %46
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @X509_NAME_entry_count(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @X509_NAME_entry_count(i32* %61)
  %63 = add nsw i32 %62, 1
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION, align 4
  store i32 %66, i32* %11, align 4
  br label %113

67:                                               ; preds = %58
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @X509_NAME_get_entry(i32* %68, i32 %69)
  %71 = call i64 @X509_NAME_ENTRY_set(i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @X509_NAME_get_entry(i32* %72, i32 %74)
  %76 = call i64 @X509_NAME_ENTRY_set(i32 %75)
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION, align 4
  store i32 %79, i32* %11, align 4
  br label %113

80:                                               ; preds = %67
  %81 = load i32*, i32** %7, align 8
  %82 = call i32* @X509_NAME_dup(i32* %81)
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @X509_F_CHECK_NAME_CONSTRAINTS, align 4
  %87 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %88 = call i32 @X509err(i32 %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 129, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %204

91:                                               ; preds = %80
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32* @X509_NAME_delete_entry(i32* %92, i32 %93)
  store i32* %94, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @X509_NAME_ENTRY_get_object(i32* %95)
  %97 = call i32 @OBJ_obj2nid(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @NID_commonName, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %91
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @X509_NAME_cmp(i32* %102, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %91
  %107 = load i32, i32* @X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @X509_NAME_ENTRY_free(i32* %109)
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @X509_NAME_free(i32* %111)
  br label %113

113:                                              ; preds = %108, %78, %65, %56
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 128
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @verify_cb_cert(%struct.TYPE_14__* %117, %struct.TYPE_15__* %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %204

124:                                              ; preds = %116, %113
  br label %125

125:                                              ; preds = %124, %39
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sk_X509_num(i32 %128)
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %196, %125
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %199

135:                                              ; preds = %131
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call %struct.TYPE_15__* @sk_X509_value(i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %13, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %195

145:                                              ; preds = %135
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @NAME_CONSTRAINTS_check(%struct.TYPE_15__* %146, i32* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 128
  br i1 %150, label %151, label %181

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @X509_CHECK_FLAG_NEVER_CHECK_SUBJECT, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %154
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %163
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = load i32, i32* @GEN_DNS, align 4
  %175 = call i32 @has_san_id(%struct.TYPE_15__* %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172, %163
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @NAME_CONSTRAINTS_check_CN(%struct.TYPE_15__* %178, i32* %179)
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %177, %172, %154, %151, %145
  %182 = load i32, i32* %14, align 4
  switch i32 %182, label %185 [
    i32 128, label %183
    i32 129, label %184
  ]

183:                                              ; preds = %181
  br label %194

184:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %204

185:                                              ; preds = %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @verify_cb_cert(%struct.TYPE_14__* %186, %struct.TYPE_15__* %187, i32 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %204

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193, %183
  br label %195

195:                                              ; preds = %194, %135
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %6, align 4
  br label %131

199:                                              ; preds = %131
  br label %200

200:                                              ; preds = %199, %38
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %4, align 4
  br label %20

203:                                              ; preds = %20
  store i32 1, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %192, %184, %123, %85
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local %struct.TYPE_15__* @sk_X509_value(i32, i32) #1

declare dso_local i32* @X509_get_subject_name(%struct.TYPE_15__*) #1

declare dso_local i32* @X509_get_issuer_name(%struct.TYPE_15__*) #1

declare dso_local i32 @X509_NAME_entry_count(i32*) #1

declare dso_local i64 @X509_NAME_ENTRY_set(i32) #1

declare dso_local i32 @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32* @X509_NAME_dup(i32*) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @X509_NAME_delete_entry(i32*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @X509_NAME_ENTRY_get_object(i32*) #1

declare dso_local i64 @X509_NAME_cmp(i32*, i32*) #1

declare dso_local i32 @X509_NAME_ENTRY_free(i32*) #1

declare dso_local i32 @X509_NAME_free(i32*) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @NAME_CONSTRAINTS_check(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @has_san_id(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @NAME_CONSTRAINTS_check_CN(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
