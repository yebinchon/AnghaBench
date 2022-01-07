; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_supported_mechanisms.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_supported_mechanisms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i64 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"gss_indicate_mechs failed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Supported mechanisms:\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rtbl_create\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@COL_OID = common dso_local global i32 0, align 4
@COL_NAME = common dso_local global i32 0, align 4
@COL_DESC = common dso_local global i32 0, align 4
@COL_SASL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"gss_oid_to_str failed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @supported_mechanisms(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %16 = call i64 @gss_indicate_mechs(i64* %8, %struct.TYPE_11__** %9)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @GSS_S_COMPLETE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32* (...) @rtbl_create()
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @rtbl_set_separator(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @COL_OID, align 4
  %34 = call i32 @rtbl_add_column(i32* %32, i32 %33, i32 0)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @COL_NAME, align 4
  %37 = call i32 @rtbl_add_column(i32* %35, i32 %36, i32 0)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @COL_DESC, align 4
  %40 = call i32 @rtbl_add_column(i32* %38, i32 %39, i32 0)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @COL_SASL, align 4
  %43 = call i32 @rtbl_add_column(i32* %41, i32 %42, i32 0)
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %109, %29
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %112

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i64 @gss_oid_to_str(i64* %8, i32* %55, %struct.TYPE_10__* %12)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @GSS_S_COMPLETE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %50
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* @COL_OID, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @rtbl_add_column_entryv(i32* %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %67, i8* %70)
  %72 = call i32 @gss_release_buffer(i64* %8, %struct.TYPE_10__* %12)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i32 @gss_inquire_saslname_for_mech(i64* %8, i32* %77, %struct.TYPE_10__* %13, %struct.TYPE_10__* %14, %struct.TYPE_10__* %15)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @COL_NAME, align 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @rtbl_add_column_entryv(i32* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %83, i8* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @COL_DESC, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @rtbl_add_column_entryv(i32* %88, i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %92, i8* %95)
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @COL_SASL, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @rtbl_add_column_entryv(i32* %97, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %101, i8* %104)
  %106 = call i32 @gss_release_buffer(i64* %8, %struct.TYPE_10__* %14)
  %107 = call i32 @gss_release_buffer(i64* %8, %struct.TYPE_10__* %15)
  %108 = call i32 @gss_release_buffer(i64* %8, %struct.TYPE_10__* %13)
  br label %109

109:                                              ; preds = %62
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %44

112:                                              ; preds = %44
  %113 = call i32 @gss_release_oid_set(i64* %8, %struct.TYPE_11__** %9)
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @stdout, align 4
  %116 = call i32 @rtbl_format(i32* %114, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @rtbl_destroy(i32* %117)
  ret i32 0
}

declare dso_local i64 @gss_indicate_mechs(i64*, %struct.TYPE_11__**) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @rtbl_create(...) #1

declare dso_local i32 @rtbl_set_separator(i32*, i8*) #1

declare dso_local i32 @rtbl_add_column(i32*, i32, i32) #1

declare dso_local i64 @gss_oid_to_str(i64*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @rtbl_add_column_entryv(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_10__*) #1

declare dso_local i32 @gss_inquire_saslname_for_mech(i64*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @gss_release_oid_set(i64*, %struct.TYPE_11__**) #1

declare dso_local i32 @rtbl_format(i32*, i32) #1

declare dso_local i32 @rtbl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
