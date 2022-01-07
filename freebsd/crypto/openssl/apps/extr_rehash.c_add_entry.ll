; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i16, i32, i32, %struct.TYPE_5__*, i32 }

@add_entry.nilbucket = internal global %struct.TYPE_6__ zeroinitializer, align 8
@add_entry.nilhentry = internal global %struct.TYPE_5__ zeroinitializer, align 8
@hash_table = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [12 x i8] c"hash bucket\00", align 1
@evpmdsize = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: warning: skipping duplicate %s in %s\0A\00", align 1
@TYPE_CERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@MAX_COLLISIONS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: error: hash table overflow for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"collision bucket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i32, i16)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i16 %5, i16* %13, align 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add i32 %18, %19
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hash_table, align 8
  %22 = call i32 @OSSL_NELEM(%struct.TYPE_6__** %21)
  %23 = urem i32 %20, %22
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hash_table, align 8
  %25 = load i32, i32* %17, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %14, align 8
  br label %29

29:                                               ; preds = %46, %6
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %14, align 8
  br label %29

50:                                               ; preds = %44, %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = call i8* @app_malloc(i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %55 = bitcast i8* %54 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %14, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = bitcast %struct.TYPE_6__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 bitcast (%struct.TYPE_6__* @add_entry.nilbucket to i8*), i64 40, i1 false)
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hash_table, align 8
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hash_table, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %75, align 8
  br label %76

76:                                               ; preds = %53, %50
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %15, align 8
  br label %80

80:                                               ; preds = %118, %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %80
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i8*, i8** %11, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @evpmdsize, align 4
  %92 = call i64 @memcmp(i8* %87, i32 %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i32, i32* @bio_err, align 4
  %96 = call i32 (...) @opt_getprog()
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @TYPE_CERT, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %96, i8* %101, i8* %102)
  store i32 0, i32* %7, align 4
  br label %205

104:                                              ; preds = %86, %83
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @strcmp(i8* %105, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %16, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %122

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %15, align 8
  br label %80

122:                                              ; preds = %115, %80
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %15, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %125 = icmp eq %struct.TYPE_5__* %124, null
  br i1 %125, label %126, label %171

126:                                              ; preds = %122
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_COLLISIONS, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i32, i32* @bio_err, align 4
  %134 = call i32 (...) @opt_getprog()
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %134, i8* %135)
  store i32 1, i32* %7, align 4
  br label %205

137:                                              ; preds = %126
  %138 = call i8* @app_malloc(i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %139 = bitcast i8* %138 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %15, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %141 = bitcast %struct.TYPE_5__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 bitcast (%struct.TYPE_5__* @add_entry.nilhentry to i8*), i64 32, i1 false)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i16 -1, i16* %143, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @OPENSSL_strdup(i8* %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = icmp ne %struct.TYPE_5__* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %137
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %157, align 8
  br label %158

158:                                              ; preds = %152, %137
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = icmp eq %struct.TYPE_5__* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  store %struct.TYPE_5__* %164, %struct.TYPE_5__** %166, align 8
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  store %struct.TYPE_5__* %168, %struct.TYPE_5__** %170, align 8
  br label %171

171:                                              ; preds = %167, %122
  %172 = load i16, i16* %13, align 2
  %173 = zext i16 %172 to i32
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i16, i16* %175, align 8
  %177 = zext i16 %176 to i32
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i16, i16* %13, align 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i16 %180, i16* %182, align 8
  br label %183

183:                                              ; preds = %179, %171
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %183
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* @evpmdsize, align 4
  %203 = call i32 @memcpy(i32 %200, i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %191, %186, %183
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %132, %94
  %206 = load i32, i32* %7, align 4
  ret i32 %206
}

declare dso_local i32 @OSSL_NELEM(%struct.TYPE_6__**) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @OPENSSL_strdup(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
