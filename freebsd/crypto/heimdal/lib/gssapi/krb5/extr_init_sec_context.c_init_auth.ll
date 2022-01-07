; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_init_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_init_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@CLOSE_CCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"realm-config\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32, i64, i64, i32, i32*, i32, i64*, i64*)* @init_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_auth(i64* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 %8, i32* %9, i32 %10, i64* %11, i64* %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_15__, align 8
  %31 = alloca %struct.TYPE_15__, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  store i64* %0, i64** %15, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i32* %9, i32** %24, align 8
  store i32 %10, i32* %25, align 4
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %35 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %35, i64* %28, align 8
  store i32 1, i32* %33, align 4
  %36 = call i32 @krb5_data_zero(%struct.TYPE_15__* %30)
  %37 = call i32 @krb5_data_zero(%struct.TYPE_15__* %31)
  %38 = load i64*, i64** %15, align 8
  store i64 0, i64* %38, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %13
  %42 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %43 = load i32*, i32** %24, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %13
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %46 = icmp eq %struct.TYPE_17__* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = call i64 @krb5_cc_default(i32 %48, i32** %50)
  store i64 %51, i64* %29, align 8
  %52 = load i64, i64* %29, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64, i64* %29, align 8
  %56 = load i64*, i64** %15, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %57, i64* %28, align 8
  br label %213

58:                                               ; preds = %47
  %59 = load i32, i32* @CLOSE_CCACHE, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %70

64:                                               ; preds = %44
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = call i64 @krb5_cc_get_principal(i32 %71, i32* %74, i32* %76)
  store i64 %77, i64* %29, align 8
  %78 = load i64, i64* %29, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i64, i64* %29, align 8
  %82 = load i64*, i64** %15, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %83, i64* %28, align 8
  br label %213

84:                                               ; preds = %70
  store i32* null, i32** %34, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %34, align 8
  br label %96

96:                                               ; preds = %92, %87, %84
  %97 = load i32, i32* %18, align 4
  %98 = load i32*, i32** %34, align 8
  %99 = call i32 @krb5_set_default_in_tkt_etypes(i32 %97, i32* %98)
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @krb5_cc_get_config(i32 %100, i32* %103, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %30)
  store i64 %104, i64* %29, align 8
  %105 = load i64, i64* %29, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111, %107
  store i32 0, i32* %33, align 4
  br label %121

121:                                              ; preds = %120, %111
  %122 = call i32 @krb5_data_free(%struct.TYPE_15__* %30)
  br label %123

123:                                              ; preds = %121, %96
  %124 = load i64*, i64** %15, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i64, i64* %22, align 8
  %132 = load i64*, i64** %27, align 8
  %133 = call i64 @gsskrb5_get_creds(i64* %124, i32 %125, i32* %128, %struct.TYPE_16__* %129, i32 %130, i32 0, i64 %131, i64* %132)
  store i64 %133, i64* %28, align 8
  %134 = load i64, i64* %28, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %123
  %137 = load i32, i32* %33, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i64*, i64** %15, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i64, i64* %22, align 8
  %148 = load i64*, i64** %27, align 8
  %149 = call i64 @gsskrb5_get_creds(i64* %140, i32 %141, i32* %144, %struct.TYPE_16__* %145, i32 %146, i32 1, i64 %147, i64* %148)
  store i64 %149, i64* %28, align 8
  br label %150

150:                                              ; preds = %139, %136, %123
  %151 = load i64, i64* %28, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %213

154:                                              ; preds = %150
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load i64*, i64** %15, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i64 @_gss_DES3_get_mic_compat(i64* %163, %struct.TYPE_16__* %164, i32 %165)
  store i64 %166, i64* %28, align 8
  %167 = load i64, i64* %28, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %213

170:                                              ; preds = %154
  %171 = load i64*, i64** %15, align 8
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @_gsskrb5_lifetime_left(i64* %171, i32 %172, i32 %175, i64* %32)
  store i64 %176, i64* %28, align 8
  %177 = load i64, i64* %28, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %213

180:                                              ; preds = %170
  %181 = load i64, i64* %32, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64*, i64** %15, align 8
  store i64 0, i64* %184, align 8
  %185 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %185, i64* %28, align 8
  br label %213

186:                                              ; preds = %180
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = call i32 @krb5_auth_con_setkey(i32 %187, i32 %190, i32* %194)
  %196 = load i32, i32* %18, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = call i64 @krb5_auth_con_generatelocalsubkey(i32 %196, i32 %199, i32* %203)
  store i64 %204, i64* %29, align 8
  %205 = load i64, i64* %29, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %186
  %208 = load i64, i64* %29, align 8
  %209 = load i64*, i64** %15, align 8
  store i64 %208, i64* %209, align 8
  %210 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %210, i64* %28, align 8
  br label %213

211:                                              ; preds = %186
  %212 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %212, i64* %14, align 8
  br label %235

213:                                              ; preds = %207, %183, %179, %169, %153, %80, %54
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CLOSE_CCACHE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @krb5_cc_close(i32 %226, i32* %229)
  br label %231

231:                                              ; preds = %225, %218, %213
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  store i32* null, i32** %233, align 8
  %234 = load i64, i64* %28, align 8
  store i64 %234, i64* %14, align 8
  br label %235

235:                                              ; preds = %231, %211
  %236 = load i64, i64* %14, align 8
  ret i64 %236
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_15__*) #1

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i32*) #1

declare dso_local i32 @krb5_set_default_in_tkt_etypes(i32, i32*) #1

declare dso_local i64 @krb5_cc_get_config(i32, i32*, i32*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_15__*) #1

declare dso_local i64 @gsskrb5_get_creds(i64*, i32, i32*, %struct.TYPE_16__*, i32, i32, i64, i64*) #1

declare dso_local i64 @_gss_DES3_get_mic_compat(i64*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @_gsskrb5_lifetime_left(i64*, i32, i32, i64*) #1

declare dso_local i32 @krb5_auth_con_setkey(i32, i32, i32*) #1

declare dso_local i64 @krb5_auth_con_generatelocalsubkey(i32, i32, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
