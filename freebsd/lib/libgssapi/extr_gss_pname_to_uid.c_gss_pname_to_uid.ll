; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_pname_to_uid.c_gss_pname_to_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_pname_to_uid.c_gss_pname_to_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_name = type { i32 }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32, i32*)* }
%struct._gss_mechanism_name = type { i32 }

@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@GSS_S_UNAVAILABLE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_pname_to_uid(i64* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._gss_name*, align 8
  %11 = alloca %struct._gss_mech_switch*, align 8
  %12 = alloca %struct._gss_mechanism_name*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct._gss_name*
  store %struct._gss_name* %15, %struct._gss_name** %10, align 8
  %16 = load i64*, i64** %6, align 8
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @GSS_C_NO_NAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %21, i64* %5, align 8
  br label %73

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct._gss_mech_switch* @_gss_find_mech_switch(i32 %23)
  store %struct._gss_mech_switch* %24, %struct._gss_mech_switch** %11, align 8
  %25 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %11, align 8
  %26 = icmp ne %struct._gss_mech_switch* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %28, i64* %5, align 8
  br label %73

29:                                               ; preds = %22
  %30 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %11, align 8
  %31 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %30, i32 0, i32 0
  %32 = load i64 (i64*, i32, i32, i32*)*, i64 (i64*, i32, i32, i32*)** %31, align 8
  %33 = icmp eq i64 (i64*, i32, i32, i32*)* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @GSS_S_UNAVAILABLE, align 8
  store i64 %35, i64* %5, align 8
  br label %73

36:                                               ; preds = %29
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct._gss_name*, %struct._gss_name** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @_gss_find_mn(i64* %37, %struct._gss_name* %38, i32 %39, %struct._gss_mechanism_name** %12)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @GSS_S_COMPLETE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %45, i64 %46, i64 %48)
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %5, align 8
  br label %73

51:                                               ; preds = %36
  %52 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %11, align 8
  %53 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %52, i32 0, i32 0
  %54 = load i64 (i64*, i32, i32, i32*)*, i64 (i64*, i32, i32, i32*)** %53, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %57 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 %54(i64* %55, i32 %58, i32 %59, i32* %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @GSS_S_COMPLETE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %66, i64 %67, i64 %69)
  br label %71

71:                                               ; preds = %65, %51
  %72 = load i64, i64* %13, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %44, %34, %27, %20
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(i32) #1

declare dso_local i64 @_gss_find_mn(i64*, %struct._gss_name*, i32, %struct._gss_mechanism_name**) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
