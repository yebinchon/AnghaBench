; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_in_tkt.c_add_padata.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_in_tkt.c_add_padata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64* }
%struct.TYPE_14__ = type { i32, i32* }

@ETYPE_NULL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)*, i32, i64*, i32, i32*)* @add_padata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_padata(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)* %3, i32 %4, i64* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)* %3, i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @krb5_get_pw_salt(%struct.TYPE_13__* %27, i32 %28, i32* %20)
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %18, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %18, align 8
  store i64 %33, i64* %9, align 8
  br label %138

34:                                               ; preds = %26
  store i32* %20, i32** %17, align 8
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i64*, i64** %15, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %15, align 8
  store i32 0, i32* %16, align 4
  %42 = load i64*, i64** %15, align 8
  store i64* %42, i64** %21, align 8
  br label %43

43:                                               ; preds = %51, %38
  %44 = load i64*, i64** %21, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETYPE_NULL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %16, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i64*, i64** %21, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %21, align 8
  br label %43

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32* @realloc(i32* %58, i32 %66)
  store i32* %67, i32** %19, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = load i64, i64* @ENOMEM, align 8
  %73 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @krb5_set_error_message(%struct.TYPE_13__* %71, i64 %72, i32 %73)
  %75 = load i64, i64* @ENOMEM, align 8
  store i64 %75, i64* %9, align 8
  br label %138

76:                                               ; preds = %55
  %77 = load i32*, i32** %19, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  store i64 0, i64* %22, align 8
  br label %80

80:                                               ; preds = %127, %76
  %81 = load i64, i64* %22, align 8
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %80
  %86 = load i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)*, i64 (%struct.TYPE_13__*, i64, i32, i32, i32**)** %13, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = load i64*, i64** %15, align 8
  %89 = load i64, i64* %22, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i64 %86(%struct.TYPE_13__* %87, i64 %91, i32 %93, i32 %94, i32** %23)
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %127

99:                                               ; preds = %85
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i64*, i64** %15, align 8
  %110 = load i64, i64* %22, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = call i64 @make_pa_enc_timestamp(%struct.TYPE_13__* %100, i32* %108, i64 %112, i32* %113)
  store i64 %114, i64* %18, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = load i32*, i32** %23, align 8
  %117 = call i32 @krb5_free_keyblock(%struct.TYPE_13__* %115, i32* %116)
  %118 = load i64, i64* %18, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i64, i64* %18, align 8
  store i64 %121, i64* %9, align 8
  br label %138

122:                                              ; preds = %99
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %98
  %128 = load i64, i64* %22, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %22, align 8
  br label %80

130:                                              ; preds = %80
  %131 = load i32*, i32** %17, align 8
  %132 = icmp eq i32* %131, %20
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @krb5_free_salt(%struct.TYPE_13__* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  store i64 0, i64* %9, align 8
  br label %138

138:                                              ; preds = %137, %120, %70, %32
  %139 = load i64, i64* %9, align 8
  ret i64 %139
}

declare dso_local i64 @krb5_get_pw_salt(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @krb5_set_error_message(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @make_pa_enc_timestamp(%struct.TYPE_13__*, i32*, i64, i32*) #1

declare dso_local i32 @krb5_free_keyblock(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @krb5_free_salt(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
