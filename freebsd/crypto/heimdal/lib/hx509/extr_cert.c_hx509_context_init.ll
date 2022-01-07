; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_context_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HX509_DEFAULT_OCSP_TIME_DIFF = common dso_local global i32 0, align 4
@HX509_DEFAULT_ANCHORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_context_init(%struct.TYPE_12__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %3, align 8
  %4 = call %struct.TYPE_12__* @calloc(i32 1, i32 12)
  %5 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  store i32 %10, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = call i32 @_hx509_ks_null_register(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call i32 @_hx509_ks_mem_register(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call i32 @_hx509_ks_file_register(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i32 @_hx509_ks_pkcs12_register(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = call i32 @_hx509_ks_pkcs11_register(%struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @_hx509_ks_dir_register(%struct.TYPE_12__* %28)
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = call i32 @_hx509_ks_keychain_register(%struct.TYPE_12__* %31)
  %33 = call i32 (...) @ENGINE_add_conf_module()
  %34 = call i32 (...) @OpenSSL_add_all_algorithms()
  %35 = load i32, i32* @HX509_DEFAULT_OCSP_TIME_DIFF, align 4
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = call i32 @initialize_hx_error_table_r(i32* %41)
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = call i32 @initialize_asn1_error_table_r(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %11, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @_hx509_ks_null_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_mem_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_file_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_pkcs12_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_pkcs11_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_dir_register(%struct.TYPE_12__*) #1

declare dso_local i32 @_hx509_ks_keychain_register(%struct.TYPE_12__*) #1

declare dso_local i32 @ENGINE_add_conf_module(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @initialize_hx_error_table_r(i32*) #1

declare dso_local i32 @initialize_asn1_error_table_r(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
