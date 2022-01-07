; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_kadm5_s_get_principals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_kadm5_s_get_principals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foreach_data = type { i8*, i8**, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 (i32, %struct.TYPE_7__*, i32, i32)*, i32 (i32, %struct.TYPE_7__*)* }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"opening database\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@foreach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_get_principals(i8* %0, i8* %1, i8*** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.foreach_data, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (i32, %struct.TYPE_7__*, i32, i32)*, i64 (i32, %struct.TYPE_7__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = call i64 %20(i32 %23, %struct.TYPE_7__* %26, i32 %27, i32 0)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @krb5_warn(i32 %34, i64 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %5, align 8
  br label %101

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @krb5_get_default_realm(i32 %43, i32* %13)
  %45 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 3
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @asprintf(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @free(i32 %49)
  %51 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 1
  store i8** null, i8*** %51, align 8
  %52 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %60 = load i32, i32* @foreach, align 4
  %61 = call i64 @hdb_foreach(i32 %55, %struct.TYPE_7__* %58, i32 %59, i32 %60, %struct.foreach_data* %10)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 %66(i32 %69, %struct.TYPE_7__* %72)
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %38
  %77 = call i64 @add_princ(%struct.foreach_data* %10, i32* null)
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %76, %38
  %79 = load i64, i64* %12, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i8***, i8**** %8, align 8
  store i8** %83, i8*** %84, align 8
  %85 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %95

89:                                               ; preds = %78
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 2
  %94 = call i32 @kadm5_free_name_list(%struct.TYPE_6__* %90, i8** %92, i32* %93)
  br label %95

95:                                               ; preds = %89, %81
  %96 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @free(i32 %97)
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @_kadm5_error_code(i64 %99)
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %95, %31
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_get_default_realm(i32, i32*) #1

declare dso_local i32 @asprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @hdb_foreach(i32, %struct.TYPE_7__*, i32, i32, %struct.foreach_data*) #1

declare dso_local i64 @add_princ(%struct.foreach_data*, i32*) #1

declare dso_local i32 @kadm5_free_name_list(%struct.TYPE_6__*, i8**, i32*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
