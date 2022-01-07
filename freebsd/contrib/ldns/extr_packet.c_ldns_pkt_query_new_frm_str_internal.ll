; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_query_new_frm_str_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_query_new_frm_str_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_STATUS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__**, i8*, i32, i32, i32, i32*)* @ldns_pkt_query_new_frm_str_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_pkt_query_new_frm_str_internal(%struct.TYPE_8__** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = call %struct.TYPE_8__* (...) @ldns_pkt_new()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %14, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %21, i64* %7, align 8
  br label %95

22:                                               ; preds = %6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @ldns_pkt_set_flags(%struct.TYPE_8__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %28, i64* %7, align 8
  br label %95

29:                                               ; preds = %22
  %30 = call i32* (...) @ldns_rr_new()
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %34, i64* %7, align 8
  br label %95

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @ldns_str2rdf_dname(i32** %16, i8* %46)
  %48 = load i64, i64* @LDNS_STATUS_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @ldns_rr_set_owner(i32* %51, i32* %52)
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ldns_rr_set_type(i32* %54, i32 %55)
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ldns_rr_set_class(i32* %57, i32 %58)
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @ldns_rr_set_question(i32* %60, i32 1)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @ldns_pkt_push_rr(%struct.TYPE_8__* %62, i32 %63, i32* %64)
  br label %72

66:                                               ; preds = %45
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @ldns_rr_free(i32* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = call i32 @ldns_pkt_free(%struct.TYPE_8__* %69)
  %71 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %71, i64* %7, align 8
  br label %95

72:                                               ; preds = %50
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %77 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @ldns_pkt_push_rr(%struct.TYPE_8__* %76, i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = call i32 @ldns_pkt_set_answerfrom(%struct.TYPE_8__* %83, i32* null)
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %86 = icmp ne %struct.TYPE_8__** %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %89, align 8
  %90 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %90, i64* %7, align 8
  br label %95

91:                                               ; preds = %80
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = call i32 @ldns_pkt_free(%struct.TYPE_8__* %92)
  %94 = load i64, i64* @LDNS_STATUS_NULL, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %91, %87, %66, %33, %27, %20
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local %struct.TYPE_8__* @ldns_pkt_new(...) #1

declare dso_local i32 @ldns_pkt_set_flags(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i64 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_question(i32*, i32) #1

declare dso_local i32 @ldns_pkt_push_rr(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_pkt_free(%struct.TYPE_8__*) #1

declare dso_local i32 @ldns_pkt_set_answerfrom(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
