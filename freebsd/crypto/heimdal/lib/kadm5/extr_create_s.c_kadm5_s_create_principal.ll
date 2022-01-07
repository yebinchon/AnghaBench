; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_kadm5_s_create_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_kadm5_s_create_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32, %struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_20__*, i32, i32)* }

@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MKVNO = common dso_local global i32 0, align 4
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_POLICY_CLR = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_create_principal(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %11, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %18 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %19 = load i32, i32* @KADM5_MOD_TIME, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KADM5_MOD_NAME, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @KADM5_MKVNO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @KADM5_KEY_DATA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @KADM5_POLICY_CLR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @create_principal(%struct.TYPE_18__* %14, i32 %15, i32 %16, %struct.TYPE_19__* %10, i32 %17, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %124

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @KADM5_KVNO, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @_kadm5_set_keys(%struct.TYPE_18__* %56, %struct.TYPE_21__* %57, i8* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %124

63:                                               ; preds = %49
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %71 = call i64 @hdb_seal_keys(i32 %66, %struct.TYPE_20__* %69, %struct.TYPE_21__* %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %124

75:                                               ; preds = %63
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  %80 = load i64 (i32, %struct.TYPE_20__*, i32, i32)*, i64 (i32, %struct.TYPE_20__*, i32, i32)** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = load i32, i32* @O_RDWR, align 4
  %88 = call i64 %80(i32 %83, %struct.TYPE_20__* %86, i32 %87, i32 0)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %124

92:                                               ; preds = %75
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i64 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_19__*)** %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = call i64 %97(i32 %100, %struct.TYPE_20__* %103, i32 0, %struct.TYPE_19__* %10)
  store i64 %104, i64* %9, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = call i32 %109(i32 %112, %struct.TYPE_20__* %115)
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %92
  br label %124

120:                                              ; preds = %92
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %123 = call i32 @kadm5_log_create(%struct.TYPE_18__* %121, %struct.TYPE_21__* %122)
  br label %124

124:                                              ; preds = %120, %119, %91, %74, %62, %40
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @hdb_free_entry(i32 %127, %struct.TYPE_19__* %10)
  %129 = load i64, i64* %9, align 8
  %130 = call i64 @_kadm5_error_code(i64 %129)
  ret i64 %130
}

declare dso_local i64 @create_principal(%struct.TYPE_18__*, i32, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @_kadm5_set_keys(%struct.TYPE_18__*, %struct.TYPE_21__*, i8*) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @kadm5_log_create(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
