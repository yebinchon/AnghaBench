; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_repl_mutual.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_repl_mutual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_15__ = type { i32*, i64 }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\03\00\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i64 0, align 8
@GSS_C_DCE_STYLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_16__*, i32, i32, i64, i64, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_17__*, i64*, i64*)* @repl_mutual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @repl_mutual(i64* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, %struct.TYPE_17__* %7, i32* %8, %struct.TYPE_17__* %9, i64* %10, i64* %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_15__, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_15__, align 8
  store i64* %0, i64** %14, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %21, align 8
  store i32* %8, i32** %22, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %23, align 8
  store i64* %10, i64** %24, align 8
  store i64* %11, i64** %25, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %12
  %40 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %41 = load i32*, i32** %22, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %12
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %44 = call i64 @IS_DCE_STYLE(%struct.TYPE_16__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32* %53, i32** %54, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @krb5_rd_rep(i32 %55, i32 %58, %struct.TYPE_15__* %28, i32** %29)
  store i64 %59, i64* %27, align 8
  %60 = load i64, i64* %27, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %46
  %63 = load i64*, i64** %14, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %65 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %66 = call i64 @_gsskrb5_decapsulate(i64* %63, %struct.TYPE_17__* %64, %struct.TYPE_15__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i64 %66, i64* %26, align 8
  %67 = load i64, i64* %26, align 8
  %68 = load i64, i64* @GSS_S_COMPLETE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = bitcast %struct.TYPE_15__* %28 to { i32*, i64 }*
  %74 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @handle_error_packet(i32 %71, %struct.TYPE_16__* %72, i32* %75, i64 %77)
  %79 = load i64*, i64** %14, align 8
  store i64 %78, i64* %79, align 8
  br label %83

80:                                               ; preds = %62
  %81 = load i64, i64* %27, align 8
  %82 = load i64*, i64** %14, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %80, %70
  %84 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %84, i64* %13, align 8
  br label %205

85:                                               ; preds = %46
  br label %127

86:                                               ; preds = %42
  %87 = load i64*, i64** %14, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %89 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %90 = call i64 @_gsskrb5_decapsulate(i64* %87, %struct.TYPE_17__* %88, %struct.TYPE_15__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i64 %90, i64* %26, align 8
  %91 = load i64, i64* %26, align 8
  %92 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %86
  %95 = load i64*, i64** %14, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %97 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %98 = call i64 @_gsskrb5_decapsulate(i64* %95, %struct.TYPE_17__* %96, %struct.TYPE_15__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i64 %98, i64* %26, align 8
  %99 = load i64, i64* %26, align 8
  %100 = load i64, i64* @GSS_S_COMPLETE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %105 = bitcast %struct.TYPE_15__* %28 to { i32*, i64 }*
  %106 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @handle_error_packet(i32 %103, %struct.TYPE_16__* %104, i32* %107, i64 %109)
  %111 = load i64*, i64** %14, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %112, i64* %13, align 8
  br label %205

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113, %86
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @krb5_rd_rep(i32 %115, i32 %118, %struct.TYPE_15__* %28, i32** %29)
  store i64 %119, i64* %27, align 8
  %120 = load i64, i64* %27, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i64, i64* %27, align 8
  %124 = load i64*, i64** %14, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %125, i64* %13, align 8
  br label %205

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %85
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %29, align 8
  %130 = call i32 @krb5_free_ap_rep_enc_part(i32 %128, i32* %129)
  %131 = load i64*, i64** %14, align 8
  store i64 0, i64* %131, align 8
  %132 = load i64*, i64** %25, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i64*, i64** %14, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i64*, i64** %25, align 8
  %141 = call i64 @_gsskrb5_lifetime_left(i64* %135, i32 %136, i32 %139, i64* %140)
  store i64 %141, i64* %26, align 8
  br label %144

142:                                              ; preds = %127
  %143 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %143, i64* %26, align 8
  br label %144

144:                                              ; preds = %142, %134
  %145 = load i64*, i64** %24, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %24, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i64, i64* %18, align 8
  %154 = load i64, i64* @GSS_C_DCE_STYLE, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %200

157:                                              ; preds = %152
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @krb5_auth_con_getremoteseqnumber(i32 %158, i32 %161, i32* %31)
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %163, i32 %166, i32* %30)
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %31, align 4
  %173 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %168, i32 %171, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @krb5_mk_rep(i32 %174, i32 %177, %struct.TYPE_15__* %32)
  store i64 %178, i64* %27, align 8
  %179 = load i64, i64* %27, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %157
  %182 = load i64, i64* %27, align 8
  %183 = load i64*, i64** %14, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %184, i64* %13, align 8
  br label %205

185:                                              ; preds = %157
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %30, align 4
  %191 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %186, i32 %189, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  store i32* %197, i32** %199, align 8
  br label %200

200:                                              ; preds = %185, %152
  %201 = load i64*, i64** %14, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %203 = load i32, i32* %16, align 4
  %204 = call i64 @gsskrb5_initiator_ready(i64* %201, %struct.TYPE_16__* %202, i32 %203)
  store i64 %204, i64* %13, align 8
  br label %205

205:                                              ; preds = %200, %181, %122, %102, %83
  %206 = load i64, i64* %13, align 8
  ret i64 %206
}

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_16__*) #1

declare dso_local i64 @krb5_rd_rep(i32, i32, %struct.TYPE_15__*, i32**) #1

declare dso_local i64 @_gsskrb5_decapsulate(i64*, %struct.TYPE_17__*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i64 @handle_error_packet(i32, %struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @krb5_free_ap_rep_enc_part(i32, i32*) #1

declare dso_local i64 @_gsskrb5_lifetime_left(i64*, i32, i32, i64*) #1

declare dso_local i32 @krb5_auth_con_getremoteseqnumber(i32, i32, i32*) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i32*) #1

declare dso_local i32 @krb5_auth_con_setlocalseqnumber(i32, i32, i32) #1

declare dso_local i64 @krb5_mk_rep(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @gsskrb5_initiator_ready(i64*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
