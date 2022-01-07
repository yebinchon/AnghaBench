; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_acceptor_wait_for_dcestyle.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_acceptor_wait_for_dcestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@KRB5_AUTH_CONTEXT_DO_TIME = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@GSS_S_UNSEQ_TOKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_11__*, i32, i32*, i32*, %struct.TYPE_11__*, i64*, i64*, i32*)* @acceptor_wait_for_dcestyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acceptor_wait_for_dcestyle(i64* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, %struct.TYPE_11__* %4, i32 %5, i32* %6, i32* %7, %struct.TYPE_11__* %8, i64* %9, i64* %10, i32* %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_9__, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i64* %0, i64** %14, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %22, align 8
  store i64* %9, i64** %23, align 8
  store i64* %10, i64** %24, align 8
  store i32* %11, i32** %25, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @krb5_auth_con_getlocalseqnumber(i32 %44, i32 %47, i64* %30)
  store i64 %48, i64* %27, align 8
  %49 = load i64, i64* %27, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %12
  %52 = load i64, i64* %27, align 8
  %53 = load i64*, i64** %14, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %54, i64* %13, align 8
  br label %203

55:                                               ; preds = %12
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @krb5_auth_con_getremoteseqnumber(i32 %56, i32 %59, i64* %29)
  store i64 %60, i64* %27, align 8
  %61 = load i64, i64* %27, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i64, i64* %27, align 8
  %65 = load i64*, i64** %14, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %66, i64* %13, align 8
  br label %203

67:                                               ; preds = %55
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %30, align 8
  %73 = call i64 @krb5_auth_con_setremoteseqnumber(i32 %68, i32 %71, i64 %72)
  store i64 %73, i64* %27, align 8
  %74 = load i64, i64* %27, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i64, i64* %27, align 8
  %78 = load i64*, i64** %14, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %79, i64* %13, align 8
  br label %203

80:                                               ; preds = %67
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_TIME, align 4
  %86 = call i32 @krb5_auth_con_removeflags(i32 %81, i32 %84, i32 %85, i64* %32)
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @krb5_rd_rep(i32 %87, i32 %90, %struct.TYPE_9__* %28, i32** %31)
  store i64 %91, i64* %27, align 8
  %92 = load i64, i64* %27, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i64, i64* %27, align 8
  %96 = load i64*, i64** %14, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %97, i64* %13, align 8
  br label %203

98:                                               ; preds = %80
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %31, align 8
  %101 = call i32 @krb5_free_ap_rep_enc_part(i32 %99, i32* %100)
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %32, align 8
  %107 = call i32 @krb5_auth_con_setflags(i32 %102, i32 %105, i64 %106)
  %108 = load i64*, i64** %14, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @_gsskrb5_lifetime_left(i64* %108, i32 %109, i32 %112, i64* %33)
  store i64 %113, i64* %26, align 8
  %114 = load i64, i64* %26, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %98
  %117 = load i64, i64* %26, align 8
  store i64 %117, i64* %13, align 8
  br label %203

118:                                              ; preds = %98
  %119 = load i64, i64* %33, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %122, i64* %13, align 8
  br label %203

123:                                              ; preds = %118
  %124 = load i64*, i64** %24, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %33, align 8
  %128 = load i64*, i64** %24, align 8
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64*, i64** %23, align 8
  %131 = icmp ne i64* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %23, align 8
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32*, i32** %20, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %20, align 8
  %146 = call i64 @krb5_copy_principal(i32 %141, i32 %144, i32* %145)
  store i64 %146, i64* %27, align 8
  %147 = load i64, i64* %27, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load i64, i64* %27, align 8
  %151 = load i64*, i64** %14, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %152, i64* %13, align 8
  br label %203

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %137
  %155 = load i32, i32* %16, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @krb5_auth_con_getremoteseqnumber(i32 %155, i32 %158, i64* %34)
  store i64 %159, i64* %27, align 8
  %160 = load i64, i64* %27, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i64, i64* %27, align 8
  %164 = load i64*, i64** %14, align 8
  store i64 %163, i64* %164, align 8
  %165 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %165, i64* %13, align 8
  br label %203

166:                                              ; preds = %154
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @krb5_auth_con_getlocalseqnumber(i32 %167, i32 %170, i64* %35)
  store i64 %171, i64* %27, align 8
  %172 = load i64, i64* %27, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i64, i64* %27, align 8
  %176 = load i64*, i64** %14, align 8
  store i64 %175, i64* %176, align 8
  %177 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %177, i64* %13, align 8
  br label %203

178:                                              ; preds = %166
  %179 = load i64, i64* %34, align 8
  %180 = load i64, i64* %35, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i64, i64* @GSS_S_UNSEQ_TOKEN, align 8
  store i64 %183, i64* %13, align 8
  br label %203

184:                                              ; preds = %178
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i64, i64* %29, align 8
  %190 = call i64 @krb5_auth_con_setremoteseqnumber(i32 %185, i32 %188, i64 %189)
  store i64 %190, i64* %27, align 8
  %191 = load i64, i64* %27, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load i64, i64* %27, align 8
  %195 = load i64*, i64** %14, align 8
  store i64 %194, i64* %195, align 8
  %196 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %196, i64* %13, align 8
  br label %203

197:                                              ; preds = %184
  %198 = load i64*, i64** %14, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load i32*, i32** %25, align 8
  %202 = call i64 @gsskrb5_acceptor_ready(i64* %198, %struct.TYPE_10__* %199, i32 %200, i32* %201)
  store i64 %202, i64* %13, align 8
  br label %203

203:                                              ; preds = %197, %193, %182, %174, %162, %149, %121, %116, %94, %76, %63, %51
  %204 = load i64, i64* %13, align 8
  ret i64 %204
}

declare dso_local i64 @krb5_auth_con_getlocalseqnumber(i32, i32, i64*) #1

declare dso_local i64 @krb5_auth_con_getremoteseqnumber(i32, i32, i64*) #1

declare dso_local i64 @krb5_auth_con_setremoteseqnumber(i32, i32, i64) #1

declare dso_local i32 @krb5_auth_con_removeflags(i32, i32, i32, i64*) #1

declare dso_local i64 @krb5_rd_rep(i32, i32, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @krb5_free_ap_rep_enc_part(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_setflags(i32, i32, i64) #1

declare dso_local i64 @_gsskrb5_lifetime_left(i64*, i32, i32, i64*) #1

declare dso_local i64 @krb5_copy_principal(i32, i32, i32*) #1

declare dso_local i64 @gsskrb5_acceptor_ready(i64*, %struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
