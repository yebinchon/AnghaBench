; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_wrap.c_gss_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_wrap.c_gss_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32, i32, i32, i32*, i32)* }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_wrap(i64* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._gss_context*, align 8
  %17 = alloca %struct._gss_mech_switch*, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to %struct._gss_context*
  store %struct._gss_context* %19, %struct._gss_context** %16, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32*, i32** %14, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %7
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @_gss_buffer_zero(i32 %25)
  %27 = load %struct._gss_context*, %struct._gss_context** %16, align 8
  %28 = icmp eq %struct._gss_context* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64*, i64** %9, align 8
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %31, i64* %8, align 8
  br label %49

32:                                               ; preds = %24
  %33 = load %struct._gss_context*, %struct._gss_context** %16, align 8
  %34 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %33, i32 0, i32 1
  %35 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %34, align 8
  store %struct._gss_mech_switch* %35, %struct._gss_mech_switch** %17, align 8
  %36 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %17, align 8
  %37 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %36, i32 0, i32 0
  %38 = load i64 (i64*, i32, i32, i32, i32, i32*, i32)*, i64 (i64*, i32, i32, i32, i32, i32*, i32)** %37, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load %struct._gss_context*, %struct._gss_context** %16, align 8
  %41 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i64 %38(i64* %39, i32 %42, i32 %43, i32 %44, i32 %45, i32* %46, i32 %47)
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %32, %29
  %50 = load i64, i64* %8, align 8
  ret i64 %50
}

declare dso_local i32 @_gss_buffer_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
