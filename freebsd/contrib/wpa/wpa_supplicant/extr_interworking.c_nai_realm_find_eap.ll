; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_find_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_find_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm_eap = type { i32 }
%struct.wpa_supplicant = type { i32 }
%struct.wpa_cred = type { i8*, i8*, i8* }
%struct.nai_realm = type { i64, %struct.nai_realm_eap* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"nai-realm-find-eap: incomplete cred info: username: %s  password: %s private_key: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nai_realm_eap* (%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.nai_realm*)* @nai_realm_find_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nai_realm_eap* @nai_realm_find_eap(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.nai_realm* %2) #0 {
  %4 = alloca %struct.nai_realm_eap*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca %struct.nai_realm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nai_realm_eap*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %6, align 8
  store %struct.nai_realm* %2, %struct.nai_realm** %7, align 8
  %10 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %11 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %3
  %15 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %16 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %27, %22
  %36 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %42 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %40, %35, %14, %3
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %52 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i8* [ %58, %55 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %59 ]
  %62 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %63 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %68 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i8* [ %69, %66 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %70 ]
  %73 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %74 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %79 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i8* [ %80, %77 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %81 ]
  %84 = call i32 @wpa_msg(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %72, i8* %83)
  store %struct.nai_realm_eap* null, %struct.nai_realm_eap** %4, align 8
  br label %142

85:                                               ; preds = %40, %27
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %138, %85
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.nai_realm*, %struct.nai_realm** %7, align 8
  %89 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %86
  %93 = load %struct.nai_realm*, %struct.nai_realm** %7, align 8
  %94 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %93, i32 0, i32 1
  %95 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %95, i64 %96
  store %struct.nai_realm_eap* %97, %struct.nai_realm_eap** %9, align 8
  %98 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %99 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %92
  %103 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %104 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %112 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %9, align 8
  %113 = call i64 @nai_realm_cred_username(%struct.wpa_supplicant* %111, %struct.nai_realm_eap* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %9, align 8
  store %struct.nai_realm_eap* %116, %struct.nai_realm_eap** %4, align 8
  br label %142

117:                                              ; preds = %110, %102, %92
  %118 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %119 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %124 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %132 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %9, align 8
  %133 = call i64 @nai_realm_cred_cert(%struct.wpa_supplicant* %131, %struct.nai_realm_eap* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %9, align 8
  store %struct.nai_realm_eap* %136, %struct.nai_realm_eap** %4, align 8
  br label %142

137:                                              ; preds = %130, %122, %117
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %8, align 8
  br label %86

141:                                              ; preds = %86
  store %struct.nai_realm_eap* null, %struct.nai_realm_eap** %4, align 8
  br label %142

142:                                              ; preds = %141, %135, %115, %82
  %143 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %4, align 8
  ret %struct.nai_realm_eap* %143
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @nai_realm_cred_username(%struct.wpa_supplicant*, %struct.nai_realm_eap*) #1

declare dso_local i64 @nai_realm_cred_cert(%struct.wpa_supplicant*, %struct.nai_realm_eap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
