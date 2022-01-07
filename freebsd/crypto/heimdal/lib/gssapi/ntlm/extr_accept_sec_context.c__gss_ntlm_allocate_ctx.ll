; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_accept_sec_context.c__gss_ntlm_allocate_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_accept_sec_context.c__gss_ntlm_allocate_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_server_interface = type { i64 (i64*, i32*)* }
%struct.TYPE_4__ = type { i32, %struct.ntlm_server_interface* }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ntlmsspi_kdc_digest = common dso_local global %struct.ntlm_server_interface zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gss_ntlm_allocate_ctx(i64* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ntlm_server_interface*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  store %struct.ntlm_server_interface* null, %struct.ntlm_server_interface** %7, align 8
  %8 = load %struct.ntlm_server_interface*, %struct.ntlm_server_interface** %7, align 8
  %9 = icmp eq %struct.ntlm_server_interface* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %11, i64* %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.ntlm_server_interface*, %struct.ntlm_server_interface** %7, align 8
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.ntlm_server_interface* %15, %struct.ntlm_server_interface** %18, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.ntlm_server_interface*, %struct.ntlm_server_interface** %21, align 8
  %23 = getelementptr inbounds %struct.ntlm_server_interface, %struct.ntlm_server_interface* %22, i32 0, i32 0
  %24 = load i64 (i64*, i32*)*, i64 (i64*, i32*)** %23, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i64 %24(i64* %25, i32* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @GSS_S_COMPLETE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %12
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %37

35:                                               ; preds = %12
  %36 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %33, %10
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
