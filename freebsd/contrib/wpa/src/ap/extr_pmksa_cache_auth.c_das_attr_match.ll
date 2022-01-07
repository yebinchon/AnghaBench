; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_das_attr_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_das_attr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i8*, i8*, i32, i32, i64 }
%struct.radius_das_attrs = type { i32, i32, i32, i64, i64, i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsn_pmksa_cache_entry*, %struct.radius_das_attrs*)* @das_attr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das_attr_match(%struct.rsn_pmksa_cache_entry* %0, %struct.radius_das_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %5 = alloca %struct.radius_das_attrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [20 x i8], align 16
  store %struct.rsn_pmksa_cache_entry* %0, %struct.rsn_pmksa_cache_entry** %4, align 8
  store %struct.radius_das_attrs* %1, %struct.radius_das_attrs** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %9 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %14 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %17 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i64 @os_memcmp(i64 %15, i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %125

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %28 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %33 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %125

37:                                               ; preds = %31
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %39 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %40 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @os_snprintf(i8* %38, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %44 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %47 = call i64 @os_memcmp(i64 %45, i8* %46, i32 16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %125

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %26
  %54 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %55 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %60 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %65 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %68 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wpabuf_len(i32 %69)
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %85, label %72

72:                                               ; preds = %63
  %73 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %74 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %77 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @wpabuf_head(i32 %78)
  %80 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %81 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @os_memcmp(i64 %75, i8* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72, %63, %58
  store i32 0, i32* %3, align 4
  br label %125

86:                                               ; preds = %72
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %53
  %90 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %91 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %89
  %95 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %96 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %101 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %104 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %99
  %108 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %109 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %112 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %115 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @os_memcmp(i64 %110, i8* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107, %99, %94
  store i32 0, i32* %3, align 4
  br label %125

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %89
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %119, %85, %49, %36, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @os_memcmp(i64, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i8* @wpabuf_head(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
