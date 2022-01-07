; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_ds_create_dnskey_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_ds_create_dnskey_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.ub_packed_rrset_key*, i64, %struct.ub_packed_rrset_key*, i64, i32*)* @ds_create_dnskey_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_create_dnskey_digest(%struct.module_env* %0, %struct.ub_packed_rrset_key* %1, i64 %2, %struct.ub_packed_rrset_key* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.module_env*, %struct.module_env** %7, align 8
  %17 = getelementptr inbounds %struct.module_env, %struct.module_env* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @rrset_get_rdata(%struct.ub_packed_rrset_key* %19, i64 %20, i32** %14, i64* %15)
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @sldns_buffer_clear(i32* %22)
  %24 = load i32*, i32** %13, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sldns_buffer_write(i32* %24, i32* %28, i64 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @sldns_buffer_begin(i32* %34)
  %36 = call i32 @query_dname_tolower(i64 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i64, i64* %15, align 8
  %41 = sub i64 %40, 2
  %42 = call i32 @sldns_buffer_write(i32* %37, i32* %39, i64 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @sldns_buffer_flip(i32* %43)
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %45, i64 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @sldns_buffer_begin(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @sldns_buffer_limit(i32* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @secalgo_ds_digest(i32 %47, i8* %50, i32 %52, i8* %54)
  ret i32 %55
}

declare dso_local i32 @rrset_get_rdata(%struct.ub_packed_rrset_key*, i64, i32**, i64*) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i64) #1

declare dso_local i32 @query_dname_tolower(i64) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i32 @secalgo_ds_digest(i32, i8*, i32, i8*) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
