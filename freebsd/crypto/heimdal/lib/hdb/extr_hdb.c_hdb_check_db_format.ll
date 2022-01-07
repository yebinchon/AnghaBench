; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_check_db_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_check_db_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { {}*, i64 (i32, %struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, i32)* }
%struct.TYPE_10__ = type { i8*, i32 }

@HDB_RLOCK = common dso_local global i32 0, align 4
@HDB_DB_FORMAT_ENTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@HDB_ERR_BADVERSION = common dso_local global i64 0, align 8
@HDB_DB_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_check_db_format(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load i64 (i32, %struct.TYPE_11__*, i32)*, i64 (i32, %struct.TYPE_11__*, i32)** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = load i32, i32* @HDB_RLOCK, align 4
  %18 = call i64 %14(i32 %15, %struct.TYPE_11__* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %3, align 8
  br label %74

23:                                               ; preds = %2
  %24 = load i64, i64* @HDB_DB_FORMAT_ENTRY, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64 (i32, %struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*)** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = bitcast %struct.TYPE_10__* %6 to { i8*, i32 }*
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %33(i32 %34, %struct.TYPE_11__* %35, i8* %38, i32 %40, %struct.TYPE_10__* %7)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i64 (i32, %struct.TYPE_11__*)**
  %45 = load i64 (i32, %struct.TYPE_11__*)*, i64 (i32, %struct.TYPE_11__*)** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = call i64 %45(i32 %46, %struct.TYPE_11__* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %3, align 8
  br label %74

53:                                               ; preds = %23
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %3, align 8
  br label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %61, i32* %11, align 4
  %62 = call i32 @krb5_data_free(%struct.TYPE_10__* %7)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* @HDB_ERR_BADVERSION, align 8
  store i64 %66, i64* %3, align 8
  br label %74

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @HDB_DB_FORMAT, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @HDB_ERR_BADVERSION, align 8
  store i64 %72, i64* %3, align 8
  br label %74

73:                                               ; preds = %67
  store i64 0, i64* %3, align 8
  br label %74

74:                                               ; preds = %73, %71, %65, %56, %51, %21
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
