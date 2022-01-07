; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_export_lucid_sec_context_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_export_lucid_sec_context_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@IS_CFX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_15__*, i32, i32*)* @export_lucid_sec_context_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @export_lucid_sec_context_v1(i64* %0, %struct.TYPE_15__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__, align 4
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %20 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %20, i64* %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %21 = load i64*, i64** %5, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = call i32 @HEIMDAL_MUTEX_lock(i32* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IS_CFX, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = call i32* (...) @krb5_storage_emem()
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = call i32 (...) @_gsskrb5_clear_status()
  %35 = load i64, i64* @ENOMEM, align 8
  store i64 %35, i64* %11, align 8
  br label %214

36:                                               ; preds = %4
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @krb5_store_int32(i32* %37, i32 1)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %214

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LOCAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = call i64 @krb5_store_int32(i32* %43, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %214

56:                                               ; preds = %42
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @krb5_store_int32(i32* %57, i32 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %214

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %66, i32 %69, i64* %13)
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @krb5_store_uint32(i32* %71, i32 0)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %214

76:                                               ; preds = %65
  %77 = load i32*, i32** %9, align 8
  %78 = load i64, i64* %13, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @krb5_store_uint32(i32* %77, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %214

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @krb5_auth_con_getremoteseqnumber(i32 %85, i32 %88, i64* %13)
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @krb5_store_uint32(i32* %90, i32 0)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %214

95:                                               ; preds = %84
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* %13, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i64 @krb5_store_uint32(i32* %96, i32 %98)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %214

103:                                              ; preds = %95
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = call i64 @krb5_store_int32(i32* %104, i32 %108)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %214

113:                                              ; preds = %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @_gsskrb5i_get_token_key(%struct.TYPE_15__* %114, i32 %115, %struct.TYPE_13__** %12)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %214

120:                                              ; preds = %113
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %130 [
    i32 130, label %127
    i32 129, label %127
    i32 128, label %127
    i32 132, label %128
    i32 131, label %128
    i32 134, label %129
    i32 133, label %129
  ]

127:                                              ; preds = %123, %123, %123
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %131

128:                                              ; preds = %123, %123
  store i32 4, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %131

129:                                              ; preds = %123, %123
  store i32 17, i32* %16, align 4
  store i32 16, i32* %17, align 4
  br label %131

130:                                              ; preds = %123
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  br label %131

131:                                              ; preds = %130, %129, %128, %127
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i64 @krb5_store_int32(i32* %132, i32 %133)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %214

138:                                              ; preds = %131
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i64 @krb5_store_int32(i32* %139, i32 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %214

145:                                              ; preds = %138
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @krb5_store_keyblock(i32* %146, i32 %149)
  store i64 %150, i64* %11, align 8
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %214

154:                                              ; preds = %145
  br label %193

155:                                              ; preds = %120
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  store i32 %163, i32* %18, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i64 @krb5_store_int32(i32* %164, i32 %165)
  store i64 %166, i64* %11, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %214

170:                                              ; preds = %155
  %171 = load i32*, i32** %9, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @krb5_store_keyblock(i32* %171, i32 %174)
  store i64 %175, i64* %11, align 8
  %176 = load i64, i64* %11, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %214

179:                                              ; preds = %170
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load i32*, i32** %9, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @krb5_store_keyblock(i32* %183, i32 %186)
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %214

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %179
  br label %193

193:                                              ; preds = %192, %154
  %194 = load i32*, i32** %9, align 8
  %195 = call i64 @krb5_storage_to_data(i32* %194, %struct.TYPE_14__* %15)
  store i64 %195, i64* %11, align 8
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %214

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i32 %201, i32* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = load i64*, i64** %5, align 8
  %207 = load i32*, i32** %8, align 8
  %208 = call i64 @gss_add_buffer_set_member(i64* %206, %struct.TYPE_16__* %19, i32* %207)
  store i64 %208, i64* %11, align 8
  %209 = call i32 @krb5_data_free(%struct.TYPE_14__* %15)
  %210 = load i64, i64* %11, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %199
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %212, %198, %190, %178, %169, %153, %144, %137, %119, %112, %102, %94, %83, %75, %64, %55, %41, %33
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %216 = icmp ne %struct.TYPE_13__* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %220 = call i32 @krb5_free_keyblock(i32 %218, %struct.TYPE_13__* %219)
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i32*, i32** %9, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @krb5_storage_free(i32* %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i64, i64* %11, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i64, i64* %11, align 8
  %232 = load i64*, i64** %5, align 8
  store i64 %231, i64* %232, align 8
  %233 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %233, i64* %10, align 8
  br label %234

234:                                              ; preds = %230, %227
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 2
  %237 = call i32 @HEIMDAL_MUTEX_unlock(i32* %236)
  %238 = load i64, i64* %10, align 8
  ret i64 %238
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @_gsskrb5_clear_status(...) #1

declare dso_local i64 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i64*) #1

declare dso_local i64 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_auth_con_getremoteseqnumber(i32, i32, i64*) #1

declare dso_local i64 @_gsskrb5i_get_token_key(%struct.TYPE_15__*, i32, %struct.TYPE_13__**) #1

declare dso_local i64 @krb5_store_keyblock(i32*, i32) #1

declare dso_local i64 @krb5_storage_to_data(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @gss_add_buffer_set_member(i64*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_14__*) #1

declare dso_local i32 @krb5_free_keyblock(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
