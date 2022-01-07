; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_process_pa_data_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_process_pa_data_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i64, %struct.pa_info_data* }
%struct.pa_info_data = type { i32*, i32, i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8* }

@KRB5_PADATA_PK_AS_REP = common dso_local global i32 0, align 4
@KRB5_PADATA_PK_AS_REP_19 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"no support for PKINIT compiled in\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"krb5_get_init_creds: using keyproc\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"No usable pa data type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32**)* @process_pa_data_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_pa_data_to_key(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3, %struct.TYPE_19__* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.pa_info_data, align 8
  %17 = alloca %struct.pa_info_data*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  store %struct.pa_info_data* null, %struct.pa_info_data** %17, align 8
  %22 = call i32 @memset(%struct.pa_info_data* %16, i32 0, i32 24)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %19, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %7
  %32 = load i8*, i8** %19, align 8
  %33 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %16, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = call %struct.pa_info_data* @process_pa_info(i32 %34, i32 %37, %struct.TYPE_18__* %38, %struct.pa_info_data* %16, %struct.TYPE_20__* %41)
  store %struct.pa_info_data* %42, %struct.pa_info_data** %17, align 8
  br label %43

43:                                               ; preds = %31, %7
  %44 = load %struct.pa_info_data*, %struct.pa_info_data** %17, align 8
  %45 = icmp eq %struct.pa_info_data* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = load %struct.pa_info_data*, %struct.pa_info_data** %48, align 8
  store %struct.pa_info_data* %49, %struct.pa_info_data** %17, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.pa_info_data*, %struct.pa_info_data** %17, align 8
  %52 = icmp eq %struct.pa_info_data* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %16, i32 0, i32 1
  %59 = call i64 @krb5_get_pw_salt(i32 %54, i32 %57, i32* %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %18, align 8
  store i64 %63, i64* %8, align 8
  br label %149

64:                                               ; preds = %53
  %65 = load i8*, i8** %19, align 8
  %66 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %16, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %16, i32 0, i32 0
  store i32* null, i32** %67, align 8
  store %struct.pa_info_data* %16, %struct.pa_info_data** %17, align 8
  br label %68

68:                                               ; preds = %64, %50
  store i32* null, i32** %20, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = icmp ne %struct.TYPE_20__* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  store i32 0, i32* %21, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @KRB5_PADATA_PK_AS_REP, align 4
  %85 = call i32* @krb5_find_padata(i32 %78, i32 %83, i32 %84, i32* %21)
  store i32* %85, i32** %20, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %73
  store i32 0, i32* %21, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @KRB5_PADATA_PK_AS_REP_19, align 4
  %100 = call i32* @krb5_find_padata(i32 %93, i32 %98, i32 %99, i32* %21)
  store i32* %100, i32** %20, align 8
  br label %101

101:                                              ; preds = %88, %73
  br label %102

102:                                              ; preds = %101, %68
  %103 = load i32*, i32** %20, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i64, i64* @EINVAL, align 8
  store i64 %111, i64* %18, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %115 = call i32 @krb5_set_error_message(i32 %112, i64 %113, i32 %114)
  br label %145

116:                                              ; preds = %105, %102
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @_krb5_debug(i32 %122, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = load %struct.pa_info_data*, %struct.pa_info_data** %17, align 8
  %130 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.pa_info_data*, %struct.pa_info_data** %17, align 8
  %133 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i8*, i8** %19, align 8
  %136 = load i32**, i32*** %15, align 8
  %137 = call i64 @pa_data_to_key_plain(i32 %124, i32 %127, %struct.TYPE_16__* %128, i32 %131, i32* %134, i8* %135, i32** %136)
  store i64 %137, i64* %18, align 8
  br label %144

138:                                              ; preds = %116
  %139 = load i64, i64* @EINVAL, align 8
  store i64 %139, i64* %18, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %143 = call i32 @krb5_set_error_message(i32 %140, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %121
  br label %145

145:                                              ; preds = %144, %110
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @free_paid(i32 %146, %struct.pa_info_data* %16)
  %148 = load i64, i64* %18, align 8
  store i64 %148, i64* %8, align 8
  br label %149

149:                                              ; preds = %145, %62
  %150 = load i64, i64* %8, align 8
  ret i64 %150
}

declare dso_local i32 @memset(%struct.pa_info_data*, i32, i32) #1

declare dso_local %struct.pa_info_data* @process_pa_info(i32, i32, %struct.TYPE_18__*, %struct.pa_info_data*, %struct.TYPE_20__*) #1

declare dso_local i64 @krb5_get_pw_salt(i32, i32, i32*) #1

declare dso_local i32* @krb5_find_padata(i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*) #1

declare dso_local i64 @pa_data_to_key_plain(i32, i32, %struct.TYPE_16__*, i32, i32*, i8*, i32**) #1

declare dso_local i32 @free_paid(i32, %struct.pa_info_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
