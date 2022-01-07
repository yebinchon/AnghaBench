; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_add_okc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_add_okc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { i32 }
%struct.rsn_pmksa_cache_entry = type { i32, i32*, i32, i32, i64, i32, i32*, i32*, i32, i32, i32, i32*, i32* }

@PMKID_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_add_okc(%struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache_entry* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %6 = alloca %struct.rsn_pmksa_cache*, align 8
  %7 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %6, align 8
  store %struct.rsn_pmksa_cache_entry* %1, %struct.rsn_pmksa_cache_entry** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i8* @os_zalloc(i32 88)
  %12 = bitcast i8* %11 to %struct.rsn_pmksa_cache_entry*
  store %struct.rsn_pmksa_cache_entry* %12, %struct.rsn_pmksa_cache_entry** %10, align 8
  %13 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %14 = icmp eq %struct.rsn_pmksa_cache_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %5, align 8
  br label %145

16:                                               ; preds = %4
  %17 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %18 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %17, i32 0, i32 12
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @PMKID_LEN, align 4
  %22 = call i32 @os_memcpy(i32* %19, i32* %20, i32 %21)
  %23 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %24 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %23, i32 0, i32 11
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %27 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %26, i32 0, i32 11
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %30 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @os_memcpy(i32* %25, i32* %28, i32 %31)
  %33 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %34 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %37 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %39 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %42 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %44 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %47 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %49 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %52 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @os_memcpy(i32* %50, i32* %53, i32 %54)
  %56 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %57 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %59 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %16
  %63 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %64 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @os_malloc(i32 %65)
  %67 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %68 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %67, i32 0, i32 6
  store i32* %66, i32** %68, align 8
  %69 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %70 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %75 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %78 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %80 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %83 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %86 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @os_memcpy(i32* %81, i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %73, %62
  br label %90

90:                                               ; preds = %89, %16
  %91 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %92 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %97 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @wpabuf_dup(i64 %98)
  %100 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %101 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %104 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %103, i32 0, i32 3
  %105 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %106 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %105, i32 0, i32 3
  %107 = call i32 @radius_copy_class(i32* %104, i32* %106)
  %108 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %109 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %112 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %114 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %102
  %118 = call i8* @os_zalloc(i32 4)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %121 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %120, i32 0, i32 1
  store i32* %119, i32** %121, align 8
  %122 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %123 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %128 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %132 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %117
  br label %138

135:                                              ; preds = %102
  %136 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %137 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %136, i32 0, i32 1
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %135, %134
  %139 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %140 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %6, align 8
  %142 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %143 = call i32 @pmksa_cache_link_entry(%struct.rsn_pmksa_cache* %141, %struct.rsn_pmksa_cache_entry* %142)
  %144 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  store %struct.rsn_pmksa_cache_entry* %144, %struct.rsn_pmksa_cache_entry** %5, align 8
  br label %145

145:                                              ; preds = %138, %15
  %146 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  ret %struct.rsn_pmksa_cache_entry* %146
}

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @wpabuf_dup(i64) #1

declare dso_local i32 @radius_copy_class(i32*, i32*) #1

declare dso_local i32 @pmksa_cache_link_entry(%struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
