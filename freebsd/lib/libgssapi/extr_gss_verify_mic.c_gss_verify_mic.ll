; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_verify_mic.c_gss_verify_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_verify_mic.c_gss_verify_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32, i32, i64*)* }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_verify_mic(i64* %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct._gss_context*, align 8
  %13 = alloca %struct._gss_mech_switch*, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = inttoptr i64 %14 to %struct._gss_context*
  store %struct._gss_context* %15, %struct._gss_context** %12, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64*, i64** %11, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct._gss_context*, %struct._gss_context** %12, align 8
  %22 = icmp eq %struct._gss_context* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %25, i64* %6, align 8
  br label %41

26:                                               ; preds = %20
  %27 = load %struct._gss_context*, %struct._gss_context** %12, align 8
  %28 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %27, i32 0, i32 1
  %29 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %28, align 8
  store %struct._gss_mech_switch* %29, %struct._gss_mech_switch** %13, align 8
  %30 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %31 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %30, i32 0, i32 0
  %32 = load i64 (i64*, i32, i32, i32, i64*)*, i64 (i64*, i32, i32, i32, i64*)** %31, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load %struct._gss_context*, %struct._gss_context** %12, align 8
  %35 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i64*, i64** %11, align 8
  %40 = call i64 %32(i64* %33, i32 %36, i32 %37, i32 %38, i64* %39)
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %26, %23
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
