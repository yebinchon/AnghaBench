; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serviced_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.serviced_query*, align 8
  %7 = alloca %struct.serviced_query*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.serviced_query*
  store %struct.serviced_query* %10, %struct.serviced_query** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.serviced_query*
  store %struct.serviced_query* %12, %struct.serviced_query** %7, align 8
  %13 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %14 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %131

21:                                               ; preds = %2
  %22 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %23 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %26 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %131

30:                                               ; preds = %21
  %31 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %32 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %35 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @log_assert(i32 %38)
  %40 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %41 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 15
  %44 = zext i1 %43 to i32
  %45 = call i32 @log_assert(i32 %44)
  %46 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %47 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %50 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcmp(i32 %48, i32 %51, i32 10)
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %131

56:                                               ; preds = %30
  %57 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %58 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %61 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = sub nsw i32 %63, 4
  %65 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %66 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %69 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = sub nsw i32 %71, 4
  %73 = call i32 @memcmp(i32 %64, i32 %72, i32 4)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %131

77:                                               ; preds = %56
  %78 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %79 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %82 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %87 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %90 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %131

94:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %131

95:                                               ; preds = %77
  %96 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %97 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 10
  %100 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %101 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 10
  %104 = call i32 @query_dname_compare(i32 %99, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %131

108:                                              ; preds = %95
  %109 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %110 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %113 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @edns_opt_list_compare(i32 %111, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %131

119:                                              ; preds = %108
  %120 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %121 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %120, i32 0, i32 4
  %122 = load %struct.serviced_query*, %struct.serviced_query** %6, align 8
  %123 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %126 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %125, i32 0, i32 4
  %127 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %128 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @sockaddr_cmp(i32* %121, i32 %124, i32* %126, i32 %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %119, %117, %106, %94, %93, %75, %54, %29, %20
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @query_dname_compare(i32, i32) #1

declare dso_local i32 @edns_opt_list_compare(i32, i32) #1

declare dso_local i32 @sockaddr_cmp(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
