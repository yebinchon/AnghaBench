; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_set_pkcs11_engine_and_module_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_set_pkcs11_engine_and_module_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_set_pkcs11_engine_and_module_path(%struct.wpa_supplicant* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @os_strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %85

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @os_strdup(i8* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @os_free(i8* %28)
  store i32 -1, i32* %4, align 4
  br label %85

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @os_free(i8* %36)
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @os_free(i8* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wpa_sm_set_eapol(i32 %56, i32* null)
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @eapol_sm_deinit(i32* %60)
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = call i64 @wpa_supplicant_init_eapol(%struct.wpa_supplicant* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %31
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %75 = call i32 @wpas_set_pkcs11_engine_and_module_path(%struct.wpa_supplicant* %74, i8* null, i8* null)
  br label %76

76:                                               ; preds = %73, %70, %67
  store i32 -1, i32* %4, align 4
  br label %85

77:                                               ; preds = %31
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @wpa_sm_set_eapol(i32 %80, i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %76, %27, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_sm_set_eapol(i32, i32*) #1

declare dso_local i32 @eapol_sm_deinit(i32*) #1

declare dso_local i64 @wpa_supplicant_init_eapol(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
