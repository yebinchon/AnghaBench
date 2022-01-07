; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_aka_resp_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_aka_resp_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, i32 (i32, i32)* }
%struct.eap_sim_db_pending = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-SIM DB: No pending entry for the received message found\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-SIM DB: External server reported failure\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@EAP_AKA_AUTN_LEN = common dso_local global i32 0, align 4
@EAP_AKA_IK_LEN = common dso_local global i32 0, align 4
@EAP_AKA_CK_LEN = common dso_local global i32 0, align 4
@EAP_AKA_RES_MAX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"EAP-SIM DB: Too long RES\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"EAP-SIM DB: Authentication data parsed successfully - callback\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"EAP-SIM DB: Failed to parse response string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_db_data*, i8*, i8*)* @eap_sim_db_aka_resp_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_aka_resp_auth(%struct.eap_sim_db_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.eap_sim_db_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.eap_sim_db_pending*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.eap_sim_db_pending* @eap_sim_db_get_pending(%struct.eap_sim_db_data* %10, i8* %11, i32 1)
  store %struct.eap_sim_db_pending* %12, %struct.eap_sim_db_pending** %9, align 8
  %13 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %14 = icmp eq %struct.eap_sim_db_pending* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %205

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @os_strncmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @FAILURE, align 4
  %27 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %28 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %30 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %31 = call i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data* %29, %struct.eap_sim_db_pending* %30)
  %32 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %33 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %32, i32 0, i32 1
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %36 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %39 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %34(i32 %37, i32 %40)
  br label %205

42:                                               ; preds = %18
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @os_strchr(i8* %43, i8 signext 32)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %199

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %52 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %57 = call i64 @hexstr2bin(i8* %50, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %199

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @os_strchr(i8* %63, i8 signext 32)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %199

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %72 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %77 = call i64 @hexstr2bin(i8* %70, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %199

80:                                               ; preds = %68
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @os_strchr(i8* %83, i8 signext 32)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %199

88:                                               ; preds = %80
  %89 = load i8*, i8** %8, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %92 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %97 = call i64 @hexstr2bin(i8* %90, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %199

100:                                              ; preds = %88
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i8* @os_strchr(i8* %103, i8 signext 32)
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %199

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %112 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %117 = call i64 @hexstr2bin(i8* %110, i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %199

120:                                              ; preds = %108
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i8* @os_strchr(i8* %123, i8 signext 32)
  store i8* %124, i8** %8, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i8*, i8** %8, align 8
  store i8 0, i8* %128, align 1
  br label %139

129:                                              ; preds = %120
  %130 = load i8*, i8** %7, align 8
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %135, %129
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  br label %131

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %127
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv i64 %144, 2
  %146 = trunc i64 %145 to i32
  %147 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %148 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 4
  %151 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %152 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @EAP_AKA_RES_MAX_LEN, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %139
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = call i32 @wpa_printf(i32 %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %162 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 4
  br label %199

165:                                              ; preds = %139
  %166 = load i8*, i8** %7, align 8
  %167 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %168 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %173 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @hexstr2bin(i8* %166, i32 %171, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  br label %199

180:                                              ; preds = %165
  %181 = load i32, i32* @SUCCESS, align 4
  %182 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %183 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 @wpa_printf(i32 %184, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %186 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %187 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %188 = call i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data* %186, %struct.eap_sim_db_pending* %187)
  %189 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %190 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %189, i32 0, i32 1
  %191 = load i32 (i32, i32)*, i32 (i32, i32)** %190, align 8
  %192 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %193 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %196 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 %191(i32 %194, i32 %197)
  br label %205

199:                                              ; preds = %179, %158, %119, %107, %99, %87, %79, %67, %59, %47
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 @wpa_printf(i32 %200, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %202 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %203 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %204 = call i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data* %202, %struct.eap_sim_db_pending* %203)
  br label %205

205:                                              ; preds = %199, %180, %23, %15
  ret void
}

declare dso_local %struct.eap_sim_db_pending* @eap_sim_db_get_pending(%struct.eap_sim_db_data*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
