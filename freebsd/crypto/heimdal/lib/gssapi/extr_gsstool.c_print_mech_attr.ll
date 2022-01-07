; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_print_mech_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_gsstool.c_print_mech_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"rtbl_create\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@COL_OID = common dso_local global i32 0, align 4
@COL_DESC = common dso_local global i32 0, align 4
@COL_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"attributes for: %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_9__*)* @print_mech_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mech_attr(i8* %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %14 = call i32* (...) @rtbl_create()
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @rtbl_set_separator(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @COL_OID, align 4
  %24 = call i32 @rtbl_add_column(i32* %22, i32 %23, i32 0)
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @COL_DESC, align 4
  %27 = call i32 @rtbl_add_column(i32* %25, i32 %26, i32 0)
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @COL_VALUE, align 4
  %33 = call i32 @rtbl_add_column(i32* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %19
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %106, %34
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i64 @gss_display_mech_attr(i64* %10, i32* %46, %struct.TYPE_8__* %7, %struct.TYPE_8__* %8, i32* null)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %106

51:                                               ; preds = %41
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @COL_OID, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i32*, i32, i8*, ...) @rtbl_add_column_entryv(i32* %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* @COL_DESC, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 (i32*, i32, i8*, ...) @rtbl_add_column_entryv(i32* %61, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8* %68)
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %51
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i64 @gss_mo_get(i64 %73, i32* %78, %struct.TYPE_8__* %13)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %81, %72
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @COL_VALUE, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (i32*, i32, i8*, ...) @rtbl_add_column_entryv(i32* %88, i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %92, i8* %95)
  br label %101

97:                                               ; preds = %83
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @COL_VALUE, align 4
  %100 = call i32 (i32*, i32, i8*, ...) @rtbl_add_column_entryv(i32* %98, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %87
  %102 = call i32 @gss_release_buffer(i64* %10, %struct.TYPE_8__* %13)
  br label %103

103:                                              ; preds = %101, %51
  %104 = call i32 @gss_release_buffer(i64* %10, %struct.TYPE_8__* %7)
  %105 = call i32 @gss_release_buffer(i64* %10, %struct.TYPE_8__* %8)
  br label %106

106:                                              ; preds = %103, %50
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %35

109:                                              ; preds = %35
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @rtbl_format(i32* %112, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @rtbl_destroy(i32* %115)
  ret void
}

declare dso_local i32* @rtbl_create(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @rtbl_set_separator(i32*, i8*) #1

declare dso_local i32 @rtbl_add_column(i32*, i32, i32) #1

declare dso_local i64 @gss_display_mech_attr(i64*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @rtbl_add_column_entryv(i32*, i32, i8*, ...) #1

declare dso_local i64 @gss_mo_get(i64, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @rtbl_format(i32*, i32) #1

declare dso_local i32 @rtbl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
