; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_init_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_init_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (i32, %struct.TYPE_11__*, i32)*, i64 (i32, %struct.TYPE_11__*, i32, i8*, i8*, %struct.TYPE_10__*)*, {}* }
%struct.TYPE_10__ = type { i8*, i8* }

@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8
@HDB_WLOCK = common dso_local global i32 0, align 4
@HDB_DB_FORMAT_ENTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@HDB_DB_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_init_db(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = call i64 @hdb_check_db_format(i32 %11, %struct.TYPE_11__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64 (i32, %struct.TYPE_11__*, i32)*, i64 (i32, %struct.TYPE_11__*, i32)** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = load i32, i32* @HDB_WLOCK, align 4
  %26 = call i64 %22(i32 %23, %struct.TYPE_11__* %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %79

31:                                               ; preds = %19
  %32 = load i64, i64* @HDB_DB_FORMAT_ENTRY, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strlen(i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %40 = load i32, i32* @HDB_DB_FORMAT, align 4
  %41 = call i32 @snprintf(i8* %39, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @strlen(i8* %45)
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64 (i32, %struct.TYPE_11__*, i32, i8*, i8*, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, i32, i8*, i8*, %struct.TYPE_10__*)** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = bitcast %struct.TYPE_10__* %8 to { i8*, i8* }*
  %55 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %54, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 %51(i32 %52, %struct.TYPE_11__* %53, i32 0, i8* %56, i8* %58, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %9)
  store i64 %59, i64* %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = bitcast {}** %61 to i64 (i32, %struct.TYPE_11__*)**
  %63 = load i64 (i32, %struct.TYPE_11__*)*, i64 (i32, %struct.TYPE_11__*)** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = call i64 %63(i32 %64, %struct.TYPE_11__* %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %31
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @krb5_clear_error_message(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i64, i64* %6, align 8
  store i64 %76, i64* %3, align 8
  br label %79

77:                                               ; preds = %31
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %75, %29, %17
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @hdb_check_db_format(i32, %struct.TYPE_11__*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
