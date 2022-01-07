; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_create_nsecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_create_nsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_DEFAULT_TTL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_zone_create_nsecs(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %18 = call %struct.TYPE_12__* @ldns_dnssec_name_find_rrset(i32 %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32* @ldns_rr_rdf(i64 %38, i32 6)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @ldns_rr_rdf(i64 %46, i32 6)
  %48 = call i32 @ldns_rdf2native_int32(i32* %47)
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %33, %26, %21, %2
  %50 = load i32, i32* @LDNS_DEFAULT_TTL, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ldns_rbtree_first(i32 %54)
  %56 = call %struct.TYPE_10__* @ldns_dnssec_name_node_next_nonglue(i32 %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %6, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = call i32 @ldns_rbtree_next(%struct.TYPE_10__* %61)
  %63 = call %struct.TYPE_10__* @ldns_dnssec_name_node_next_nonglue(i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %8, align 8
  br label %65

64:                                               ; preds = %51
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %110, %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %74, label %111

74:                                               ; preds = %72
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %9, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %86 = call i32* @ldns_dnssec_create_nsec(i32* %83, i32* %84, i32 %85)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @ldns_rr_set_ttl(i32* %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @ldns_dnssec_name_add_rr(i32* %90, i32* %91)
  %93 = load i64, i64* @LDNS_STATUS_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %74
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @ldns_rr_free(i32* %96)
  %98 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %98, i64* %3, align 8
  br label %150

99:                                               ; preds = %74
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @ldns_rr_list_push_rr(i32* %100, i32* %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %7, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = call i32 @ldns_rbtree_next(%struct.TYPE_10__* %107)
  %109 = call %struct.TYPE_10__* @ldns_dnssec_name_node_next_nonglue(i32 %108)
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %8, align 8
  br label %110

110:                                              ; preds = %106, %99
  br label %66

111:                                              ; preds = %72
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = icmp ne %struct.TYPE_10__* %112, null
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = icmp ne %struct.TYPE_10__* %115, null
  br i1 %116, label %146, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %9, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %129 = call i32* @ldns_dnssec_create_nsec(i32* %126, i32* %127, i32 %128)
  store i32* %129, i32** %11, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @ldns_rr_set_ttl(i32* %130, i32 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i64 @ldns_dnssec_name_add_rr(i32* %133, i32* %134)
  %136 = load i64, i64* @LDNS_STATUS_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @ldns_rr_free(i32* %139)
  %141 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %141, i64* %3, align 8
  br label %150

142:                                              ; preds = %117
  %143 = load i32*, i32** %5, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @ldns_rr_list_push_rr(i32* %143, i32* %144)
  br label %148

146:                                              ; preds = %114, %111
  %147 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %149, i64* %3, align 8
  br label %150

150:                                              ; preds = %148, %138, %95
  %151 = load i64, i64* %3, align 8
  ret i64 %151
}

declare dso_local %struct.TYPE_12__* @ldns_dnssec_name_find_rrset(i32, i32) #1

declare dso_local i32* @ldns_rr_rdf(i64, i32) #1

declare dso_local i32 @ldns_rdf2native_int32(i32*) #1

declare dso_local %struct.TYPE_10__* @ldns_dnssec_name_node_next_nonglue(i32) #1

declare dso_local i32 @ldns_rbtree_first(i32) #1

declare dso_local i32 @ldns_rbtree_next(%struct.TYPE_10__*) #1

declare dso_local i32* @ldns_dnssec_create_nsec(i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_set_ttl(i32*, i32) #1

declare dso_local i64 @ldns_dnssec_name_add_rr(i32*, i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
