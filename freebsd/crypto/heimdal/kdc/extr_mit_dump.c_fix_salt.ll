; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_mit_dump.c_fix_salt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_mit_dump.c_fix_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }

@KRB5_PADATA_PW_SALT = common dso_local global i8* null, align 8
@KRB5_PADATA_AFS3_SALT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_17__*, i32)* @fix_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_salt(i32 %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %9, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i32
  switch i32 %25, label %189 [
    i32 131, label %26
    i32 128, label %30
    i32 132, label %37
    i32 130, label %133
    i32 129, label %159
    i32 133, label %163
  ]

26:                                               ; preds = %3
  %27 = load i8*, i8** @KRB5_PADATA_PW_SALT, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %191

30:                                               ; preds = %3
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = call i32 @krb5_data_free(%struct.TYPE_19__* %32)
  %34 = load i8*, i8** @KRB5_PADATA_PW_SALT, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %191

37:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %39, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strlen(i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @krb5_data_alloc(%struct.TYPE_19__* %67, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %192

74:                                               ; preds = %65
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %12, align 8
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %126, %74
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %80, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %79
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @strlen(i32 %110)
  %112 = call i32 @memcpy(i8* %90, i32 %100, i64 %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strlen(i32 %122)
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %89
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %79

129:                                              ; preds = %79
  %130 = load i8*, i8** @KRB5_PADATA_PW_SALT, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %191

133:                                              ; preds = %3
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = call i32 @krb5_data_free(%struct.TYPE_19__* %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @strlen(i32 %148)
  %150 = call i32 @krb5_data_copy(%struct.TYPE_19__* %138, i32 %143, i64 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %133
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %192

155:                                              ; preds = %133
  %156 = load i8*, i8** @KRB5_PADATA_PW_SALT, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %191

159:                                              ; preds = %3
  %160 = load i8*, i8** @KRB5_PADATA_PW_SALT, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %191

163:                                              ; preds = %3
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = call i32 @krb5_data_free(%struct.TYPE_19__* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @strlen(i32 %178)
  %180 = call i32 @krb5_data_copy(%struct.TYPE_19__* %168, i32 %173, i64 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %163
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %4, align 4
  br label %192

185:                                              ; preds = %163
  %186 = load i8*, i8** @KRB5_PADATA_AFS3_SALT, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  br label %191

189:                                              ; preds = %3
  %190 = call i32 (...) @abort() #3
  unreachable

191:                                              ; preds = %185, %159, %155, %129, %30, %26
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %191, %183, %153, %72
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @krb5_data_free(%struct.TYPE_19__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @krb5_data_alloc(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @krb5_data_copy(%struct.TYPE_19__*, i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
