; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_compare_pmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_compare_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i32, i64, i32*, %struct.TYPE_2__*, i32, i64, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@PMK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PMK from EAPOL\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"WARNING: PMK mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PMK from AS\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"LEAP PMK from EAPOL\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"No EAP-Key-Name received from server\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Locally derived EAP Session-Id does not match EAP-Key-Name from server\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"EAP Session-Id\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"EAP-Key-Name from server\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Locally derived EAP Session-Id matches EAP-Key-Name from server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eapol_test_data*)* @eapol_test_compare_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eapol_test_compare_pmk(%struct.eapol_test_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eapol_test_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %3, align 8
  %10 = load i32, i32* @PMK_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PMK_LEN, align 4
  %20 = call i64 @eapol_sm_get_key(i32 %18, i32* %13, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* @PMK_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = call i32 @wpa_hexdump(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %13, i64 %25)
  %27 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %28 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @PMK_LEN, align 4
  %31 = sext i32 %30 to i64
  %32 = call i64 @os_memcmp(i32* %13, i32* %29, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %38 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @PMK_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %39, i64 %41)
  br label %50

43:                                               ; preds = %22
  %44 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %45 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %34
  br label %100

51:                                               ; preds = %1
  %52 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %53 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %58 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @eapol_sm_get_key(i32 %61, i32* %13, i32 16)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %56
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 @wpa_hexdump(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %13, i64 16)
  %67 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %68 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @os_memcmp(i32* %13, i32* %69, i64 16)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %76 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @wpa_hexdump(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %77, i64 16)
  br label %86

79:                                               ; preds = %64
  %80 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %81 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %72
  br label %99

87:                                               ; preds = %56, %51
  %88 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %89 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %94 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %92, %87
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %50
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %105 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %110 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %124

113:                                              ; preds = %103, %100
  %114 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %115 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %120 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %108
  %125 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %126 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32* @eapol_sm_get_session_id(i32 %129, i64* %8)
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %178

135:                                              ; preds = %124
  %136 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %137 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 @wpa_printf(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %178

144:                                              ; preds = %135
  %145 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %146 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %152 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i64 @os_memcmp(i32* %153, i32* %154, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %150, %144
  %159 = load i32, i32* @MSG_INFO, align 4
  %160 = call i32 @wpa_printf(i32 %159, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @wpa_hexdump(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %162, i64 %163)
  %165 = load i32, i32* @MSG_DEBUG, align 4
  %166 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %167 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.eapol_test_data*, %struct.eapol_test_data** %3, align 8
  %170 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @wpa_hexdump(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %168, i64 %171)
  br label %176

173:                                              ; preds = %150
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = call i32 @wpa_printf(i32 %174, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %158
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %178

178:                                              ; preds = %176, %140, %133
  %179 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eapol_sm_get_key(i32, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32* @eapol_sm_get_session_id(i32, i64*) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
