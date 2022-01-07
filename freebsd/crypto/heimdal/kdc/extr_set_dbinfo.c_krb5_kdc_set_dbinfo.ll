; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_set_dbinfo.c_krb5_kdc_set_dbinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_set_dbinfo.c_krb5_kdc_set_dbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_kdc_configuration = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 (i32, %struct.TYPE_3__*)* }
%struct.hdb_dbinfo = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"label: %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\09dbname: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09mkey_file: %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09acl_file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @krb5_kdc_set_dbinfo(i32 %0, %struct.krb5_kdc_configuration* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_kdc_configuration*, align 8
  %6 = alloca %struct.hdb_dbinfo*, align 8
  %7 = alloca %struct.hdb_dbinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.krb5_kdc_configuration* %1, %struct.krb5_kdc_configuration** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @hdb_get_dbinfo(i32 %10, %struct.hdb_dbinfo** %6)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %3, align 8
  br label %125

16:                                               ; preds = %2
  store %struct.hdb_dbinfo* null, %struct.hdb_dbinfo** %7, align 8
  br label %17

17:                                               ; preds = %35, %16
  %18 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %19 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %20 = call %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo* %18, %struct.hdb_dbinfo* %19)
  store %struct.hdb_dbinfo* %20, %struct.hdb_dbinfo** %7, align 8
  %21 = icmp ne %struct.hdb_dbinfo* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %27 = call i32 @hdb_dbinfo_get_dbname(i32 %25, %struct.hdb_dbinfo* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %30 = call i32 @hdb_dbinfo_get_mkey_file(i32 %28, %struct.hdb_dbinfo* %29)
  %31 = call i64 @add_db(i32 %23, %struct.krb5_kdc_configuration* %24, i32 %27, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %63

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %40 = call i32 @hdb_dbinfo_get_label(i32 %38, %struct.hdb_dbinfo* %39)
  %41 = call i32 @kdc_log(i32 %36, %struct.krb5_kdc_configuration* %37, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %46 = call i32 @hdb_dbinfo_get_dbname(i32 %44, %struct.hdb_dbinfo* %45)
  %47 = call i32 @kdc_log(i32 %42, %struct.krb5_kdc_configuration* %43, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %52 = call i32 @hdb_dbinfo_get_mkey_file(i32 %50, %struct.hdb_dbinfo* %51)
  %53 = call i32 @kdc_log(i32 %48, %struct.krb5_kdc_configuration* %49, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %58 = call i32 @hdb_dbinfo_get_acl_file(i32 %56, %struct.hdb_dbinfo* %57)
  %59 = call i32 @kdc_log(i32 %54, %struct.krb5_kdc_configuration* %55, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %17

60:                                               ; preds = %17
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @hdb_free_dbinfo(i32 %61, %struct.hdb_dbinfo** %6)
  store i64 0, i64* %3, align 8
  br label %125

63:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %110, %63
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %67 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %64
  %71 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %72 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %109

79:                                               ; preds = %70
  %80 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %81 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %82, i64 %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %87, align 8
  %89 = icmp ne i32 (i32, %struct.TYPE_3__*)* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %79
  %91 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %92 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %102 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = call i32 %99(i32 %100, %struct.TYPE_3__* %107)
  br label %109

109:                                              ; preds = %90, %79, %70
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %115 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %117 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %117, align 8
  %119 = call i32 @free(%struct.TYPE_3__** %118)
  %120 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %5, align 8
  %121 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %120, i32 0, i32 1
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %121, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @hdb_free_dbinfo(i32 %122, %struct.hdb_dbinfo** %6)
  %124 = load i64, i64* %8, align 8
  store i64 %124, i64* %3, align 8
  br label %125

125:                                              ; preds = %113, %60, %14
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

declare dso_local i64 @hdb_get_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo*, %struct.hdb_dbinfo*) #1

declare dso_local i64 @add_db(i32, %struct.krb5_kdc_configuration*, i32, i32) #1

declare dso_local i32 @hdb_dbinfo_get_dbname(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @hdb_dbinfo_get_mkey_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @kdc_log(i32, %struct.krb5_kdc_configuration*, i32, i8*, i32) #1

declare dso_local i32 @hdb_dbinfo_get_label(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @hdb_dbinfo_get_acl_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @hdb_free_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local i32 @free(%struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
