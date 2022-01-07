; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_16__*, i32, i32)*, i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)* }
%struct.TYPE_15__ = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hdb_create: %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"db->open\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"krb5_storage_from_mem\00", align 1
@TELL_YOU_EVERYTHING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"krb5_write_priv_message\00", align 1
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@prop_one = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"hdb_foreach\00", align 1
@NOW_YOU_HAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, i8*, i32)* @send_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_complete(i32 %0, %struct.TYPE_14__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [8 x i8], align 1
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @hdb_create(i32 %15, %struct.TYPE_16__** %12, i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %21, i32 1, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.TYPE_16__*, i32, i32)*, i32 (i32, %struct.TYPE_16__*, i32, i32)** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 %28(i32 %29, %struct.TYPE_16__* %30, i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %36, i32 1, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %25
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %41 = call i32* @krb5_storage_from_mem(i8* %40, i32 4)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @krb5_errx(i32 %45, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @TELL_YOU_EVERYTHING, align 4
  %50 = call i32 @krb5_store_int32(i32* %48, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @krb5_storage_free(i32* %51)
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 4, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = call i32 @krb5_write_priv_message(i32 %56, i32 %59, i32* %61, %struct.TYPE_15__* %13)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @krb5_warn(i32 %66, i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = call i32 @slave_dead(i32 %69, %struct.TYPE_14__* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %143

73:                                               ; preds = %47
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %76 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %77 = load i32, i32* @prop_one, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = call i32 @hdb_foreach(i32 %74, %struct.TYPE_16__* %75, i32 %76, i32 %77, %struct.TYPE_14__* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @krb5_warn(i32 %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = call i32 @slave_dead(i32 %86, %struct.TYPE_14__* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %143

90:                                               ; preds = %73
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = call i32 %93(i32 %94, %struct.TYPE_16__* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = call i32 %99(i32 %100, %struct.TYPE_16__* %101)
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %104 = call i32* @krb5_storage_from_mem(i8* %103, i32 8)
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %90
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @krb5_errx(i32 %108, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %90
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* @NOW_YOU_HAVE, align 4
  %113 = call i32 @krb5_store_int32(i32* %111, i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @krb5_store_int32(i32* %114, i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @krb5_storage_free(i32* %117)
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 8, i32* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = call i32 @krb5_write_priv_message(i32 %123, i32 %126, i32* %128, %struct.TYPE_15__* %13)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %110
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = call i32 @slave_dead(i32 %133, %struct.TYPE_14__* %134)
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @krb5_warn(i32 %136, i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %143

140:                                              ; preds = %110
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = call i32 @slave_seen(%struct.TYPE_14__* %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %132, %82, %65
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @hdb_create(i32, %struct.TYPE_16__**, i8*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @slave_dead(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @hdb_foreach(i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @slave_seen(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
