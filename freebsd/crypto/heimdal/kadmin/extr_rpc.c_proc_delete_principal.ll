; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_delete_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_delete_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@VERSION2 = common dso_local global i64 0, align 8
@KADM5_PRIV_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"delete principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @proc_delete_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_delete_principal(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @krb5_ret_uint32(i32* %10, i64* %7)
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @VERSION2, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @INSIST(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ret_principal_xdr(i32 %20, i32* %21, i32* %8)
  %23 = call i32 @CHECK(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load i32, i32* @KADM5_PRIV_DELETE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @_kadm5_acl_check_permission(%struct.TYPE_5__* %24, i32 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @kadm5_delete_principal(%struct.TYPE_5__* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @krb5_warn(i32 %38, i64 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* @VERSION2, align 8
  %43 = call i32 @krb5_store_uint32(i32* %41, i64 %42)
  %44 = call i32 @CHECK(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @krb5_store_uint32(i32* %45, i64 %46)
  %48 = call i32 @CHECK(i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @krb5_free_principal(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ret_principal_xdr(i32, i32*, i32*) #1

declare dso_local i64 @_kadm5_acl_check_permission(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @kadm5_delete_principal(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i64) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
