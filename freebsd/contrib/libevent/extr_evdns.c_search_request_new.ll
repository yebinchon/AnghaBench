; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_request_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_request_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type opaque
%struct.evdns_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.evdns_request = type { i32, i32, %struct.TYPE_2__*, i32*, i32* }

@TYPE_A = common dso_local global i32 0, align 4
@TYPE_AAAA = common dso_local global i32 0, align 4
@DNS_QUERY_NO_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*)* @search_request_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @search_request_new(%struct.evdns_base* %0, %struct.evdns_request* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.evdns_base*, align 8
  %10 = alloca %struct.evdns_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.request*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.request*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %9, align 8
  store %struct.evdns_request* %1, %struct.evdns_request** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %20 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %19)
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @TYPE_A, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @TYPE_AAAA, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %7
  %29 = phi i1 [ true, %7 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @EVUTIL_ASSERT(i32 %30)
  %32 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %33 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @EVUTIL_ASSERT(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @DNS_QUERY_NO_SEARCH, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %148

42:                                               ; preds = %28
  %43 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %44 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %148

47:                                               ; preds = %42
  %48 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %49 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %148

54:                                               ; preds = %47
  %55 = load i8*, i8** %12, align 8
  %56 = call i64 @string_num_dots(i8* %55)
  %57 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %58 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %56, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %65 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = call i8* @request_new(%struct.evdns_base* %64, %struct.evdns_request* %65, i32 %66, i8* %67, i32 %68, i32 %69, i8* %70)
  %72 = bitcast i8* %71 to %struct.request*
  store %struct.request* %72, %struct.request** %16, align 8
  %73 = load %struct.request*, %struct.request** %16, align 8
  %74 = icmp ne %struct.request* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  store %struct.request* null, %struct.request** %8, align 8
  br label %166

76:                                               ; preds = %63
  %77 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %78 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  br label %106

79:                                               ; preds = %54
  %80 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %81 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i8* @search_make_new(%struct.TYPE_2__* %82, i32 0, i8* %83)
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store %struct.request* null, %struct.request** %8, align 8
  br label %166

88:                                               ; preds = %79
  %89 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %90 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i8*, i8** %17, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = call i8* @request_new(%struct.evdns_base* %89, %struct.evdns_request* %90, i32 %91, i8* %92, i32 %93, i32 %94, i8* %95)
  %97 = bitcast i8* %96 to %struct.request*
  store %struct.request* %97, %struct.request** %16, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 @mm_free(i8* %98)
  %100 = load %struct.request*, %struct.request** %16, align 8
  %101 = icmp ne %struct.request* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %88
  store %struct.request* null, %struct.request** %8, align 8
  br label %166

103:                                              ; preds = %88
  %104 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %105 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %76
  %107 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %108 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 @EVUTIL_ASSERT(i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = call i32* @mm_strdup(i8* %113)
  %115 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %116 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %118 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %106
  %122 = load %struct.request*, %struct.request** %16, align 8
  %123 = icmp ne %struct.request* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.request*, %struct.request** %16, align 8
  %126 = bitcast %struct.request* %125 to i8*
  %127 = call i32 @mm_free(i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  store %struct.request* null, %struct.request** %8, align 8
  br label %166

129:                                              ; preds = %106
  %130 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %131 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %134 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %133, i32 0, i32 2
  store %struct.TYPE_2__* %132, %struct.TYPE_2__** %134, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %137 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %139 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.request*, %struct.request** %16, align 8
  %145 = bitcast %struct.request* %144 to i8*
  %146 = call i32 @request_submit(i8* %145)
  %147 = load %struct.request*, %struct.request** %16, align 8
  store %struct.request* %147, %struct.request** %8, align 8
  br label %166

148:                                              ; preds = %47, %42, %28
  %149 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %150 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i8*, i8** %15, align 8
  %156 = call i8* @request_new(%struct.evdns_base* %149, %struct.evdns_request* %150, i32 %151, i8* %152, i32 %153, i32 %154, i8* %155)
  %157 = bitcast i8* %156 to %struct.request*
  store %struct.request* %157, %struct.request** %18, align 8
  %158 = load %struct.request*, %struct.request** %18, align 8
  %159 = icmp ne %struct.request* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %148
  store %struct.request* null, %struct.request** %8, align 8
  br label %166

161:                                              ; preds = %148
  %162 = load %struct.request*, %struct.request** %18, align 8
  %163 = bitcast %struct.request* %162 to i8*
  %164 = call i32 @request_submit(i8* %163)
  %165 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %165, %struct.request** %8, align 8
  br label %166

166:                                              ; preds = %161, %160, %129, %128, %102, %87, %75
  %167 = load %struct.request*, %struct.request** %8, align 8
  ret %struct.request* %167
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @string_num_dots(i8*) #1

declare dso_local i8* @request_new(%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @search_make_new(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32* @mm_strdup(i8*) #1

declare dso_local i32 @request_submit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
