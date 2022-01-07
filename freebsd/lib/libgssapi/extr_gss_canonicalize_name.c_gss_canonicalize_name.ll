; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_canonicalize_name.c_gss_canonicalize_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_canonicalize_name.c_gss_canonicalize_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_name = type { i32 }
%struct._gss_mechanism_name = type { i64, i32*, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i32, i32 (i64*, i64*)*, i64 (i64*, i64, i32, i64*)* }

@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@gmn_link = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_canonicalize_name(i64* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._gss_name*, align 8
  %12 = alloca %struct._gss_mechanism_name*, align 8
  %13 = alloca %struct._gss_mech_switch*, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct._gss_name*
  store %struct._gss_name* %16, %struct._gss_name** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct._gss_mech_switch* @_gss_find_mech_switch(i32 %17)
  store %struct._gss_mech_switch* %18, %struct._gss_mech_switch** %13, align 8
  %19 = load i64*, i64** %6, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @_gss_find_mn(i64* %21, %struct._gss_name* %22, i32 %23, %struct._gss_mechanism_name** %12)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %5, align 8
  br label %107

29:                                               ; preds = %4
  %30 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %31 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %30, i32 0, i32 2
  %32 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %31, align 8
  store %struct._gss_mech_switch* %32, %struct._gss_mech_switch** %13, align 8
  %33 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %34 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %33, i32 0, i32 2
  %35 = load i64 (i64*, i64, i32, i64*)*, i64 (i64*, i64, i32, i64*)** %34, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %38 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 %35(i64* %36, i64 %39, i32 %40, i64* %14)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %45, i64 %46, i64 %48)
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %5, align 8
  br label %107

51:                                               ; preds = %29
  %52 = load i64*, i64** %6, align 8
  store i64 0, i64* %52, align 8
  %53 = call i8* @malloc(i32 4)
  %54 = bitcast i8* %53 to %struct._gss_name*
  store %struct._gss_name* %54, %struct._gss_name** %11, align 8
  %55 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %56 = icmp ne %struct._gss_name* %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %59 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %58, i32 0, i32 1
  %60 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %59, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = call i32 %60(i64* %61, i64* %14)
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = load i64*, i64** %6, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %65, i64* %5, align 8
  br label %107

66:                                               ; preds = %51
  %67 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %68 = call i32 @memset(%struct._gss_name* %67, i32 0, i32 4)
  %69 = call i8* @malloc(i32 24)
  %70 = bitcast i8* %69 to %struct._gss_mechanism_name*
  store %struct._gss_mechanism_name* %70, %struct._gss_mechanism_name** %12, align 8
  %71 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %72 = icmp ne %struct._gss_mechanism_name* %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %75 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %74, i32 0, i32 1
  %76 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %75, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = call i32 %76(i64* %77, i64* %14)
  %79 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %80 = call i32 @free(%struct._gss_name* %79)
  %81 = load i64, i64* @ENOMEM, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %83, i64* %5, align 8
  br label %107

84:                                               ; preds = %66
  %85 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %86 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %85, i32 0, i32 0
  %87 = call i32 @SLIST_INIT(i32* %86)
  %88 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %89 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %90 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %89, i32 0, i32 2
  store %struct._gss_mech_switch* %88, %struct._gss_mech_switch** %90, align 8
  %91 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %92 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %91, i32 0, i32 0
  %93 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %94 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %97 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %99 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %98, i32 0, i32 0
  %100 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %12, align 8
  %101 = load i32, i32* @gmn_link, align 4
  %102 = call i32 @SLIST_INSERT_HEAD(i32* %99, %struct._gss_mechanism_name* %100, i32 %101)
  %103 = load %struct._gss_name*, %struct._gss_name** %11, align 8
  %104 = ptrtoint %struct._gss_name* %103 to i64
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %84, %73, %57, %44, %27
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(i32) #1

declare dso_local i64 @_gss_find_mn(i64*, %struct._gss_name*, i32, %struct._gss_mechanism_name**) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct._gss_name*, i32, i32) #1

declare dso_local i32 @free(%struct._gss_name*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct._gss_mechanism_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
