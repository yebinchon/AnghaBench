; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_brf.c_certificate_to_trust_anchor_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_brf.c_certificate_to_trust_anchor_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_21__, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i8*, i32, i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@VEC_INIT = common dso_local global i32 0, align 4
@dn_append = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ERROR: CA decoding failed with error %d\0A\00", align 1
@BR_X509_TA_CA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR: unsupported public key type in CA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @certificate_to_trust_anchor_inner(%struct.TYPE_25__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load i32, i32* @VEC_INIT, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @dn_append, align 4
  %11 = call i32 @br_x509_decoder_init(i32* %6, i32 %10, i32* %7)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @br_x509_decoder_push(i32* %6, i32 %14, i32 %17)
  %19 = call %struct.TYPE_15__* @br_x509_decoder_get_pkey(i32* %6)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = call i32 @br_x509_decoder_last_error(i32* %6)
  %24 = call i32 (i8*, ...) @ve_error_set(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @VEC_CLEAR(i32 %25)
  store i32 -1, i32* %3, align 4
  br label %158

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @VEC_TOARRAY(i32 %28)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @VEC_LEN(i32 %33)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @VEC_CLEAR(i32 %38)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = call i64 @br_x509_decoder_isCA(i32* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  %45 = load i32, i32* @BR_X509_TA_CA, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %27
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %150 [
    i32 128, label %54
    i32 129, label %110
  ]

54:                                               ; preds = %50
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32 128, i32* %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @xblobdup(i32 %62, i32 %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  store i8* %68, i8** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  store i32 %78, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @xblobdup(i32 %88, i32 %93)
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  store i8* %94, i8** %99, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 8
  br label %157

110:                                              ; preds = %50
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  store i32 129, i32* %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  store i32 %118, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @xblobdup(i32 %128, i32 %133)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  store i8* %134, i8** %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 8
  br label %157

150:                                              ; preds = %50
  %151 = call i32 (i8*, ...) @ve_error_set(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @xfree(i32 %155)
  store i32 -1, i32* %3, align 4
  br label %158

157:                                              ; preds = %110, %54
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %150, %22
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @br_x509_decoder_init(i32*, i32, i32*) #1

declare dso_local i32 @br_x509_decoder_push(i32*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @br_x509_decoder_get_pkey(i32*) #1

declare dso_local i32 @ve_error_set(i8*, ...) #1

declare dso_local i32 @br_x509_decoder_last_error(i32*) #1

declare dso_local i32 @VEC_CLEAR(i32) #1

declare dso_local i32 @VEC_TOARRAY(i32) #1

declare dso_local i32 @VEC_LEN(i32) #1

declare dso_local i64 @br_x509_decoder_isCA(i32*) #1

declare dso_local i8* @xblobdup(i32, i32) #1

declare dso_local i32 @xfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
