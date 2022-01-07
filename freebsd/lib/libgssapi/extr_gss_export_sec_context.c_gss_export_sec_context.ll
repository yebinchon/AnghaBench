; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_export_sec_context.c_gss_export_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_export_sec_context.c_gss_export_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }
%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32*, %struct.TYPE_10__*)*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_export_sec_context(i64* %0, i64* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._gss_context*, align 8
  %10 = alloca %struct._gss_mech_switch*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct._gss_context*
  store %struct._gss_context* %15, %struct._gss_context** %9, align 8
  %16 = load %struct._gss_context*, %struct._gss_context** %9, align 8
  %17 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %16, i32 0, i32 1
  %18 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %17, align 8
  store %struct._gss_mech_switch* %18, %struct._gss_mech_switch** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = call i32 @_gss_buffer_zero(%struct.TYPE_9__* %19)
  %21 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %22 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %21, i32 0, i32 0
  %23 = load i64 (i64*, i32*, %struct.TYPE_10__*)*, i64 (i64*, i32*, %struct.TYPE_10__*)** %22, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load %struct._gss_context*, %struct._gss_context** %9, align 8
  %26 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %25, i32 0, i32 0
  %27 = call i64 %23(i64* %24, i32* %26, %struct.TYPE_10__* %11)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @GSS_S_COMPLETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %3
  %32 = load %struct._gss_context*, %struct._gss_context** %9, align 8
  %33 = call i32 @free(%struct._gss_context* %32)
  %34 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  %39 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %40 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %38, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @malloc(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %31
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call i32 @_gss_buffer_zero(%struct.TYPE_9__* %57)
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %61, i64* %4, align 8
  br label %115

62:                                               ; preds = %31
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %12, align 8
  %66 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %67 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %75 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %78, i8* %80, align 1
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %84 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %88 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i8* %82, i32 %86, i32 %90)
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %95 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %93, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i8* %99, i32 %101, i32 %103)
  %105 = load i64*, i64** %5, align 8
  %106 = call i32 @gss_release_buffer(i64* %105, %struct.TYPE_10__* %11)
  br label %113

107:                                              ; preds = %3
  %108 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64*, i64** %5, align 8
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %108, i64 %109, i64 %111)
  br label %113

113:                                              ; preds = %107, %62
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %113, %56
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @_gss_buffer_zero(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct._gss_context*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_10__*) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
