; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_name.c_gss_import_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_name.c_gss_import_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct._gss_name = type { i32, i32, i32 }

@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i64 0, align 8
@GSS_C_NT_USER_NAME = common dso_local global i64 0, align 8
@GSS_C_NT_EXPORT_NAME = common dso_local global i64 0, align 8
@GSS_C_NT_MACHINE_UID_NAME = common dso_local global i64 0, align 8
@GSS_C_NT_STRING_UID_NAME = common dso_local global i64 0, align 8
@GSS_C_NT_HOSTBASED_SERVICE_X = common dso_local global i64 0, align 8
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i64 0, align 8
@GSS_C_NT_ANONYMOUS = common dso_local global i64 0, align 8
@GSS_KRB5_NT_PRINCIPAL_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_NAMETYPE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_import_name(i64* %0, %struct.TYPE_5__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._gss_name*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @GSS_C_NO_NAME, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64*, i64** %6, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %23, i64* %5, align 8
  br label %123

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @GSS_C_NO_OID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @GSS_C_NT_USER_NAME, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @GSS_C_NT_EXPORT_NAME, align 8
  %33 = call i64 @gss_oid_equal(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64*, i64** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = call i64 @_gss_import_export_name(i64* %36, %struct.TYPE_5__* %37, i64* %38)
  store i64 %39, i64* %5, align 8
  br label %123

40:                                               ; preds = %30
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @GSS_C_NT_USER_NAME, align 8
  %43 = call i64 @gss_oid_equal(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @GSS_C_NT_MACHINE_UID_NAME, align 8
  %48 = call i64 @gss_oid_equal(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @GSS_C_NT_STRING_UID_NAME, align 8
  %53 = call i64 @gss_oid_equal(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @GSS_C_NT_HOSTBASED_SERVICE_X, align 8
  %58 = call i64 @gss_oid_equal(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @GSS_C_NT_HOSTBASED_SERVICE, align 8
  %63 = call i64 @gss_oid_equal(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @GSS_C_NT_ANONYMOUS, align 8
  %68 = call i64 @gss_oid_equal(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @GSS_KRB5_NT_PRINCIPAL_NAME, align 8
  %73 = call i64 @gss_oid_equal(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i64*, i64** %6, align 8
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* @GSS_S_BAD_NAMETYPE, align 8
  store i64 %77, i64* %5, align 8
  br label %123

78:                                               ; preds = %70, %65, %60, %55, %50, %45, %40
  %79 = load i64*, i64** %6, align 8
  store i64 0, i64* %79, align 8
  %80 = call %struct._gss_name* @malloc(i32 12)
  store %struct._gss_name* %80, %struct._gss_name** %12, align 8
  %81 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %82 = icmp ne %struct._gss_name* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* @ENOMEM, align 8
  %85 = load i64*, i64** %6, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %86, i64* %5, align 8
  br label %123

87:                                               ; preds = %78
  %88 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %89 = call i32 @memset(%struct._gss_name* %88, i32 0, i32 12)
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %93 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %92, i32 0, i32 2
  %94 = call i64 @_gss_copy_oid(i64* %90, i64 %91, i32* %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %99 = call i32 @free(%struct._gss_name* %98)
  %100 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %100, i64* %5, align 8
  br label %123

101:                                              ; preds = %87
  %102 = load i64*, i64** %6, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %105 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %104, i32 0, i32 1
  %106 = call i64 @_gss_copy_buffer(i64* %102, %struct.TYPE_5__* %103, i32* %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %111 = ptrtoint %struct._gss_name* %110 to i64
  store i64 %111, i64* %13, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = call i32 @gss_release_name(i64* %112, i64* %13)
  %114 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %114, i64* %5, align 8
  br label %123

115:                                              ; preds = %101
  %116 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %117 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %116, i32 0, i32 0
  %118 = call i32 @SLIST_INIT(i32* %117)
  %119 = load %struct._gss_name*, %struct._gss_name** %12, align 8
  %120 = ptrtoint %struct._gss_name* %119 to i64
  %121 = load i64*, i64** %9, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %115, %109, %97, %83, %75, %35, %21
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i64 @gss_oid_equal(i64, i64) #1

declare dso_local i64 @_gss_import_export_name(i64*, %struct.TYPE_5__*, i64*) #1

declare dso_local %struct._gss_name* @malloc(i32) #1

declare dso_local i32 @memset(%struct._gss_name*, i32, i32) #1

declare dso_local i64 @_gss_copy_oid(i64*, i64, i32*) #1

declare dso_local i32 @free(%struct._gss_name*) #1

declare dso_local i64 @_gss_copy_buffer(i64*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i64*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
