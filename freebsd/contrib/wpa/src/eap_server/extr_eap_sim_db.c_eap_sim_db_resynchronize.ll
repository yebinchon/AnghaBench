; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_resynchronize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_resynchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i64 }

@EAP_AKA_PERMANENT_PREFIX = common dso_local global i8 0, align 1
@EAP_AKA_PRIME_PERMANENT_PREFIX = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-SIM DB: unexpected username '%s'\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-SIM DB: Get AKA auth for IMSI '%s'\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AKA-AUTS \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EAP_AKA_AUTS_LEN = common dso_local global i32 0, align 4
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"EAP-SIM DB: reporting AKA AUTS for IMSI '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_db_resynchronize(%struct.eap_sim_db_data* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sim_db_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @EAP_AKA_PERMANENT_PREFIX, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @EAP_AKA_PRIME_PERMANENT_PREFIX, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %25, %17
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @os_strlen(i8* %40)
  %42 = icmp sgt i32 %41, 20
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %33, %25, %4
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %5, align 4
  br label %169

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %168

57:                                               ; preds = %47
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @os_strlen(i8* %58)
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %11, align 8
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %62 = call i32 @os_snprintf(i8* %61, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @os_snprintf_error(i32 100, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %68, %69
  %71 = icmp uge i64 %70, 100
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %57
  store i32 -1, i32* %5, align 4
  br label %169

73:                                               ; preds = %66
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @os_memcpy(i8* %77, i8* %78, i64 %79)
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 100, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @os_snprintf(i8* %89, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 100, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @os_snprintf_error(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  store i32 -1, i32* %5, align 4
  br label %169

103:                                              ; preds = %73
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 100, %112
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %117 = call i64 @wpa_snprintf_hex(i8* %110, i32 %114, i32* %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 100, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @os_snprintf(i8* %125, i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 100, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %14, align 4
  %136 = call i64 @os_snprintf_error(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %103
  store i32 -1, i32* %5, align 4
  br label %169

139:                                              ; preds = %103
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 100, %148
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %153 = call i64 @wpa_snprintf_hex(i8* %146, i32 %150, i32* %151, i32 %152)
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @wpa_printf(i32 %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  %161 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %6, align 8
  %162 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %163 = load i32, i32* %13, align 4
  %164 = call i64 @eap_sim_db_send(%struct.eap_sim_db_data* %161, i8* %162, i32 %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %139
  store i32 -1, i32* %5, align 4
  br label %169

167:                                              ; preds = %139
  br label %168

168:                                              ; preds = %167, %47
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %168, %166, %138, %102, %72, %43
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @wpa_snprintf_hex(i8*, i32, i32*, i32) #1

declare dso_local i64 @eap_sim_db_send(%struct.eap_sim_db_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
