; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-keytab.c_hkt_fetch_kvno.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-keytab.c_hkt_fetch_kvno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@HDB_F_KVNO_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hdb/keytab@WELL-KNOWN:KEYTAB-BACKEND\00", align 1
@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_20__*, i32, i32, i32, %struct.TYPE_19__*)* @hkt_fetch_kvno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hkt_fetch_kvno(i32 %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %12, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HDB_F_KVNO_SPECIFIED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %6
  %27 = call i32 @memset(%struct.TYPE_17__* %15, i32 0, i32 20)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = call i64 @krb5_parse_name(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %75

49:                                               ; preds = %26
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @krb5_kt_get_entry(i32 %50, i32 %53, i32 %54, i32 %55, i32 0, %struct.TYPE_17__* %15)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  store i64 %60, i64* %14, align 8
  br label %75

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = call i64 @krb5_copy_principal(i32 %62, i32 %63, i32* %66)
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %74 = call i64 @_hdb_keytab2hdb_entry(i32 %72, %struct.TYPE_17__* %15, %struct.TYPE_19__* %73)
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %71, %70, %59, %48
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = call i32 @free_hdb_entry(%struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = call i32 @memset(%struct.TYPE_17__* %83, i32 0, i32 20)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @krb5_kt_free_entry(i32 %86, %struct.TYPE_17__* %15)
  %88 = load i64, i64* %14, align 8
  ret i64 %88
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @krb5_kt_get_entry(i32, i32, i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @krb5_copy_principal(i32, i32, i32*) #1

declare dso_local i64 @_hdb_keytab2hdb_entry(i32, %struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @free_hdb_entry(%struct.TYPE_17__*) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
