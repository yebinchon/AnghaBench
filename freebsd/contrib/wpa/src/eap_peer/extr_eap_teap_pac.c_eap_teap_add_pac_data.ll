; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_add_pac_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_add_pac_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"START\0APAC-Type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PAC-Key\00", align 1
@EAP_TEAP_PAC_KEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PAC-Opaque\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PAC-Info\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"A-ID\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"I-ID\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"A-ID-Info\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"EAP-TEAP: No memory for PAC data\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_pac*, i8**, i8**, i64*)* @eap_teap_add_pac_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_add_pac_data(%struct.eap_teap_pac* %0, i8** %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_teap_pac*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8**, i8*** %8, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %25 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %12, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %32 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @os_snprintf_error(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %149

43:                                               ; preds = %4
  %44 = load i32, i32* %10, align 4
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %45, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %53 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %56 = call i32 @eap_teap_write(i8** %49, i8** %50, i64* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 0)
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8**, i8*** %8, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %61 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %64 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @eap_teap_write(i8** %57, i8** %58, i64* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65, i32 0)
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8**, i8*** %8, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %71 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %74 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @eap_teap_write(i8** %67, i8** %68, i64* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %75, i32 0)
  %77 = load i8**, i8*** %7, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %81 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %84 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @eap_teap_write(i8** %77, i8** %78, i64* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %85, i32 0)
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8**, i8*** %8, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %91 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %94 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @eap_teap_write(i8** %87, i8** %88, i64* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %95, i32 1)
  %97 = load i8**, i8*** %7, align 8
  %98 = load i8**, i8*** %8, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %101 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %104 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @eap_teap_write(i8** %97, i8** %98, i64* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %105, i32 1)
  %107 = load i8**, i8*** %7, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %43
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 @wpa_printf(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %149

113:                                              ; preds = %43
  %114 = load i8**, i8*** %8, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8**, i8*** %8, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %120 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %115, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %127, i32* %10, align 4
  %128 = load i8**, i8*** %7, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8**, i8*** %8, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %132 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @os_snprintf_error(i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %113
  store i32 -1, i32* %5, align 4
  br label %149

143:                                              ; preds = %113
  %144 = load i32, i32* %10, align 4
  %145 = load i8**, i8*** %8, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = sext i32 %144 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %145, align 8
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %143, %142, %110, %42
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @eap_teap_write(i8**, i8**, i64*, i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
