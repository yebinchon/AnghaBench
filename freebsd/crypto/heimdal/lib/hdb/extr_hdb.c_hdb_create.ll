; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdb_method = type { i64, i64 (i32, i32**, i8*)*, i32 }
%struct.krb5_plugin = type { i32 }

@HDB_DEFAULT_DB = common dso_local global i8* null, align 8
@initialize_hdb_error_table_r = common dso_local global i32 0, align 4
@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hdb\00", align 1
@HDB_INTERFACE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"No database support for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_create(i32 %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hdb_method*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.krb5_plugin*, align 8
  %11 = alloca %struct.krb5_plugin*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** @HDB_DEFAULT_DB, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @initialize_hdb_error_table_r, align 4
  %19 = call i32 @krb5_add_et_list(i32 %17, i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.hdb_method* @find_method(i8* %20, i8** %8)
  store %struct.hdb_method* %21, %struct.hdb_method** %7, align 8
  %22 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %23 = icmp eq %struct.hdb_method* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %27 = call i64 @_krb5_plugin_find(i32 %25, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.krb5_plugin** %10)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = load %struct.krb5_plugin*, %struct.krb5_plugin** %10, align 8
  %32 = icmp ne %struct.krb5_plugin* %31, null
  br i1 %32, label %33, label %76

33:                                               ; preds = %30
  %34 = load %struct.krb5_plugin*, %struct.krb5_plugin** %10, align 8
  store %struct.krb5_plugin* %34, %struct.krb5_plugin** %11, align 8
  br label %35

35:                                               ; preds = %66, %33
  %36 = load %struct.krb5_plugin*, %struct.krb5_plugin** %11, align 8
  %37 = icmp ne %struct.krb5_plugin* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load %struct.krb5_plugin*, %struct.krb5_plugin** %11, align 8
  %40 = call %struct.hdb_method* @_krb5_plugin_get_symbol(%struct.krb5_plugin* %39)
  store %struct.hdb_method* %40, %struct.hdb_method** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %43 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %46 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strlen(i32 %47)
  %49 = call i64 @strncmp(i8* %41, i32 %44, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %38
  %52 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %53 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HDB_INTERFACE_VERSION, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %60 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strlen(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  store i8* %64, i8** %8, align 8
  br label %69

65:                                               ; preds = %51, %38
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.krb5_plugin*, %struct.krb5_plugin** %11, align 8
  %68 = call %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin* %67)
  store %struct.krb5_plugin* %68, %struct.krb5_plugin** %11, align 8
  br label %35

69:                                               ; preds = %57, %35
  %70 = load %struct.krb5_plugin*, %struct.krb5_plugin** %11, align 8
  %71 = icmp eq %struct.krb5_plugin* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  store %struct.hdb_method* null, %struct.hdb_method** %7, align 8
  %73 = load %struct.krb5_plugin*, %struct.krb5_plugin** %10, align 8
  %74 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %30, %24
  br label %77

77:                                               ; preds = %76, %16
  %78 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %79 = icmp eq %struct.hdb_method* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @krb5_errx(i32 %81, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.hdb_method*, %struct.hdb_method** %7, align 8
  %86 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %85, i32 0, i32 1
  %87 = load i64 (i32, i32**, i8*)*, i64 (i32, i32**, i8*)** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32**, i32*** %5, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 %87(i32 %88, i32** %89, i8* %90)
  ret i64 %91
}

declare dso_local i32 @krb5_add_et_list(i32, i32) #1

declare dso_local %struct.hdb_method* @find_method(i8*, i8**) #1

declare dso_local i64 @_krb5_plugin_find(i32, i32, i8*, %struct.krb5_plugin**) #1

declare dso_local %struct.hdb_method* @_krb5_plugin_get_symbol(%struct.krb5_plugin*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
