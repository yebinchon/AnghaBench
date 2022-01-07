; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_init_sec_context.c_initiator_approved.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_init_sec_context.c_initiator_approved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_NO_CONTEXT = common dso_local global i32 0, align 4
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@GSS_S_BAD_MECH = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @initiator_approved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initiator_approved(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GSS_C_NO_CONTEXT, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %15 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %16 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %17 = call i32 @gss_init_sec_context(i32* %6, i32 %11, i32* %8, i32 %12, i32 %13, i32 0, i32 %14, i32 %15, i32 %16, i32* null, i32* %9, i32* null, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @GSS_ERROR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @gss_mg_collect_error(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GSS_S_BAD_MECH, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = call i32 @gss_release_buffer(i32* %6, i32* %9)
  %29 = call i32 @gss_delete_sec_context(i32* %6, i32* %8, i32* null)
  %30 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @gss_init_sec_context(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @gss_mg_collect_error(i32, i32, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, i32*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
