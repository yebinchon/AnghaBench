; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_dsstringprep.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_dsstringprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@WIND_PROFILE_LDAP = common dso_local global i32 0, align 4
@ia5String = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE = common dso_local global i32 0, align 4
@printableString = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_CASE = common dso_local global i32 0, align 4
@teletexString = common dso_local global i32 0, align 4
@bmpString = common dso_local global i32 0, align 4
@universalString = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown directory type: %d\00", align 1
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i64*)* @dsstringprep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsstringprep(%struct.TYPE_8__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32**, i32*** %6, align 8
  store i32* null, i32** %13, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %89 [
    i32 132, label %18
    i32 131, label %25
    i32 130, label %35
    i32 133, label %42
    i32 129, label %49
    i32 128, label %56
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @WIND_PROFILE_LDAP, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i32, i32* @ia5String, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @COPYVOIDARRAY(%struct.TYPE_8__* %20, i32 %21, i64 %22, i32* %23)
  br label %94

25:                                               ; preds = %3
  %26 = load i32, i32* @WIND_PROFILE_LDAP, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* @printableString, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @COPYVOIDARRAY(%struct.TYPE_8__* %30, i32 %31, i64 %32, i32* %33)
  br label %94

35:                                               ; preds = %3
  %36 = load i32, i32* @WIND_PROFILE_LDAP_CASE, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i32, i32* @teletexString, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @COPYCHARARRAY(%struct.TYPE_8__* %37, i32 %38, i64 %39, i32* %40)
  br label %94

42:                                               ; preds = %3
  %43 = load i32, i32* @WIND_PROFILE_LDAP, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32, i32* @bmpString, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @COPYVALARRAY(%struct.TYPE_8__* %44, i32 %45, i64 %46, i32* %47)
  br label %94

49:                                               ; preds = %3
  %50 = load i32, i32* @WIND_PROFILE_LDAP, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32, i32* @universalString, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @COPYVALARRAY(%struct.TYPE_8__* %51, i32 %52, i64 %53, i32* %54)
  br label %94

56:                                               ; preds = %3
  %57 = load i32, i32* @WIND_PROFILE_LDAP, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wind_utf8ucs4_length(i32 %61, i64* %10)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %147

67:                                               ; preds = %56
  %68 = load i64, i64* %10, align 8
  %69 = mul i64 %68, 4
  %70 = call i32* @malloc(i64 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %4, align 4
  br label %147

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @wind_utf8ucs4(i32 %79, i32* %80, i64* %10)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @free(i32* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %147

88:                                               ; preds = %75
  br label %94

89:                                               ; preds = %3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @_hx509_abort(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %88, %49, %42, %35, %25, %18
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %126, %94
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %98, 4
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %102, 2
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %105, align 8
  %107 = mul i64 %106, 4
  %108 = call i32* @malloc(i64 %107)
  %109 = load i32**, i32*** %6, align 8
  store i32* %108, i32** %109, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i32**, i32*** %6, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = load i64*, i64** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @wind_stringprep(i32* %110, i64 %111, i32* %113, i64* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %100
  %121 = load i32**, i32*** %6, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @free(i32* %122)
  %124 = load i32**, i32*** %6, align 8
  store i32* null, i32** %124, align 8
  br label %126

125:                                              ; preds = %100
  br label %129

126:                                              ; preds = %120
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %97

129:                                              ; preds = %125, %97
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @free(i32* %130)
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i32**, i32*** %6, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32**, i32*** %6, align 8
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @free(i32* %140)
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i32**, i32*** %6, align 8
  store i32* null, i32** %143, align 8
  %144 = load i64*, i64** %7, align 8
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %147

146:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %142, %84, %73, %65
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @COPYVOIDARRAY(%struct.TYPE_8__*, i32, i64, i32*) #1

declare dso_local i32 @COPYCHARARRAY(%struct.TYPE_8__*, i32, i64, i32*) #1

declare dso_local i32 @COPYVALARRAY(%struct.TYPE_8__*, i32, i64, i32*) #1

declare dso_local i32 @wind_utf8ucs4_length(i32, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @wind_utf8ucs4(i32, i32*, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_hx509_abort(i8*, i32) #1

declare dso_local i32 @wind_stringprep(i32*, i64, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
