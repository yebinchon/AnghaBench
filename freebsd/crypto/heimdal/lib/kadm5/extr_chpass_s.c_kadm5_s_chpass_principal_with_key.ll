; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_s.c_kadm5_s_chpass_principal_with_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_s.c_kadm5_s_chpass_principal_with_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64 (i32, %struct.TYPE_24__*, i32, i32)*, i64 (i32, %struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_24__*, i32, %struct.TYPE_23__*)*, i32 (i32, %struct.TYPE_24__*)* }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_chpass_principal_with_key(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %10, align 8
  %15 = call i32 @memset(%struct.TYPE_23__* %11, i32 0, i32 4)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i64 (i32, %struct.TYPE_24__*, i32, i32)*, i64 (i32, %struct.TYPE_24__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = call i64 %20(i32 %23, %struct.TYPE_24__* %26, i32 %27, i32 0)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %5, align 8
  br label %147

33:                                               ; preds = %4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load i64 (i32, %struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_23__*)** %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @HDB_F_GET_ANY, align 4
  %47 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %48 = or i32 %46, %47
  %49 = call i64 %38(i32 %41, %struct.TYPE_24__* %44, i32 %45, i32 0, i32 %48, %struct.TYPE_23__* %11)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %132

54:                                               ; preds = %33
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @_kadm5_set_keys2(%struct.TYPE_22__* %55, %struct.TYPE_21__* %56, i32 %57, i32* %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %127

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %70 = call i64 @_kadm5_set_modifier(%struct.TYPE_22__* %68, %struct.TYPE_21__* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %127

74:                                               ; preds = %63
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %77 = call i64 @_kadm5_bump_pw_expire(%struct.TYPE_22__* %75, %struct.TYPE_21__* %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %127

81:                                               ; preds = %74
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %89 = call i64 @hdb_seal_keys(i32 %84, %struct.TYPE_24__* %87, %struct.TYPE_21__* %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %127

93:                                               ; preds = %81
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = load i64 (i32, %struct.TYPE_24__*, i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_24__*, i32, %struct.TYPE_23__*)** %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = load i32, i32* @HDB_F_REPLACE, align 4
  %106 = call i64 %98(i32 %101, %struct.TYPE_24__* %104, i32 %105, %struct.TYPE_23__* %11)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %127

110:                                              ; preds = %93
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %113 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %114 = load i32, i32* @KADM5_MOD_NAME, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @KADM5_MOD_TIME, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @KADM5_KEY_DATA, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @KADM5_KVNO, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @KADM5_TL_DATA, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @kadm5_log_modify(%struct.TYPE_22__* %111, %struct.TYPE_21__* %112, i32 %125)
  br label %127

127:                                              ; preds = %110, %109, %92, %80, %73, %62
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @hdb_free_entry(i32 %130, %struct.TYPE_23__* %11)
  br label %132

132:                                              ; preds = %127, %53
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 3
  %137 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = call i32 %137(i32 %140, %struct.TYPE_24__* %143)
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @_kadm5_error_code(i64 %145)
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %132, %31
  %148 = load i64, i64* %5, align 8
  ret i64 %148
}

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @_kadm5_set_keys2(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i64 @_kadm5_set_modifier(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @_kadm5_bump_pw_expire(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i32 @kadm5_log_modify(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
