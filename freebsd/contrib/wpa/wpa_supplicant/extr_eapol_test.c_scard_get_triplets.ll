; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_scard_get_triplets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_scard_get_triplets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i32 }
%struct.scard_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"invalid parameters for sim command\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@wpa_debug_level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to open smartcard connection\0A\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"PIN validation failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eapol_test_data*, i32, i8**)* @scard_get_triplets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_get_triplets(%struct.eapol_test_data* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eapol_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.scard_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8**, i8*** %7, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %14, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @os_strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  store i32 99, i32* @wpa_debug_level, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.eapol_test_data*, %struct.eapol_test_data** %5, align 8
  %39 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.scard_data* @scard_init(i32 %40)
  store %struct.scard_data* %41, %struct.scard_data** %8, align 8
  %42 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %43 = icmp eq %struct.scard_data* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

46:                                               ; preds = %37
  %47 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @scard_set_pin(%struct.scard_data* %47, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @MSG_WARNING, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %57 = call i32 @scard_deinit(%struct.scard_data* %56)
  store i32 -1, i32* %4, align 4
  br label %146

58:                                               ; preds = %46
  store i64 20, i64* %9, align 8
  %59 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %61 = call i64 @scard_get_imsi(%struct.scard_data* %59, i8* %60, i64* %9)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %65 = call i32 @scard_deinit(%struct.scard_data* %64)
  store i32 -1, i32* %4, align 4
  br label %146

66:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %140, %66
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %143

71:                                               ; preds = %67
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @os_memset(i8* %72, i32 %73, i32 16)
  %75 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %79 = call i64 @scard_gsm_auth(%struct.scard_data* %75, i8* %76, i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %143

82:                                               ; preds = %71
  store i64 0, i64* %16, align 8
  br label %83

83:                                               ; preds = %93, %82
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %83

96:                                               ; preds = %83
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %98

98:                                               ; preds = %107, %96
  %99 = load i64, i64* %16, align 8
  %100 = icmp ult i64 %99, 8
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %16, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %16, align 8
  br label %98

110:                                              ; preds = %98
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %112

112:                                              ; preds = %121, %110
  %113 = load i64, i64* %16, align 8
  %114 = icmp ult i64 %113, 4
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i64, i64* %16, align 8
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %16, align 8
  br label %112

124:                                              ; preds = %112
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %126

126:                                              ; preds = %135, %124
  %127 = load i64, i64* %16, align 8
  %128 = icmp ult i64 %127, 16
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i64, i64* %16, align 8
  %131 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %16, align 8
  br label %126

138:                                              ; preds = %126
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %67

143:                                              ; preds = %81, %67
  %144 = load %struct.scard_data*, %struct.scard_data** %8, align 8
  %145 = call i32 @scard_deinit(%struct.scard_data* %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %63, %53, %44, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local %struct.scard_data* @scard_init(i32) #1

declare dso_local i64 @scard_set_pin(%struct.scard_data*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @scard_deinit(%struct.scard_data*) #1

declare dso_local i64 @scard_get_imsi(%struct.scard_data*, i8*, i64*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i64 @scard_gsm_auth(%struct.scard_data*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
