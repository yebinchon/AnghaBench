; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_get_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_get_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gssapi_keytab_mutex = common dso_local global i32 0, align 4
@_gsskrb5_keytab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*)* @get_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_keytab(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32 @HEIMDAL_MUTEX_lock(i32* @gssapi_keytab_mutex)
  %8 = load i32*, i32** @_gsskrb5_keytab, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** @_gsskrb5_keytab, align 8
  %13 = call i64 @krb5_kt_get_full_name(i32 %11, i32* %12, i8** %6)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @krb5_kt_resolve(i32 %17, i8* %18, i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @krb5_xfree(i8* %21)
  br label %23

23:                                               ; preds = %16, %10
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @krb5_kt_default(i32 %25, i32* %26)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = call i32 @HEIMDAL_MUTEX_unlock(i32* @gssapi_keytab_mutex)
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @krb5_kt_get_full_name(i32, i32*, i8**) #1

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_xfree(i8*) #1

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
