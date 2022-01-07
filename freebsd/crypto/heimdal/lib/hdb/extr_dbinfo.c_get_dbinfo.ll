; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_dbinfo.c_get_dbinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_dbinfo.c_get_dbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdb_dbinfo = type { i32*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mkey_file\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"acl_file\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"log_file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, %struct.hdb_dbinfo**)* @get_dbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dbinfo(i32 %0, i32* %1, i8* %2, %struct.hdb_dbinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hdb_dbinfo**, align 8
  %10 = alloca %struct.hdb_dbinfo*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.hdb_dbinfo** %3, %struct.hdb_dbinfo*** %9, align 8
  %12 = load %struct.hdb_dbinfo**, %struct.hdb_dbinfo*** %9, align 8
  store %struct.hdb_dbinfo* null, %struct.hdb_dbinfo** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i8* @krb5_config_get_string(i32 %13, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

19:                                               ; preds = %4
  %20 = call %struct.hdb_dbinfo* @calloc(i32 1, i32 56)
  store %struct.hdb_dbinfo* %20, %struct.hdb_dbinfo** %10, align 8
  %21 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %22 = icmp eq %struct.hdb_dbinfo* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @krb5_set_error_message(i32 %24, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %5, align 4
  br label %86

28:                                               ; preds = %19
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @strdup(i8* %29)
  %31 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %32 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @strdup(i8* %33)
  %35 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %36 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i8* @krb5_config_get_string(i32 %37, i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @strdup(i8* %43)
  %45 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %46 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @krb5_config_get_string(i32 %48, i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %57 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @krb5_config_get_string(i32 %59, i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = call i8* @strdup(i8* %65)
  %67 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %68 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i8* @krb5_config_get_string(i32 %70, i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i8*, i8** %11, align 8
  %77 = call i8* @strdup(i8* %76)
  %78 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %79 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %83 = getelementptr inbounds %struct.hdb_dbinfo, %struct.hdb_dbinfo* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %10, align 8
  %85 = load %struct.hdb_dbinfo**, %struct.hdb_dbinfo*** %9, align 8
  store %struct.hdb_dbinfo* %84, %struct.hdb_dbinfo** %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %23, %18
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i8* @krb5_config_get_string(i32, i32*, i8*, i32*) #1

declare dso_local %struct.hdb_dbinfo* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
