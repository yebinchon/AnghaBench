; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_home_sp_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_home_sp_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i8*, i32, i64 }
%struct.wpa_cred = type { i8*, i8**, i64, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Interworking: Search for match with home SP FQDN %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interworking_home_sp_cred(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %11 = icmp eq %struct.wpabuf* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %14 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %30 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @wpa_msg(%struct.wpa_supplicant* %27, i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %37 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @domain_name_list_contains(%struct.wpabuf* %36, i8* %42, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %51

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %45, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, i8*) #1

declare dso_local i64 @domain_name_list_contains(%struct.wpabuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
