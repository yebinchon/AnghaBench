; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"EAP-TTLSv%d Phase2 method=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"EAP-%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MSCHAPV2\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MSCHAP\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PAP\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CHAP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, i8*, i64, i32)* @eap_ttls_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_get_status(%struct.eap_sm* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.eap_ttls_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.eap_ttls_data*
  store %struct.eap_ttls_data* %16, %struct.eap_ttls_data** %12, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %18 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %12, align 8
  %19 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %18, i32 0, i32 3
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @eap_peer_tls_status(%struct.eap_sm* %17, i32* %19, i8* %20, i64 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %12, align 8
  %33 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %27, i64 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %36, %38
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @os_snprintf_error(i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %131

45:                                               ; preds = %5
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %12, align 8
  %50 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %115 [
    i32 131, label %52
    i32 129, label %75
    i32 130, label %85
    i32 128, label %95
    i32 132, label %105
  ]

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 %57, %59
  %61 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %12, align 8
  %62 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %12, align 8
  %67 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8* [ %70, %65 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %71 ]
  %74 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %56, i64 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  store i32 %74, i32* %14, align 4
  br label %116

75:                                               ; preds = %45
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %80, %82
  %84 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %79, i64 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %84, i32* %14, align 4
  br label %116

85:                                               ; preds = %45
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %90, %92
  %94 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %89, i64 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %14, align 4
  br label %116

95:                                               ; preds = %45
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %100, %102
  %104 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %99, i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %104, i32* %14, align 4
  br label %116

105:                                              ; preds = %45
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %110, %112
  %114 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %109, i64 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %114, i32* %14, align 4
  br label %116

115:                                              ; preds = %45
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %105, %95, %85, %75, %72
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %117, %119
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @os_snprintf_error(i64 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %6, align 4
  br label %131

126:                                              ; preds = %116
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %124, %43
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @eap_peer_tls_status(%struct.eap_sm*, i32*, i8*, i64, i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
