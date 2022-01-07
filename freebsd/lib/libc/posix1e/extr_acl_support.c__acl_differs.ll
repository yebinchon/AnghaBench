; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__acl_differs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__acl_differs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i64, i64, i64, i64, i64 }

@ACL_BRAND_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_acl_differs(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acl_entry*, align 8
  %8 = alloca %struct.acl_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = call i64 @_acl_brand(%struct.TYPE_7__* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i64 @_acl_brand(%struct.TYPE_7__* %11)
  %13 = icmp eq i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i64 @_acl_brand(%struct.TYPE_7__* %16)
  %18 = load i64, i64* @ACL_BRAND_UNKNOWN, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = call i64 @_acl_brand(%struct.TYPE_7__* %22)
  %24 = load i64, i64* @ACL_BRAND_UNKNOWN, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %106

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %102, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.acl_entry*, %struct.acl_entry** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %50, i64 %52
  store %struct.acl_entry* %53, %struct.acl_entry** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.acl_entry*, %struct.acl_entry** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %57, i64 %59
  store %struct.acl_entry* %60, %struct.acl_entry** %8, align 8
  %61 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %62 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.acl_entry*, %struct.acl_entry** %8, align 8
  %65 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %100, label %68

68:                                               ; preds = %46
  %69 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %70 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.acl_entry*, %struct.acl_entry** %8, align 8
  %73 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %100, label %76

76:                                               ; preds = %68
  %77 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %78 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.acl_entry*, %struct.acl_entry** %8, align 8
  %81 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %100, label %84

84:                                               ; preds = %76
  %85 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %86 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.acl_entry*, %struct.acl_entry** %8, align 8
  %89 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %94 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.acl_entry*, %struct.acl_entry** %8, align 8
  %97 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %84, %76, %68, %46
  store i32 1, i32* %3, align 4
  br label %106

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %39

105:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %100, %37
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_acl_brand(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
