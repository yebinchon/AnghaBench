; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_modify_s.c_modify_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_modify_s.c_modify_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 (i32, %struct.TYPE_22__*)*, i64 (i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i64 (i32, %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_21__*)*, i64 (i32, %struct.TYPE_22__*, i32, i32)* }
%struct.TYPE_21__ = type { i32 }

@KADM5_BAD_MASK = common dso_local global i64 0, align 8
@KADM5_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@KADM5_UNK_POLICY = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_20__*, i32, i32)* @modify_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @modify_principal(i8* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @KADM5_BAD_MASK, align 8
  store i64 %20, i64* %5, align 8
  br label %149

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @KADM5_POLICY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @KADM5_UNK_POLICY, align 8
  store i64 %33, i64* %5, align 8
  br label %149

34:                                               ; preds = %26, %21
  %35 = call i32 @memset(%struct.TYPE_21__* %11, i32 0, i32 4)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load i64 (i32, %struct.TYPE_22__*, i32, i32)*, i64 (i32, %struct.TYPE_22__*, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load i32, i32* @O_RDWR, align 4
  %48 = call i64 %40(i32 %43, %struct.TYPE_22__* %46, i32 %47, i32 0)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  br label %149

53:                                               ; preds = %34
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i64 (i32, %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_21__*)*, i64 (i32, %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_21__*)** %57, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HDB_F_GET_ANY, align 4
  %69 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %70 = or i32 %68, %69
  %71 = call i64 %58(i32 %61, %struct.TYPE_22__* %64, i32 %67, i32 %70, i32 0, %struct.TYPE_21__* %11)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  br label %134

75:                                               ; preds = %53
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @_kadm5_setup_entry(%struct.TYPE_19__* %76, %struct.TYPE_21__* %11, i32 %77, %struct.TYPE_20__* %78, i32 %79, i32* null, i32 0)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %129

84:                                               ; preds = %75
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %87 = call i64 @_kadm5_set_modifier(%struct.TYPE_19__* %85, i32* %86)
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %129

91:                                               ; preds = %84
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %99 = call i64 @hdb_seal_keys(i32 %94, %struct.TYPE_22__* %97, i32* %98)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %129

103:                                              ; preds = %91
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i64 (i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i64 (i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = load i32, i32* @HDB_F_REPLACE, align 4
  %116 = call i64 %108(i32 %111, %struct.TYPE_22__* %114, i32 %115, %struct.TYPE_21__* %11)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %129

120:                                              ; preds = %103
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @KADM5_MOD_NAME, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @KADM5_MOD_TIME, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @kadm5_log_modify(%struct.TYPE_19__* %121, i32* %122, i32 %127)
  br label %129

129:                                              ; preds = %120, %119, %102, %90, %83
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @hdb_free_entry(i32 %132, %struct.TYPE_21__* %11)
  br label %134

134:                                              ; preds = %129, %74
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i32 (i32, %struct.TYPE_22__*)*, i32 (i32, %struct.TYPE_22__*)** %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = call i32 %139(i32 %142, %struct.TYPE_22__* %145)
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @_kadm5_error_code(i64 %147)
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %134, %51, %32, %19
  %150 = load i64, i64* %5, align 8
  ret i64 %150
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @_kadm5_setup_entry(%struct.TYPE_19__*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32*, i32) #1

declare dso_local i64 @_kadm5_set_modifier(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @kadm5_log_modify(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
