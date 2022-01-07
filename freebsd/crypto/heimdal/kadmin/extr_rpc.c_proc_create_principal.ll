; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_create_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_create_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@VERSION2 = common dso_local global i64 0, align 8
@KADM5_PRIV_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"create principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32*)* @proc_create_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_create_principal(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_12__* %9, i32 0, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @krb5_ret_uint32(i32* %13, i64* %7)
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @VERSION2, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @INSIST(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ret_principal_ent(i32 %23, i32* %24, %struct.TYPE_12__* %9)
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @krb5_ret_uint32(i32* %27, i64* %8)
  %29 = call i32 @CHECK(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ret_string_xdr(i32* %30, i8** %11)
  %32 = call i32 @CHECK(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @INSIST(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* @KADM5_PRIV_ADD, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @_kadm5_acl_check_permission(%struct.TYPE_11__* %36, i32 %37, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %49

44:                                               ; preds = %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @kadm5_create_principal(%struct.TYPE_11__* %45, %struct.TYPE_12__* %9, i64 %46, i8* %47)
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @krb5_warn(i32 %52, i64 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* @VERSION2, align 8
  %57 = call i32 @krb5_store_uint32(i32* %55, i64 %56)
  %58 = call i32 @CHECK(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @krb5_store_uint32(i32* %59, i64 %60)
  %62 = call i32 @CHECK(i32 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @kadm5_free_principal_ent(%struct.TYPE_11__* %65, %struct.TYPE_12__* %9)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ret_principal_ent(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ret_string_xdr(i32*, i8**) #1

declare dso_local i64 @_kadm5_acl_check_permission(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @kadm5_create_principal(%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i8*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kadm5_free_principal_ent(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
