; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_entry_get_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_entry_get_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8**, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i32 }

@choice_HDB_extension_data_password = common dso_local global i32 0, align 4
@HDB_ERR_NO_MKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"master key %d missing\00", align 1
@HDB_KU_MKEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"malformed password\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"no password attribute for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_entry_get_password(i32 %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %17 = load i32, i32* @choice_HDB_extension_data_password, align 4
  %18 = call %struct.TYPE_22__* @hdb_find_extension(%struct.TYPE_21__* %16, i32 %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %10, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %20 = icmp ne %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %123

21:                                               ; preds = %4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %21
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %26
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @_hdb_find_master_key(i8** %40, i32 %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HDB_ERR_NO_MKEY, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @HDB_ERR_NO_MKEY, align 4
  store i32 %58, i32* %5, align 4
  br label %143

59:                                               ; preds = %34
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* @HDB_KU_MKEY, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_hdb_mkey_decrypt(i32 %60, i32* %61, i32 %62, i32 %69, i32 %76, %struct.TYPE_20__* %14)
  store i32 %77, i32* %12, align 4
  br label %85

78:                                               ; preds = %26, %21
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = call i32 @der_copy_octet_string(%struct.TYPE_16__* %83, %struct.TYPE_20__* %14)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %78, %59
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @krb5_clear_error_message(i32 %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %143

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @EINVAL, align 4
  %107 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %105, i32 %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %5, align 4
  br label %143

109:                                              ; preds = %92
  %110 = load i8*, i8** %13, align 8
  %111 = call i8* @strdup(i8* %110)
  %112 = load i8**, i8*** %9, align 8
  store i8* %111, i8** %112, align 8
  %113 = call i32 @der_free_octet_string(%struct.TYPE_20__* %14)
  %114 = load i8**, i8*** %9, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %118, i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %5, align 4
  br label %143

122:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %143

123:                                              ; preds = %4
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @krb5_unparse_name(i32 %124, i32 %127, i8** %11)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @ENOENT, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %132, i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @free(i8* %136)
  br label %141

138:                                              ; preds = %123
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @krb5_clear_error_message(i32 %139)
  br label %141

141:                                              ; preds = %138, %131
  %142 = load i32, i32* @ENOENT, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %122, %117, %104, %88, %47
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_22__* @hdb_find_extension(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @_hdb_find_master_key(i8**, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, ...) #1

declare dso_local i32 @_hdb_mkey_decrypt(i32, i32*, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @der_copy_octet_string(%struct.TYPE_16__*, %struct.TYPE_20__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_20__*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
