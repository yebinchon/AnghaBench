; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_revoke_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_revoke_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { i32, i32, i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_KEY_REVOKE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.autr_ta*, i32)* @revoke_dnskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revoke_dnskey(%struct.autr_ta* %0, i32 %1) #0 {
  %3 = alloca %struct.autr_ta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.autr_ta* %0, %struct.autr_ta** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %8 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %11 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %14 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @sldns_wirerr_get_type(i32 %9, i32 %12, i32 %15)
  %17 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %22 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %25 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %28 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sldns_wirerr_get_rdatalen(i32 %23, i32 %26, i32 %29)
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %65

33:                                               ; preds = %20
  %34 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %35 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %38 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %41 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @sldns_wirerr_get_rdata(i32 %36, i32 %39, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @sldns_read_uint16(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @LDNS_KEY_REVOKE_KEY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @LDNS_KEY_REVOKE_KEY, align 4
  %55 = load i32, i32* %5, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %48, %33
  %58 = load i32, i32* @LDNS_KEY_REVOKE_KEY, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @sldns_write_uint16(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %32, %19
  ret void
}

declare dso_local i64 @sldns_wirerr_get_type(i32, i32, i32) #1

declare dso_local i32 @sldns_wirerr_get_rdatalen(i32, i32, i32) #1

declare dso_local i32* @sldns_wirerr_get_rdata(i32, i32, i32) #1

declare dso_local i32 @sldns_read_uint16(i32*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
