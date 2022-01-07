; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_unwrap.c_gss_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_unwrap.c_gss_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i32 (i32*, i32, i32, i32, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_unwrap(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct._gss_context*, align 8
  %14 = alloca %struct._gss_mech_switch*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to %struct._gss_context*
  store %struct._gss_context* %16, %struct._gss_context** %13, align 8
  %17 = load %struct._gss_context*, %struct._gss_context** %13, align 8
  %18 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %17, i32 0, i32 1
  %19 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %18, align 8
  store %struct._gss_mech_switch* %19, %struct._gss_mech_switch** %14, align 8
  %20 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %14, align 8
  %21 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32, i32, i32, i32*, i32*)*, i32 (i32*, i32, i32, i32, i32*, i32*)** %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct._gss_context*, %struct._gss_context** %13, align 8
  %25 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 %22(i32* %23, i32 %26, i32 %27, i32 %28, i32* %29, i32* %30)
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
