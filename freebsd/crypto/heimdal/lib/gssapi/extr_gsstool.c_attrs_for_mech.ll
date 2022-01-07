; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_attrs_for_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_attrs_for_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attrs_for_mech_options = type { i8*, i64 }

@GSS_C_NO_OID = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"mech %s is unknown\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"gss_inquire_attrs_for_mech\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"all mechs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attrs_for_mech(%struct.attrs_for_mech_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.attrs_for_mech_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.attrs_for_mech_options* %0, %struct.attrs_for_mech_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32*, i32** @GSS_C_NO_OID, align 8
  store i32* %12, i32** %9, align 8
  %13 = load %struct.attrs_for_mech_options*, %struct.attrs_for_mech_options** %4, align 8
  %14 = getelementptr inbounds %struct.attrs_for_mech_options, %struct.attrs_for_mech_options* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.attrs_for_mech_options*, %struct.attrs_for_mech_options** %4, align 8
  %19 = getelementptr inbounds %struct.attrs_for_mech_options, %struct.attrs_for_mech_options* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @gss_name_to_oid(i8* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.attrs_for_mech_options*, %struct.attrs_for_mech_options** %4, align 8
  %26 = getelementptr inbounds %struct.attrs_for_mech_options, %struct.attrs_for_mech_options* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @gss_inquire_attrs_for_mech(i64* %11, i32* %31, i32** %7, i32** %8)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.attrs_for_mech_options*, %struct.attrs_for_mech_options** %4, align 8
  %42 = getelementptr inbounds %struct.attrs_for_mech_options, %struct.attrs_for_mech_options* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @print_mech_attr(i8* %43, i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load %struct.attrs_for_mech_options*, %struct.attrs_for_mech_options** %4, align 8
  %49 = getelementptr inbounds %struct.attrs_for_mech_options, %struct.attrs_for_mech_options* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @print_mech_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = call i32 @gss_release_oid_set(i64* %11, i32** %7)
  %57 = call i32 @gss_release_oid_set(i64* %11, i32** %8)
  ret i32 0
}

declare dso_local i32* @gss_name_to_oid(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @gss_inquire_attrs_for_mech(i64*, i32*, i32**, i32**) #1

declare dso_local i32 @print_mech_attr(i8*, i32*, i32*) #1

declare dso_local i32 @gss_release_oid_set(i64*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
