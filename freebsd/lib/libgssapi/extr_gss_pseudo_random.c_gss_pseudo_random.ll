; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_pseudo_random.c_gss_pseudo_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_pseudo_random.c_gss_pseudo_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32, i32, i32, i32)* }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_S_UNAVAILABLE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_pseudo_random(i64* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._gss_context*, align 8
  %15 = alloca %struct._gss_mech_switch*, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = inttoptr i64 %17 to %struct._gss_context*
  store %struct._gss_context* %18, %struct._gss_context** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @_gss_buffer_zero(i32 %19)
  %21 = load i64*, i64** %8, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct._gss_context*, %struct._gss_context** %14, align 8
  %23 = icmp eq %struct._gss_context* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i64*, i64** %8, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %26, i64* %7, align 8
  br label %61

27:                                               ; preds = %6
  %28 = load %struct._gss_context*, %struct._gss_context** %14, align 8
  %29 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %28, i32 0, i32 1
  %30 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %29, align 8
  store %struct._gss_mech_switch* %30, %struct._gss_mech_switch** %15, align 8
  %31 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %15, align 8
  %32 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %31, i32 0, i32 0
  %33 = load i64 (i64*, i32, i32, i32, i32, i32)*, i64 (i64*, i32, i32, i32, i32, i32)** %32, align 8
  %34 = icmp eq i64 (i64*, i32, i32, i32, i32, i32)* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @GSS_S_UNAVAILABLE, align 8
  store i64 %36, i64* %7, align 8
  br label %61

37:                                               ; preds = %27
  %38 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %15, align 8
  %39 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %38, i32 0, i32 0
  %40 = load i64 (i64*, i32, i32, i32, i32, i32)*, i64 (i64*, i32, i32, i32, i32, i32)** %39, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load %struct._gss_context*, %struct._gss_context** %14, align 8
  %43 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i64 %40(i64* %41, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @GSS_S_COMPLETE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %54, i64 %55, i64 %57)
  br label %59

59:                                               ; preds = %53, %37
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %35, %24
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

declare dso_local i32 @_gss_buffer_zero(i32) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
