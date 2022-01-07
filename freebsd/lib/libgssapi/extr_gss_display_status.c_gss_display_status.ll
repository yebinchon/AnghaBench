; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c_gss_display_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c_gss_display_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i64 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unknown mech-code %lu for mech %.*s\00", align 1
@GSS_S_BAD_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_display_status(i64* %0, i64 %1, i32 %2, i32 %3, i64* %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i8*, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %21 = call i32 @_gss_buffer_zero(%struct.TYPE_8__* %20)
  %22 = load i64*, i64** %12, align 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %27 = call i64 @_gss_mg_get_error(i32 %23, i32 %24, i64 %25, %struct.TYPE_8__* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @GSS_S_COMPLETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i64*, i64** %12, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64*, i64** %8, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %34, i64* %7, align 8
  br label %110

35:                                               ; preds = %6
  %36 = load i64*, i64** %8, align 8
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %106 [
    i32 129, label %38
    i32 128, label %70
  ]

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @GSS_SUPPLEMENTARY_INFO(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @GSS_SUPPLEMENTARY_INFO(i64 %43)
  %45 = call i32 @supplementary_error(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = call i32 (i8**, i8*, i64, ...) @asprintf(i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %57

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @GSS_CALLING_ERROR(i64 %49)
  %51 = call i32 @calling_error(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @GSS_ROUTINE_ERROR(i64 %53)
  %55 = call i32 @routine_error(i32 %54)
  %56 = call i32 (i8**, i8*, i64, ...) @asprintf(i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i8*, i8** %15, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %106

61:                                               ; preds = %57
  %62 = load i8*, i8** %15, align 8
  %63 = call i8* @strlen(i8* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %69, i64* %7, align 8
  br label %110

70:                                               ; preds = %35
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @gss_oid_to_str(i64* %17, i32 %71, %struct.TYPE_9__* %18)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @GSS_S_COMPLETE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i64 @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 7, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i8**, i8*, i64, ...) @asprintf(i8** %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %81, i32 %83, i8* %86)
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* @GSS_S_COMPLETE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 @gss_release_buffer(i64* %17, %struct.TYPE_9__* %18)
  br label %93

93:                                               ; preds = %91, %80
  %94 = load i8*, i8** %19, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %106

97:                                               ; preds = %93
  %98 = load i8*, i8** %19, align 8
  %99 = call i8* @strlen(i8* %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %105, i64* %7, align 8
  br label %110

106:                                              ; preds = %35, %96, %60
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = call i32 @_gss_buffer_zero(%struct.TYPE_8__* %107)
  %109 = load i64, i64* @GSS_S_BAD_STATUS, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %106, %97, %61, %31
  %111 = load i64, i64* %7, align 8
  ret i64 %111
}

declare dso_local i32 @_gss_buffer_zero(%struct.TYPE_8__*) #1

declare dso_local i64 @_gss_mg_get_error(i32, i32, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @GSS_SUPPLEMENTARY_INFO(i64) #1

declare dso_local i32 @asprintf(i8**, i8*, i64, ...) #1

declare dso_local i32 @supplementary_error(i32) #1

declare dso_local i32 @calling_error(i32) #1

declare dso_local i32 @GSS_CALLING_ERROR(i64) #1

declare dso_local i32 @routine_error(i32) #1

declare dso_local i32 @GSS_ROUTINE_ERROR(i64) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @gss_oid_to_str(i64*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
