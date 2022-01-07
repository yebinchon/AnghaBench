; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_chrand_principal_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_proc_chrand_principal_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@VERSION2 = common dso_local global i64 0, align 8
@KADM5_PRIV_CPW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rand key principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*)* @proc_chrand_principal_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_chrand_principal_v2(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @krb5_ret_uint32(i32* %13, i64* %9)
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @VERSION2, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @INSIST(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ret_principal_xdr(i32 %23, i32* %24, i32* %8)
  %26 = call i32 @CHECK(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i32, i32* @KADM5_PRIV_CPW, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @_kadm5_acl_check_permission(%struct.TYPE_10__* %27, i32 %28, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @kadm5_randkey_principal(%struct.TYPE_10__* %35, i32 %36, %struct.TYPE_9__** %10, i32* %11)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @krb5_warn(i32 %41, i64 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @VERSION2, align 8
  %46 = call i32 @krb5_store_uint32(i32* %44, i64 %45)
  %47 = call i32 @CHECK(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @krb5_store_uint32(i32* %48, i64 %49)
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %38
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @krb5_store_int32(i32* %55, i32 %56)
  %58 = call i32 @CHECK(i32 %57)
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %90, %54
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @krb5_store_uint32(i32* %64, i64 %70)
  %72 = call i32 @CHECK(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @store_data_xdr(i32* %73, i32 %79)
  %81 = call i32 @CHECK(i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = call i32 @krb5_free_keyblock_contents(i32 %84, %struct.TYPE_9__* %88)
  br label %90

90:                                               ; preds = %63
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %59

93:                                               ; preds = %59
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = call i32 @free(%struct.TYPE_9__* %94)
  br label %96

96:                                               ; preds = %93, %38
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @krb5_free_principal(i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ret_principal_xdr(i32, i32*, i32*) #1

declare dso_local i64 @_kadm5_acl_check_permission(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @kadm5_randkey_principal(%struct.TYPE_10__*, i32, %struct.TYPE_9__**, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i64) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @store_data_xdr(i32*, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
