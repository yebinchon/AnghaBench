; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_acquire_cred_ext.c__gss_acquire_cred_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_acquire_cred_ext.c__gss_acquire_cred_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct._gss_name = type { i32 }
%struct._gss_cred = type { i32 }
%struct._gss_mechanism_name = type { i64 }
%struct._gss_mechanism_cred = type { i32 }

@GSS_S_CALL_INACCESSIBLE_READ = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i64 0, align 8
@_gss_mech_oids = common dso_local global %struct.TYPE_4__* null, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@gmc_link = common dso_local global i32 0, align 4
@GSS_S_NO_CRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gss_acquire_cred_ext(i64* %0, i64 %1, i64 %2, i8* %3, i64 %4, i64 %5, i32 %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct._gss_name*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct._gss_cred*, align 8
  %22 = alloca %struct.TYPE_4__, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct._gss_mechanism_name*, align 8
  %27 = alloca %struct._gss_mechanism_cred*, align 8
  %28 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  %29 = load i64, i64* %11, align 8
  %30 = inttoptr i64 %29 to %struct._gss_name*
  store %struct._gss_name* %30, %struct._gss_name** %19, align 8
  %31 = load i64*, i64** %10, align 8
  store i64 0, i64* %31, align 8
  %32 = load i64*, i64** %17, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i64, i64* @GSS_S_CALL_INACCESSIBLE_READ, align 8
  store i64 %35, i64* %9, align 8
  br label %148

36:                                               ; preds = %8
  %37 = call i32 (...) @_gss_load_mech()
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @GSS_C_NO_OID, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  store i32 0, i32* %25, align 4
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %15, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_gss_mech_oids, align 8
  %46 = call i32 @gss_test_oid_set_member(i64* %42, i32* %44, %struct.TYPE_4__* %45, i32* %25)
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %50, i64* %9, align 8
  br label %148

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i64, i64* %15, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %23, align 8
  br label %58

56:                                               ; preds = %36
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_gss_mech_oids, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %23, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = call %struct._gss_cred* @calloc(i32 1, i32 4)
  store %struct._gss_cred* %59, %struct._gss_cred** %21, align 8
  %60 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %61 = icmp eq %struct._gss_cred* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %65, i64* %9, align 8
  br label %148

66:                                               ; preds = %58
  %67 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %68 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %67, i32 0, i32 0
  %69 = call i32 @HEIM_SLIST_INIT(i32* %68)
  store i64 0, i64* %24, align 8
  br label %70

70:                                               ; preds = %129, %66
  %71 = load i64, i64* %24, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %70
  store %struct._gss_mechanism_name* null, %struct._gss_mechanism_name** %26, align 8
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %27, align 8
  %78 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %78, i64* %28, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %24, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @__gss_get_mechanism(i32* %83)
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %129

88:                                               ; preds = %77
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @GSS_C_NO_NAME, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i64*, i64** %10, align 8
  %94 = load %struct._gss_name*, %struct._gss_name** %19, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %24, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i64 @_gss_find_mn(i64* %93, %struct._gss_name* %94, i32* %99, %struct._gss_mechanism_name** %26)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* @GSS_S_COMPLETE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %129

105:                                              ; preds = %92
  %106 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %26, align 8
  %107 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %28, align 8
  br label %109

109:                                              ; preds = %105, %88
  %110 = load i64*, i64** %10, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %26, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i64 @_gss_acquire_mech_cred(i64* %110, i32 %111, %struct._gss_mechanism_name* %112, i64 %113, i8* %114, i64 %115, i64 %116, i32 %117, %struct._gss_mechanism_cred** %27)
  store i64 %118, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = call i64 @GSS_ERROR(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %129

123:                                              ; preds = %109
  %124 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %125 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %124, i32 0, i32 0
  %126 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %27, align 8
  %127 = load i32, i32* @gmc_link, align 4
  %128 = call i32 @HEIM_SLIST_INSERT_HEAD(i32* %125, %struct._gss_mechanism_cred* %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %122, %104, %87
  %130 = load i64, i64* %24, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %24, align 8
  br label %70

132:                                              ; preds = %70
  %133 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %134 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %133, i32 0, i32 0
  %135 = call i32 @HEIM_SLIST_FIRST(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %139 = call i32 @free(%struct._gss_cred* %138)
  %140 = load i64*, i64** %10, align 8
  store i64 0, i64* %140, align 8
  %141 = load i64, i64* @GSS_S_NO_CRED, align 8
  store i64 %141, i64* %9, align 8
  br label %148

142:                                              ; preds = %132
  %143 = load %struct._gss_cred*, %struct._gss_cred** %21, align 8
  %144 = ptrtoint %struct._gss_cred* %143 to i64
  %145 = load i64*, i64** %17, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i64*, i64** %10, align 8
  store i64 0, i64* %146, align 8
  %147 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %147, i64* %9, align 8
  br label %148

148:                                              ; preds = %142, %137, %62, %49, %34
  %149 = load i64, i64* %9, align 8
  ret i64 %149
}

declare dso_local i32 @_gss_load_mech(...) #1

declare dso_local i32 @gss_test_oid_set_member(i64*, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local %struct._gss_cred* @calloc(i32, i32) #1

declare dso_local i32 @HEIM_SLIST_INIT(i32*) #1

declare dso_local i32 @__gss_get_mechanism(i32*) #1

declare dso_local i64 @_gss_find_mn(i64*, %struct._gss_name*, i32*, %struct._gss_mechanism_name**) #1

declare dso_local i64 @_gss_acquire_mech_cred(i64*, i32, %struct._gss_mechanism_name*, i64, i8*, i64, i64, i32, %struct._gss_mechanism_cred**) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i32 @HEIM_SLIST_INSERT_HEAD(i32*, %struct._gss_mechanism_cred*, i32) #1

declare dso_local i32 @HEIM_SLIST_FIRST(i32*) #1

declare dso_local i32 @free(%struct._gss_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
