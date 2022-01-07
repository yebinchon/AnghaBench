; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_sec_context.c_gss_import_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_sec_context.c_gss_import_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct._gss_mech_switch = type { i64 (i64*, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i64, i8* }
%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct.TYPE_9__ = type { i8, i8* }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_import_sec_context(i64* %0, %struct.TYPE_7__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._gss_mech_switch*, align 8
  %10 = alloca %struct._gss_context*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  store i64 %27, i64* %4, align 8
  br label %110

28:                                               ; preds = %3
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %33, %37
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8 %39, i8* %40, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  store i64 %49, i64* %4, align 8
  br label %110

50:                                               ; preds = %28
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %54, 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %57 = load i8, i8* %56, align 8
  %58 = zext i8 %57 to i64
  %59 = sub i64 %55, %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %64 = load i8, i8* %63, align 8
  %65 = zext i8 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = call %struct._gss_mech_switch* @_gss_find_mech_switch(%struct.TYPE_9__* %11)
  store %struct._gss_mech_switch* %69, %struct._gss_mech_switch** %9, align 8
  %70 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %71 = icmp ne %struct._gss_mech_switch* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %50
  %73 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  store i64 %73, i64* %4, align 8
  br label %110

74:                                               ; preds = %50
  %75 = call %struct._gss_context* @malloc(i32 16)
  store %struct._gss_context* %75, %struct._gss_context** %10, align 8
  %76 = load %struct._gss_context*, %struct._gss_context** %10, align 8
  %77 = icmp ne %struct._gss_context* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* @ENOMEM, align 8
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %81, i64* %4, align 8
  br label %110

82:                                               ; preds = %74
  %83 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %84 = load %struct._gss_context*, %struct._gss_context** %10, align 8
  %85 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %84, i32 0, i32 1
  store %struct._gss_mech_switch* %83, %struct._gss_mech_switch** %85, align 8
  %86 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %87 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %86, i32 0, i32 0
  %88 = load i64 (i64*, %struct.TYPE_8__*, i32*)*, i64 (i64*, %struct.TYPE_8__*, i32*)** %87, align 8
  %89 = load i64*, i64** %5, align 8
  %90 = load %struct._gss_context*, %struct._gss_context** %10, align 8
  %91 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %90, i32 0, i32 0
  %92 = call i64 %88(i64* %89, %struct.TYPE_8__* %12, i32* %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @GSS_S_COMPLETE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %82
  %97 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %97, i64 %98, i64 %100)
  %102 = load %struct._gss_context*, %struct._gss_context** %10, align 8
  %103 = call i32 @free(%struct._gss_context* %102)
  br label %108

104:                                              ; preds = %82
  %105 = load %struct._gss_context*, %struct._gss_context** %10, align 8
  %106 = ptrtoint %struct._gss_context* %105 to i64
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %96
  %109 = load i64, i64* %8, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %78, %72, %48, %26
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(%struct.TYPE_9__*) #1

declare dso_local %struct._gss_context* @malloc(i32) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

declare dso_local i32 @free(%struct._gss_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
