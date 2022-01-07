; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_entry_set_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_entry_set_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@choice_HDB_extension_data_password = common dso_local global i32 0, align 4
@HDB_ERR_NO_MKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"hdb_entry_set_password: failed to find masterkey\00", align 1
@HDB_KU_MKEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_entry_set_password(i32 %0, %struct.TYPE_13__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @choice_HDB_extension_data_password, align 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @_hdb_find_master_key(i32* null, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HDB_ERR_NO_MKEY, align 4
  %32 = call i32 @krb5_set_error_message(i32 %30, i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @HDB_ERR_NO_MKEY, align 4
  store i32 %33, i32* %5, align 4
  br label %106

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @HDB_KU_MKEY, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @_hdb_mkey_encrypt(i32 %35, i32* %36, i32 %37, i8* %38, i64 %41, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %106

51:                                               ; preds = %34
  %52 = call i32* @malloc(i32 4)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32* %52, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = call i32 @free_HDB_extension(%struct.TYPE_12__* %10)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @krb5_set_error_message(i32 %65, i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %5, align 4
  br label %106

69:                                               ; preds = %51
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @_hdb_mkey_version(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32 %71, i32* %76, align 4
  br label %100

77:                                               ; preds = %4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @strlen(i8* %87)
  %89 = add nsw i64 %88, 1
  %90 = call i32 @krb5_data_copy(i32* %85, i8* %86, i64 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @krb5_set_error_message(i32 %94, i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %97 = call i32 @free_HDB_extension(%struct.TYPE_12__* %10)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %106

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @hdb_replace_extension(i32 %101, i32* %102, %struct.TYPE_12__* %10)
  store i32 %103, i32* %12, align 4
  %104 = call i32 @free_HDB_extension(%struct.TYPE_12__* %10)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %93, %63, %49, %29
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32* @_hdb_find_master_key(i32*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @_hdb_mkey_encrypt(i32, i32*, i32, i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free_HDB_extension(%struct.TYPE_12__*) #1

declare dso_local i32 @_hdb_mkey_version(i32*) #1

declare dso_local i32 @krb5_data_copy(i32*, i8*, i64) #1

declare dso_local i32 @hdb_replace_extension(i32, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
