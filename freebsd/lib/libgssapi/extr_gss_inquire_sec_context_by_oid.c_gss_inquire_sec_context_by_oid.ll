; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_sec_context_by_oid.c_gss_inquire_sec_context_by_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_sec_context_by_oid.c_gss_inquire_sec_context_by_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32, i32*)* }

@GSS_C_NO_BUFFER_SET = common dso_local global i32 0, align 4
@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_inquire_sec_context_by_oid(i64* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._gss_context*, align 8
  %12 = alloca %struct._gss_mech_switch*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct._gss_context*
  store %struct._gss_context* %14, %struct._gss_context** %11, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @GSS_C_NO_BUFFER_SET, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct._gss_context*, %struct._gss_context** %11, align 8
  %19 = icmp ne %struct._gss_context* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %21, i64* %5, align 8
  br label %55

22:                                               ; preds = %4
  %23 = load %struct._gss_context*, %struct._gss_context** %11, align 8
  %24 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %23, i32 0, i32 1
  %25 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %24, align 8
  store %struct._gss_mech_switch* %25, %struct._gss_mech_switch** %12, align 8
  %26 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %12, align 8
  %27 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %26, i32 0, i32 0
  %28 = load i64 (i64*, i32, i32, i32*)*, i64 (i64*, i32, i32, i32*)** %27, align 8
  %29 = icmp ne i64 (i64*, i32, i32, i32*)* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %12, align 8
  %32 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %31, i32 0, i32 0
  %33 = load i64 (i64*, i32, i32, i32*)*, i64 (i64*, i32, i32, i32*)** %32, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load %struct._gss_context*, %struct._gss_context** %11, align 8
  %36 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 %33(i64* %34, i32 %37, i32 %38, i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @GSS_S_COMPLETE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %45, i64 %46, i64 %48)
  br label %50

50:                                               ; preds = %44, %30
  br label %53

51:                                               ; preds = %22
  %52 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
