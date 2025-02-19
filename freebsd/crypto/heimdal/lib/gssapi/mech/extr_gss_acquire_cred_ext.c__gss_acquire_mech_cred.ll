; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_acquire_cred_ext.c__gss_acquire_mech_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_acquire_cred_ext.c__gss_acquire_mech_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)*, %struct.TYPE_7__*, i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)* }
%struct._gss_mechanism_name = type { i32 }
%struct._gss_mechanism_cred = type { i32, i32*, %struct.TYPE_8__* }

@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_C_CRED_PASSWORD = common dso_local global i32 0, align 4
@GSS_C_NO_OID = common dso_local global i64 0, align 8
@GSS_S_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gss_acquire_mech_cred(i32* %0, %struct.TYPE_8__* %1, %struct._gss_mechanism_name* %2, i64 %3, i8* %4, i32 %5, i64 %6, i32 %7, %struct._gss_mechanism_cred** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct._gss_mechanism_name*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._gss_mechanism_cred**, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct._gss_mechanism_cred*, align 8
  %22 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store %struct._gss_mechanism_name* %2, %struct._gss_mechanism_name** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct._gss_mechanism_cred** %8, %struct._gss_mechanism_cred*** %19, align 8
  %23 = load %struct._gss_mechanism_cred**, %struct._gss_mechanism_cred*** %19, align 8
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %23, align 8
  %24 = call %struct._gss_mechanism_cred* @calloc(i32 1, i32 24)
  store %struct._gss_mechanism_cred* %24, %struct._gss_mechanism_cred** %21, align 8
  %25 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %26 = icmp eq %struct._gss_mechanism_cred* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %30, i32* %10, align 4
  br label %127

31:                                               ; preds = %9
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %34 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %33, i32 0, i32 2
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %38 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %41 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)*, i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)** %45, align 8
  %47 = icmp ne i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %31
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)*, i32 (i32*, i32, i64, i8*, i32, i32*, i32, i32*)** %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %13, align 8
  %54 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %14, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %60 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %64 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %63, i32 0, i32 0
  %65 = call i32 %51(i32* %52, i32 %55, i64 %56, i8* %57, i32 %58, i32* %61, i32 %62, i32* %64)
  store i32 %65, i32* %20, align 4
  br label %123

66:                                               ; preds = %31
  %67 = load i64, i64* %14, align 8
  %68 = load i32, i32* @GSS_C_CRED_PASSWORD, align 4
  %69 = call i64 @gss_oid_equal(i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)** %80, align 8
  %82 = icmp ne i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)* %81, null
  br i1 %82, label %83, label %100

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)** %87, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %13, align 8
  %91 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %98 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %97, i32 0, i32 0
  %99 = call i32 %88(i32* %89, i32 %92, i32 %94, i32 %95, %struct.TYPE_9__* %22, i32 %96, i32* %98, i32* null, i32* null)
  store i32 %99, i32* %20, align 4
  br label %122

100:                                              ; preds = %76, %71, %66
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* @GSS_C_NO_OID, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32 (i32*, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*)** %106, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %13, align 8
  %110 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %115 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %114, i32 0, i32 0
  %116 = call i32 %107(i32* %108, i32 %111, i32 %112, %struct.TYPE_9__* %22, i32 %113, i32* %115, i32* null, i32* null)
  store i32 %116, i32* %20, align 4
  br label %121

117:                                              ; preds = %100
  %118 = load i32, i32* @GSS_S_UNAVAILABLE, align 4
  store i32 %118, i32* %20, align 4
  %119 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %120 = call i32 @free(%struct._gss_mechanism_cred* %119)
  store %struct._gss_mechanism_cred* null, %struct._gss_mechanism_cred** %21, align 8
  br label %121

121:                                              ; preds = %117, %104
  br label %122

122:                                              ; preds = %121, %83
  br label %123

123:                                              ; preds = %122, %48
  %124 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %21, align 8
  %125 = load %struct._gss_mechanism_cred**, %struct._gss_mechanism_cred*** %19, align 8
  store %struct._gss_mechanism_cred* %124, %struct._gss_mechanism_cred** %125, align 8
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %123, %27
  %128 = load i32, i32* %10, align 4
  ret i32 %128
}

declare dso_local %struct._gss_mechanism_cred* @calloc(i32, i32) #1

declare dso_local i64 @gss_oid_equal(i64, i32) #1

declare dso_local i32 @free(%struct._gss_mechanism_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
