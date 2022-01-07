; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_session_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_session_init(%struct.eap_eke_session* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_eke_session*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %14 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %17 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %20 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %23 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @eap_eke_prf_len(i8* %24)
  %26 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %27 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @eap_eke_nonce_len(i8* %28)
  %30 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %31 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @eap_eke_auth_len(i8* %32)
  %34 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %35 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %37 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %36, i32 0, i32 8
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %40 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @eap_eke_dhcomp_len(i8* %38, i8* %41)
  %43 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %44 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %46 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @eap_eke_pnonce_len(i8* %47)
  %49 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %50 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %52 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @eap_eke_pnonce_ps_len(i8* %53)
  %55 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %56 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %58 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %5
  %62 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %63 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %68 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %73 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %78 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %83 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %76, %71, %66, %61, %5
  store i32 -1, i32* %6, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @eap_eke_prf_len(i8*) #1

declare dso_local i64 @eap_eke_nonce_len(i8*) #1

declare dso_local i64 @eap_eke_auth_len(i8*) #1

declare dso_local i64 @eap_eke_dhcomp_len(i8*, i8*) #1

declare dso_local i64 @eap_eke_pnonce_len(i8*) #1

declare dso_local i64 @eap_eke_pnonce_ps_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
