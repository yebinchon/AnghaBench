; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_search_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_search_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_resolver_search_status(i32** %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %22 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  store i32 ptrtoint ([1 x i8]* @.str to i32), i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = call i64 @ldns_dname_absolute(%struct.TYPE_10__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %6
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @ldns_resolver_query_status(i32** %30, i32* %31, %struct.TYPE_10__* %32, i32 %33, i32 %34, i32 %35)
  store i64 %36, i64* %7, align 8
  br label %105

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @ldns_resolver_dnsrch(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.TYPE_10__** @ldns_resolver_searchlist(i32* %42)
  store %struct.TYPE_10__** %43, %struct.TYPE_10__*** %15, align 8
  store i64 0, i64* %16, align 8
  br label %44

44:                                               ; preds = %98, %41
  %45 = load i64, i64* %16, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @ldns_resolver_searchlist_count(i32* %46)
  %48 = icmp ule i64 %45, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %44
  %50 = load i64, i64* %16, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @ldns_resolver_searchlist_count(i32* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call %struct.TYPE_10__* @ldns_dname_cat_clone(%struct.TYPE_10__* %55, %struct.TYPE_10__* %18)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %14, align 8
  br label %64

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %59, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call %struct.TYPE_10__* @ldns_dname_cat_clone(%struct.TYPE_10__* %58, %struct.TYPE_10__* %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %14, align 8
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @ldns_resolver_query_status(i32** %65, i32* %66, %struct.TYPE_10__* %67, i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %17, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %73 = call i32 @ldns_rdf_free(%struct.TYPE_10__* %72)
  %74 = load i32**, i32*** %8, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %76, label %97

76:                                               ; preds = %64
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* @LDNS_STATUS_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32**, i32*** %8, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @ldns_pkt_get_rcode(i32* %86)
  %88 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %91, i64* %7, align 8
  br label %105

92:                                               ; preds = %84, %80
  %93 = load i32**, i32*** %8, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ldns_pkt_free(i32* %94)
  %96 = load i32**, i32*** %8, align 8
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %76, %64
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %44

101:                                              ; preds = %44
  br label %102

102:                                              ; preds = %101, %37
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %17, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %103, %90, %29
  %106 = load i64, i64* %7, align 8
  ret i64 %106
}

declare dso_local i64 @ldns_dname_absolute(%struct.TYPE_10__*) #1

declare dso_local i64 @ldns_resolver_query_status(i32**, i32*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @ldns_resolver_dnsrch(i32*) #1

declare dso_local %struct.TYPE_10__** @ldns_resolver_searchlist(i32*) #1

declare dso_local i64 @ldns_resolver_searchlist_count(i32*) #1

declare dso_local %struct.TYPE_10__* @ldns_dname_cat_clone(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ldns_rdf_free(%struct.TYPE_10__*) #1

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
