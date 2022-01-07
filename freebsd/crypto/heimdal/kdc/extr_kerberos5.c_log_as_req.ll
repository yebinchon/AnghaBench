; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_log_as_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_log_as_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8** }
%struct.rk_strpool = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Client supported enctypes: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"no encryption types\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", using %s/%s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c", using enctypes %d/%d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Requested flags: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, i8*, %struct.TYPE_5__*)* @log_as_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_as_req(i32 %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rk_strpool*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [128 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %18 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.rk_strpool* %18, %struct.rk_strpool** %12, align 8
  store i64 0, i64* %14, align 8
  br label %19

19:                                               ; preds = %76, %5
  %20 = load i64, i64* %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @krb5_enctype_to_string(i32 %27, i8* %34, i8** %13)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  store %struct.rk_strpool* %41, %struct.rk_strpool** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @free(i8* %42)
  br label %54

44:                                               ; preds = %26
  %45 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store %struct.rk_strpool* %53, %struct.rk_strpool** %12, align 8
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %56 = icmp ne %struct.rk_strpool* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = add i64 %58, 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %67 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct.rk_strpool* %67, %struct.rk_strpool** %12, align 8
  br label %68

68:                                               ; preds = %65, %57, %54
  %69 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %70 = icmp eq %struct.rk_strpool* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %72, i32* %73, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %139

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %14, align 8
  br label %19

79:                                               ; preds = %19
  %80 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %81 = icmp eq %struct.rk_strpool* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %84 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store %struct.rk_strpool* %84, %struct.rk_strpool** %12, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %6, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @krb5_enctype_to_string(i32 %86, i8* %87, i8** %15)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @krb5_enctype_to_string(i32 %92, i8* %93, i8** %16)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %99, i8* %100)
  store %struct.rk_strpool* %101, %struct.rk_strpool** %12, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %97, %91
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %113)
  store %struct.rk_strpool* %114, %struct.rk_strpool** %12, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.rk_strpool*, %struct.rk_strpool** %12, align 8
  %117 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %116)
  store i8* %117, i8** %13, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %118, i32* %119, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @KDCOptions2int(i32 %126)
  %128 = call i32 (...) @asn1_KDCOptions_units()
  %129 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %130 = call i32 @unparse_flags(i32 %127, i32 %128, i8* %129, i32 128)
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %132 = load i8, i8* %131, align 16
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %115
  %135 = load i32, i32* %6, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %138 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %135, i32* %136, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %71, %134, %115
  ret void
}

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, ...) #1

declare dso_local i64 @krb5_enctype_to_string(i32, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

declare dso_local i32 @unparse_flags(i32, i32, i8*, i32) #1

declare dso_local i32 @KDCOptions2int(i32) #1

declare dso_local i32 @asn1_KDCOptions_units(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
