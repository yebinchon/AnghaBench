; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_store_principal_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_store_principal_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_10__*)* @store_principal_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_principal_ent(i32 %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 19
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @store_principal_xdr(i32 %10, i32* %11, i32* %14)
  %16 = call i32 @CHECK(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @krb5_store_uint32(i32* %17, i32 %20)
  %22 = call i32 @CHECK(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @krb5_store_uint32(i32* %23, i32 %26)
  %28 = call i32 @CHECK(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @krb5_store_uint32(i32* %29, i32 %32)
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @krb5_store_uint32(i32* %35, i32 %38)
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 18
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @krb5_store_int32(i32* %41, i32 %46)
  %48 = call i32 @CHECK(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 18
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = load i32, i32* %4, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 18
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @store_principal_xdr(i32 %54, i32* %55, i32* %58)
  %60 = call i32 @CHECK(i32 %59)
  br label %61

61:                                               ; preds = %53, %3
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @krb5_store_uint32(i32* %62, i32 %65)
  %67 = call i32 @CHECK(i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @krb5_store_uint32(i32* %68, i32 %71)
  %73 = call i32 @CHECK(i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @krb5_store_uint32(i32* %74, i32 %77)
  %79 = call i32 @CHECK(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @krb5_store_uint32(i32* %80, i32 %83)
  %85 = call i32 @CHECK(i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @store_string_xdr(i32* %86, i32 %89)
  %91 = call i32 @CHECK(i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @krb5_store_int32(i32* %92, i32 %95)
  %97 = call i32 @CHECK(i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @krb5_store_int32(i32* %98, i32 %101)
  %103 = call i32 @CHECK(i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @krb5_store_int32(i32* %104, i32 %107)
  %109 = call i32 @CHECK(i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @krb5_store_int32(i32* %110, i32 %113)
  %115 = call i32 @CHECK(i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @krb5_store_int32(i32* %116, i32 %119)
  %121 = call i32 @CHECK(i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @krb5_store_int32(i32* %122, i32 %125)
  %127 = call i32 @CHECK(i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @krb5_store_int32(i32* %128, i32 %131)
  %133 = call i32 @CHECK(i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @krb5_store_int32(i32* %134, i32 %139)
  %141 = call i32 @CHECK(i32 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 14
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %61
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 16
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %8, align 8
  br label %150

150:                                              ; preds = %176, %146
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %152 = icmp ne %struct.TYPE_8__* %151, null
  br i1 %152, label %153, label %180

153:                                              ; preds = %150
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @krb5_store_int32(i32* %162, i32 0)
  %164 = call i32 @CHECK(i32 %163)
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @krb5_store_int32(i32* %165, i32 %168)
  %170 = call i32 @CHECK(i32 %169)
  %171 = load i32*, i32** %5, align 8
  %172 = bitcast %struct.TYPE_9__* %9 to i64*
  %173 = load i64, i64* %172, align 4
  %174 = call i32 @store_data_xdr(i32* %171, i64 %173)
  %175 = call i32 @CHECK(i32 %174)
  br label %176

176:                                              ; preds = %153
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %8, align 8
  br label %150

180:                                              ; preds = %150
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @krb5_store_int32(i32* %181, i32 1)
  %183 = call i32 @CHECK(i32 %182)
  br label %184

184:                                              ; preds = %180, %61
  %185 = load i32*, i32** %5, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 13
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @krb5_store_int32(i32* %185, i32 %188)
  %190 = call i32 @CHECK(i32 %189)
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %233, %184
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %236

197:                                              ; preds = %191
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @krb5_store_uint32(i32* %198, i32 2)
  %200 = call i32 @CHECK(i32 %199)
  %201 = load i32*, i32** %5, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @krb5_store_uint32(i32* %201, i32 %204)
  %206 = call i32 @CHECK(i32 %205)
  %207 = load i32*, i32** %5, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 15
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @krb5_store_uint32(i32* %207, i32 %217)
  %219 = call i32 @CHECK(i32 %218)
  %220 = load i32*, i32** %5, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 15
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @krb5_store_uint32(i32* %220, i32 %230)
  %232 = call i32 @CHECK(i32 %231)
  br label %233

233:                                              ; preds = %197
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %191

236:                                              ; preds = %191
  ret i32 0
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @store_principal_xdr(i32, i32*, i32*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @store_string_xdr(i32*, i32) #1

declare dso_local i32 @store_data_xdr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
