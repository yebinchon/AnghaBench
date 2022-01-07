; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_get_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_get_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i64, i32, i32, i64 }
%struct.radius_msg = type { i32 }
%struct.radius_ms_mppe_keys = type { i64, i64, %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MS-MPPE-Send-Key (sign)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MS-MPPE-Recv-Key (crypt)\00", align 1
@PMK_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Use MS-MPPE-Send-Key to extend PMK to 32 octets\00", align 1
@RADIUS_ATTR_EAP_KEY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_test_data*, %struct.radius_msg*, %struct.radius_msg*, %struct.radius_ms_mppe_keys*, i64)* @ieee802_1x_get_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_get_keys(%struct.eapol_test_data* %0, %struct.radius_msg* %1, %struct.radius_msg* %2, %struct.radius_ms_mppe_keys* %3, i64 %4) #0 {
  %6 = alloca %struct.eapol_test_data*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca %struct.radius_ms_mppe_keys*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.radius_ms_mppe_keys*, align 8
  %12 = alloca %struct.radius_ms_mppe_keys*, align 8
  %13 = alloca i64, align 8
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %6, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %7, align 8
  store %struct.radius_msg* %2, %struct.radius_msg** %8, align 8
  store %struct.radius_ms_mppe_keys* %3, %struct.radius_ms_mppe_keys** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %15 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %16 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.radius_ms_mppe_keys* @radius_msg_get_ms_keys(%struct.radius_msg* %14, %struct.radius_msg* %15, %struct.radius_ms_mppe_keys* %16, i64 %17)
  store %struct.radius_ms_mppe_keys* %18, %struct.radius_ms_mppe_keys** %11, align 8
  %19 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %20 = icmp ne %struct.radius_ms_mppe_keys* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %5
  %22 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %23 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %22, i32 0, i32 3
  %24 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %23, align 8
  %25 = icmp eq %struct.radius_ms_mppe_keys* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %28 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %27, i32 0, i32 2
  %29 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %28, align 8
  %30 = icmp eq %struct.radius_ms_mppe_keys* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %33 = call i32 @os_free(%struct.radius_ms_mppe_keys* %32)
  %34 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %35 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %36 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call %struct.radius_ms_mppe_keys* @radius_msg_get_cisco_keys(%struct.radius_msg* %34, %struct.radius_msg* %35, %struct.radius_ms_mppe_keys* %36, i64 %37)
  store %struct.radius_ms_mppe_keys* %38, %struct.radius_ms_mppe_keys** %11, align 8
  br label %39

39:                                               ; preds = %31, %26, %21, %5
  %40 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %41 = icmp ne %struct.radius_ms_mppe_keys* %40, null
  br i1 %41, label %42, label %147

42:                                               ; preds = %39
  %43 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %44 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %43, i32 0, i32 3
  %45 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %44, align 8
  %46 = icmp ne %struct.radius_ms_mppe_keys* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %50 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %49, i32 0, i32 3
  %51 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %50, align 8
  %52 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %53 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wpa_hexdump(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.radius_ms_mppe_keys* %51, i64 %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %58 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %57, i32 0, i32 2
  %59 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %58, align 8
  %60 = icmp ne %struct.radius_ms_mppe_keys* %59, null
  br i1 %60, label %61, label %136

61:                                               ; preds = %56
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %64 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %63, i32 0, i32 2
  %65 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %64, align 8
  %66 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %67 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @wpa_hexdump(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.radius_ms_mppe_keys* %65, i64 %68)
  %70 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %71 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PMK_LEN, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i64, i64* @PMK_LEN, align 8
  br label %81

77:                                               ; preds = %61
  %78 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %79 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %77 ]
  %83 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %84 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %86 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %89 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %88, i32 0, i32 2
  %90 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %89, align 8
  %91 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %92 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @os_memcpy(i32 %87, %struct.radius_ms_mppe_keys* %90, i64 %93)
  %95 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %96 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 16
  br i1 %98, label %99, label %135

99:                                               ; preds = %81
  %100 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %101 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %100, i32 0, i32 3
  %102 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %101, align 8
  %103 = icmp ne %struct.radius_ms_mppe_keys* %102, null
  br i1 %103, label %104, label %135

104:                                              ; preds = %99
  %105 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %106 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 16
  br i1 %108, label %109, label %135

109:                                              ; preds = %104
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 @wpa_printf(i32 %110, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %113 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %117 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %122 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %121, i32 0, i32 3
  %123 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %122, align 8
  %124 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %125 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @os_memcpy(i32 %120, %struct.radius_ms_mppe_keys* %123, i64 %126)
  %128 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %129 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %132 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %130
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %109, %104, %99, %81
  br label %136

136:                                              ; preds = %135, %56
  %137 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %138 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %137, i32 0, i32 3
  %139 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %138, align 8
  %140 = call i32 @os_free(%struct.radius_ms_mppe_keys* %139)
  %141 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %142 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %141, i32 0, i32 2
  %143 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %142, align 8
  %144 = call i32 @os_free(%struct.radius_ms_mppe_keys* %143)
  %145 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %11, align 8
  %146 = call i32 @os_free(%struct.radius_ms_mppe_keys* %145)
  br label %147

147:                                              ; preds = %136, %39
  %148 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %149 = load i32, i32* @RADIUS_ATTR_EAP_KEY_NAME, align 4
  %150 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %148, i32 %149, %struct.radius_ms_mppe_keys** %12, i64* %13, i32* null)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %154 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @os_memcpy(i32 %155, %struct.radius_ms_mppe_keys* %156, i64 %157)
  %159 = load i64, i64* %13, align 8
  %160 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %161 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  br label %165

162:                                              ; preds = %147
  %163 = load %struct.eapol_test_data*, %struct.eapol_test_data** %6, align 8
  %164 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %162, %152
  ret void
}

declare dso_local %struct.radius_ms_mppe_keys* @radius_msg_get_ms_keys(%struct.radius_msg*, %struct.radius_msg*, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @os_free(%struct.radius_ms_mppe_keys*) #1

declare dso_local %struct.radius_ms_mppe_keys* @radius_msg_get_cisco_keys(%struct.radius_msg*, %struct.radius_msg*, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @os_memcpy(i32, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, %struct.radius_ms_mppe_keys**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
