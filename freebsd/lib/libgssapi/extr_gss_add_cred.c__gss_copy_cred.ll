; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_add_cred.c__gss_copy_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_add_cred.c__gss_copy_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_mechanism_cred = type { i32, i32*, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i32, i32 (i64*, i32*)*, i32 (i64*, i32*)*, i64 (i64*, i32, i32, i32*, i32, i64, i64, i32*, i32, i32, i32)*, i64 (i64*, i32, i32*, i32*, i64*, i64*, i32*)* }

@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._gss_mechanism_cred* (%struct._gss_mechanism_cred*)* @_gss_copy_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._gss_mechanism_cred* @_gss_copy_cred(%struct._gss_mechanism_cred* %0) #0 {
  %2 = alloca %struct._gss_mechanism_cred*, align 8
  %3 = alloca %struct._gss_mechanism_cred*, align 8
  %4 = alloca %struct._gss_mechanism_cred*, align 8
  %5 = alloca %struct._gss_mech_switch*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct._gss_mechanism_cred* %0, %struct._gss_mechanism_cred** %3, align 8
  %13 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %3, align 8
  %14 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %13, i32 0, i32 2
  %15 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %14, align 8
  store %struct._gss_mech_switch* %15, %struct._gss_mech_switch** %5, align 8
  %16 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %17 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %16, i32 0, i32 4
  %18 = load i64 (i64*, i32, i32*, i32*, i64*, i64*, i32*)*, i64 (i64*, i32, i32*, i32*, i64*, i64*, i32*)** %17, align 8
  %19 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %3, align 8
  %20 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %3, align 8
  %23 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 %18(i64* %7, i32 %21, i32* %24, i32* %8, i64* %10, i64* %11, i32* %12)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %29, i64 %30, i64 %31)
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %2, align 8
  br label %78

33:                                               ; preds = %1
  %34 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %35 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %34, i32 0, i32 3
  %36 = load i64 (i64*, i32, i32, i32*, i32, i64, i64, i32*, i32, i32, i32)*, i64 (i64*, i32, i32, i32*, i32, i64, i64, i32*, i32, i32, i32)** %35, align 8
  %37 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %3, align 8
  %40 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 %36(i64* %7, i32 %37, i32 %38, i32* %41, i32 %42, i64 %43, i64 %44, i32* %9, i32 0, i32 0, i32 0)
  store i64 %45, i64* %6, align 8
  %46 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %47 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %46, i32 0, i32 2
  %48 = load i32 (i64*, i32*)*, i32 (i64*, i32*)** %47, align 8
  %49 = call i32 %48(i64* %7, i32* %8)
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %53, i64 %54, i64 %55)
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %2, align 8
  br label %78

57:                                               ; preds = %33
  %58 = call %struct._gss_mechanism_cred* @malloc(i32 24)
  store %struct._gss_mechanism_cred* %58, %struct._gss_mechanism_cred** %4, align 8
  %59 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %4, align 8
  %60 = icmp ne %struct._gss_mechanism_cred* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %63 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %62, i32 0, i32 1
  %64 = load i32 (i64*, i32*)*, i32 (i64*, i32*)** %63, align 8
  %65 = call i32 %64(i64* %7, i32* %9)
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %2, align 8
  br label %78

66:                                               ; preds = %57
  %67 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %68 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %4, align 8
  %69 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %68, i32 0, i32 2
  store %struct._gss_mech_switch* %67, %struct._gss_mech_switch** %69, align 8
  %70 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %5, align 8
  %71 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %70, i32 0, i32 0
  %72 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %4, align 8
  %73 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %4, align 8
  %76 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %4, align 8
  store %struct._gss_mechanism_cred* %77, %struct._gss_mechanism_cred** %2, align 8
  br label %78

78:                                               ; preds = %66, %61, %52, %28
  %79 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %2, align 8
  ret %struct._gss_mechanism_cred* %79
}

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

declare dso_local %struct._gss_mechanism_cred* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
