; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_dn_field_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_dn_field_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_dn_field_order_cnt = type { i32, i32, i32, i32, i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TLS: Unknown NID '%d' in check_cert_subject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_dn_field_order_cnt*, i32)* @get_dn_field_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dn_field_index(%struct.tls_dn_field_order_cnt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_dn_field_order_cnt*, align 8
  %5 = alloca i32, align 4
  store %struct.tls_dn_field_order_cnt* %0, %struct.tls_dn_field_order_cnt** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %35 [
    i32 134, label %7
    i32 133, label %11
    i32 132, label %15
    i32 128, label %19
    i32 131, label %23
    i32 130, label %27
    i32 129, label %31
  ]

7:                                                ; preds = %2
  %8 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %9 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %13 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %17 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %21 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %25 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %29 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %4, align 8
  %33 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %19, %15, %11, %7
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
