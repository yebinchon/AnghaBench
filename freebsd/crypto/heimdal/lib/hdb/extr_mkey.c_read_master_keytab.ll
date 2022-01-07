; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, %struct.TYPE_7__**)* @read_master_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_master_keytab(i32 %0, i8* %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @krb5_kt_resolve(i32 %13, i8* %14, i32* %9)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %70

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @krb5_kt_start_seq_get(i32 %21, i32 %22, i32* %10)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %65

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %28, align 8
  br label %29

29:                                               ; preds = %43, %27
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @krb5_kt_next_entry(i32 %30, i32 %31, %struct.TYPE_6__* %11, i32* %10)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = call %struct.TYPE_7__* @calloc(i32 1, i32 16)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %12, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @krb5_kt_end_seq_get(i32 %39, i32 %40, i32* %10)
  %42 = load i64, i64* @ENOMEM, align 8
  store i64 %42, i64* %8, align 8
  br label %65

43:                                               ; preds = %34
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_6__* %45 to i8*
  %47 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = call i64 @krb5_crypto_init(i32 %48, i32* %51, i32 0, i32* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %60, align 8
  br label %29

61:                                               ; preds = %29
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @krb5_kt_end_seq_get(i32 %62, i32 %63, i32* %10)
  br label %65

65:                                               ; preds = %61, %38, %26
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @krb5_kt_close(i32 %66, i32 %67)
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %65, %18
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i64 @krb5_kt_start_seq_get(i32, i32, i32*) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_kt_end_seq_get(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
