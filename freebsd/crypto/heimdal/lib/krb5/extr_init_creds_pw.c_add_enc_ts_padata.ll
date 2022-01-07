; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_add_enc_ts_padata.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_add_enc_ts_padata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }

@ETYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"krb5_get_init_creds: using ENC-TS with enctype %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, i32, i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)*, i32, i64*, i32, i32*, i32*)* @add_enc_ts_padata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_enc_ts_padata(%struct.TYPE_11__* %0, i32* %1, i32 %2, i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)* %3, i32 %4, i64* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)* %3, i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64* %5, i64** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %9
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @krb5_get_pw_salt(%struct.TYPE_11__* %28, i32 %29, i32* %21)
  store i64 %30, i64* %20, align 8
  %31 = load i64, i64* %20, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %20, align 8
  store i64 %34, i64* %10, align 8
  br label %111

35:                                               ; preds = %27
  store i32* %21, i32** %18, align 8
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i64*, i64** %16, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %16, align 8
  store i32 0, i32* %17, align 4
  %43 = load i64*, i64** %16, align 8
  store i64* %43, i64** %22, align 8
  br label %44

44:                                               ; preds = %52, %39
  %45 = load i64*, i64** %22, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ETYPE_NULL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %17, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i64*, i64** %22, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %22, align 8
  br label %44

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %36
  store i64 0, i64* %23, align 8
  br label %57

57:                                               ; preds = %100, %56
  %58 = load i64, i64* %23, align 8
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = load i64*, i64** %16, align 8
  %65 = load i64, i64* %23, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @_krb5_debug(%struct.TYPE_11__* %63, i32 5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)*, i64 (%struct.TYPE_11__*, i64, i32, i32, i32*, i32**)** %14, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = load i64*, i64** %16, align 8
  %72 = load i64, i64* %23, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = call i64 %69(%struct.TYPE_11__* %70, i64 %74, i32 %75, i32 %77, i32* %78, i32** %24)
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  br label %100

83:                                               ; preds = %62
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i64*, i64** %16, align 8
  %87 = load i64, i64* %23, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %24, align 8
  %91 = call i64 @make_pa_enc_timestamp(%struct.TYPE_11__* %84, i32* %85, i64 %89, i32* %90)
  store i64 %91, i64* %20, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %93 = load i32*, i32** %24, align 8
  %94 = call i32 @krb5_free_keyblock(%struct.TYPE_11__* %92, i32* %93)
  %95 = load i64, i64* %20, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i64, i64* %20, align 8
  store i64 %98, i64* %10, align 8
  br label %111

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i64, i64* %23, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %23, align 8
  br label %57

103:                                              ; preds = %57
  %104 = load i32*, i32** %18, align 8
  %105 = icmp eq i32* %104, %21
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @krb5_free_salt(%struct.TYPE_11__* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  store i64 0, i64* %10, align 8
  br label %111

111:                                              ; preds = %110, %97, %33
  %112 = load i64, i64* %10, align 8
  ret i64 %112
}

declare dso_local i64 @krb5_get_pw_salt(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @_krb5_debug(%struct.TYPE_11__*, i32, i8*, i64) #1

declare dso_local i64 @make_pa_enc_timestamp(%struct.TYPE_11__*, i32*, i64, i32*) #1

declare dso_local i32 @krb5_free_keyblock(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @krb5_free_salt(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
