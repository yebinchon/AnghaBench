; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_names_for_mech.c_gss_inquire_names_for_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_names_for_mech.c_gss_inquire_names_for_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_mech_switch = type { i64 (i64*, i32, i32*)* }

@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@GSS_C_NT_USER_NAME = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_inquire_names_for_mech(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._gss_mech_switch*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct._gss_mech_switch* @_gss_find_mech_switch(i32 %12)
  store %struct._gss_mech_switch* %13, %struct._gss_mech_switch** %9, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %18 = icmp ne %struct._gss_mech_switch* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %20, i64* %4, align 8
  br label %67

21:                                               ; preds = %3
  %22 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %23 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %22, i32 0, i32 0
  %24 = load i64 (i64*, i32, i32*)*, i64 (i64*, i32, i32*)** %23, align 8
  %25 = icmp ne i64 (i64*, i32, i32*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %28 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %27, i32 0, i32 0
  %29 = load i64 (i64*, i32, i32*)*, i64 (i64*, i32, i32*)** %28, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 %29(i64* %30, i32 %31, i32* %32)
  store i64 %33, i64* %4, align 8
  br label %67

34:                                               ; preds = %21
  %35 = load i64*, i64** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @gss_create_empty_oid_set(i64* %35, i32* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %67

42:                                               ; preds = %34
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @gss_add_oid_set_member(i64* %43, i32 %44, i32* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @gss_release_oid_set(i64* %10, i32* %50)
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %67

53:                                               ; preds = %42
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* @GSS_C_NT_USER_NAME, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @gss_add_oid_set_member(i64* %54, i32 %55, i32* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @gss_release_oid_set(i64* %11, i32* %61)
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %4, align 8
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %60, %49, %40, %26, %19
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(i32) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, i32*) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, i32, i32*) #1

declare dso_local i32 @gss_release_oid_set(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
