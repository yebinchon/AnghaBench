; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_PAC.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_PAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@KRB5_AUTHDATA_IF_RELEVANT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to decode IF_RELEVANT with %d\00", align 1
@KRB5_AUTHDATA_WIN2K_PAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__*, i32*, i32*)* @check_PAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_PAC(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, %struct.TYPE_10__* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_10__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_11__, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i32* %1, i32** %17, align 8
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %30, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %41 = icmp eq %struct.TYPE_11__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %14
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %14
  store i32 0, i32* %15, align 4
  br label %197

48:                                               ; preds = %42
  store i32 0, i32* %31, align 4
  br label %49

49:                                               ; preds = %193, %48
  %50 = load i32, i32* %31, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %196

55:                                               ; preds = %49
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32, i32* %31, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KRB5_AUTHDATA_IF_RELEVANT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %193

67:                                               ; preds = %55
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %31, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %31, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @decode_AuthorizationData(i32 %76, i32 %85, %struct.TYPE_11__* %34, i32* null)
  store i32 %86, i32* %33, align 4
  %87 = load i32, i32* %33, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %67
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %33, align 4
  %92 = load i32, i32* %33, align 4
  %93 = call i32 @krb5_set_error_message(i32 %90, i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %33, align 4
  store i32 %94, i32* %15, align 4
  br label %197

95:                                               ; preds = %67
  store i32 0, i32* %32, align 4
  br label %96

96:                                               ; preds = %188, %95
  %97 = load i32, i32* %32, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %101, label %191

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %32, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @KRB5_AUTHDATA_WIN2K_PAC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %187

111:                                              ; preds = %101
  store i32 0, i32* %35, align 4
  %112 = load i32, i32* %16, align 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* %32, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %32, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @krb5_pac_parse(i32 %112, i32 %120, i32 %128, i32* %36)
  store i32 %129, i32* %33, align 4
  %130 = call i32 @free_AuthorizationData(%struct.TYPE_11__* %34)
  %131 = load i32, i32* %33, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %111
  %134 = load i32, i32* %33, align 4
  store i32 %134, i32* %15, align 4
  br label %197

135:                                              ; preds = %111
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %36, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load i32*, i32** %23, align 8
  %143 = load i32*, i32** %24, align 8
  %144 = call i32 @krb5_pac_verify(i32 %136, i32 %137, i32 %140, i32 %141, i32* %142, i32* %143)
  store i32 %144, i32* %33, align 4
  %145 = load i32, i32* %33, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %135
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %36, align 4
  %150 = call i32 @krb5_pac_free(i32 %148, i32 %149)
  %151 = load i32, i32* %33, align 4
  store i32 %151, i32* %15, align 4
  br label %197

152:                                              ; preds = %135
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32*, i32** %20, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = load i32*, i32** %22, align 8
  %159 = call i32 @_kdc_pac_verify(i32 %153, i32 %154, i32 %155, i32* %156, i32* %157, i32* %158, i32* %36, i32* %35)
  store i32 %159, i32* %33, align 4
  %160 = load i32, i32* %33, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %36, align 4
  %165 = call i32 @krb5_pac_free(i32 %163, i32 %164)
  %166 = load i32, i32* %33, align 4
  store i32 %166, i32* %15, align 4
  br label %197

167:                                              ; preds = %152
  %168 = load i32, i32* %35, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32*, i32** %29, align 8
  store i32 1, i32* %171, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i32*, i32** %25, align 8
  %179 = load i32*, i32** %26, align 8
  %180 = load i32*, i32** %28, align 8
  %181 = call i32 @_krb5_pac_sign(i32 %172, i32 %173, i32 %176, i32 %177, i32* %178, i32* %179, i32* %180)
  store i32 %181, i32* %33, align 4
  br label %182

182:                                              ; preds = %170, %167
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %36, align 4
  %185 = call i32 @krb5_pac_free(i32 %183, i32 %184)
  %186 = load i32, i32* %33, align 4
  store i32 %186, i32* %15, align 4
  br label %197

187:                                              ; preds = %101
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %32, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %32, align 4
  br label %96

191:                                              ; preds = %96
  %192 = call i32 @free_AuthorizationData(%struct.TYPE_11__* %34)
  br label %193

193:                                              ; preds = %191, %66
  %194 = load i32, i32* %31, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %31, align 4
  br label %49

196:                                              ; preds = %49
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %196, %182, %162, %147, %133, %89, %47
  %198 = load i32, i32* %15, align 4
  ret i32 %198
}

declare dso_local i32 @decode_AuthorizationData(i32, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_pac_parse(i32, i32, i32, i32*) #1

declare dso_local i32 @free_AuthorizationData(%struct.TYPE_11__*) #1

declare dso_local i32 @krb5_pac_verify(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_pac_free(i32, i32) #1

declare dso_local i32 @_kdc_pac_verify(i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_krb5_pac_sign(i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
