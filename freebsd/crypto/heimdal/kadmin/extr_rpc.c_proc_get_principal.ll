; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_get_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_get_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@VERSION2 = common dso_local global i64 0, align 8
@KADM5_PRIV_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get principal principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*)* @proc_get_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_get_principal(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 @memset(i32* %10, i32 0, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @krb5_ret_uint32(i32* %13, i64* %7)
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @VERSION2, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @INSIST(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ret_principal_xdr(i32 %23, i32* %24, i32* %9)
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @krb5_ret_uint32(i32* %27, i64* %8)
  %29 = call i32 @CHECK(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load i32, i32* @KADM5_PRIV_GET, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @_kadm5_acl_check_permission(%struct.TYPE_6__* %30, i32 %31, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @kadm5_get_principal(%struct.TYPE_6__* %38, i32 %39, i32* %10, i64 %40)
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @krb5_warn(i32 %45, i64 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @VERSION2, align 8
  %50 = call i32 @krb5_store_uint32(i32* %48, i64 %49)
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @krb5_store_uint32(i32* %52, i64 %53)
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %42
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @store_principal_ent(i32 %61, i32* %62, i32* %10)
  %64 = call i32 @CHECK(i32 %63)
  br label %65

65:                                               ; preds = %58, %42
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @krb5_free_principal(i32 %68, i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = call i32 @kadm5_free_principal_ent(%struct.TYPE_6__* %71, i32* %10)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ret_principal_xdr(i32, i32*, i32*) #1

declare dso_local i64 @_kadm5_acl_check_permission(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @kadm5_get_principal(%struct.TYPE_6__*, i32, i32*, i64) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i64) #1

declare dso_local i32 @store_principal_ent(i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @kadm5_free_principal_ent(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
