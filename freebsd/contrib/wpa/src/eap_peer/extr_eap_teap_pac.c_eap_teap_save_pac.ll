; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_save_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_save_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_pac = type { %struct.eap_teap_pac* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@pac_file_hdr = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Wrote %d PAC entries into '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_save_pac(%struct.eap_sm* %0, %struct.eap_teap_pac* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_pac*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_teap_pac*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_pac* %1, %struct.eap_teap_pac** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  store i64 1024, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i8* @os_malloc(i64 %18)
  store i8* %19, i8** %11, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8*, i8** %12, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @pac_file_hdr, align 4
  %34 = call i32 @os_snprintf(i8* %24, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %12, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @os_snprintf_error(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @os_free(i8* %47)
  store i32 -1, i32* %4, align 4
  br label %91

49:                                               ; preds = %23
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %12, align 8
  %54 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  store %struct.eap_teap_pac* %54, %struct.eap_teap_pac** %8, align 8
  br label %55

55:                                               ; preds = %65, %49
  %56 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %57 = icmp ne %struct.eap_teap_pac* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %60 = call i64 @eap_teap_add_pac_data(%struct.eap_teap_pac* %59, i8** %11, i8** %12, i64* %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @os_free(i8* %63)
  store i32 -1, i32* %4, align 4
  br label %91

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %69 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %68, i32 0, i32 0
  %70 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %69, align 8
  store %struct.eap_teap_pac* %70, %struct.eap_teap_pac** %8, align 8
  br label %55

71:                                               ; preds = %55
  %72 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i64 @eap_teap_write_pac(%struct.eap_sm* %72, i8* %73, i8* %74, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @os_free(i8* %84)
  store i32 -1, i32* %4, align 4
  br label %91

86:                                               ; preds = %71
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @wpa_printf(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %83, %62, %46, %22, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @eap_teap_add_pac_data(%struct.eap_teap_pac*, i8**, i8**, i64*) #1

declare dso_local i64 @eap_teap_write_pac(%struct.eap_sm*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
