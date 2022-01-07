; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_ka.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_ka.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"EAP-EKE Ka\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"EAP-EKE: Ka\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_derive_ka(%struct.eap_eke_session* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_eke_session*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %21 = load i8*, i8** %19, align 8
  %22 = call i64 @os_strlen(i8* %21)
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %20, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %29 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 %27, %32
  store i64 %33, i64* %18, align 8
  %34 = load i64, i64* %18, align 8
  %35 = call i8* @os_malloc(i64 %34)
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %115

39:                                               ; preds = %7
  %40 = load i8*, i8** %16, align 8
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = load i64, i64* %20, align 8
  %44 = call i32 @os_memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load i64, i64* %20, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @os_memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @os_memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i64, i64* %13, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %65 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @os_memcpy(i8* %62, i8* %63, i64 %67)
  %69 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %70 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %17, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %17, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %78 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @os_memcpy(i8* %75, i8* %76, i64 %80)
  %82 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %83 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %86 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %89 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %94 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %97 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @eap_eke_prfplus(i32 %84, i32 %87, i32 %90, i8* %91, i64 %92, i32 %95, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %39
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @os_free(i8* %102)
  store i32 -1, i32* %8, align 4
  br label %115

104:                                              ; preds = %39
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @os_free(i8* %105)
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %109 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.eap_eke_session*, %struct.eap_eke_session** %9, align 8
  %112 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @wpa_hexdump_key(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %104, %101, %38
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @eap_eke_prfplus(i32, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
