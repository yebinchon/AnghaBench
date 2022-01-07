; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_new_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_new_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8*, i8*, i32*, i32, %struct.rrset_parse*, %struct.rrset_parse* }
%struct.msg_parse = type { %struct.rrset_parse*, %struct.rrset_parse*, %struct.rrset_parse** }
%struct.regional = type { i32 }

@PARSE_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rrset_parse* (%struct.msg_parse*, i32*, i64, i8*, i8*, i32, i32, i32, %struct.regional*)* @new_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rrset_parse* @new_rrset(%struct.msg_parse* %0, i32* %1, i64 %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, %struct.regional* %8) #0 {
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca %struct.msg_parse*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.regional*, align 8
  %20 = alloca %struct.rrset_parse*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.regional* %8, %struct.regional** %19, align 8
  %21 = load %struct.regional*, %struct.regional** %19, align 8
  %22 = call %struct.rrset_parse* @regional_alloc(%struct.regional* %21, i32 128)
  store %struct.rrset_parse* %22, %struct.rrset_parse** %20, align 8
  %23 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %24 = icmp ne %struct.rrset_parse* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  store %struct.rrset_parse* null, %struct.rrset_parse** %10, align 8
  br label %105

26:                                               ; preds = %9
  %27 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %28 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %27, i32 0, i32 2
  %29 = load %struct.rrset_parse**, %struct.rrset_parse*** %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @PARSE_TABLE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rrset_parse*, %struct.rrset_parse** %29, i64 %34
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %35, align 8
  %37 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %38 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %37, i32 0, i32 15
  store %struct.rrset_parse* %36, %struct.rrset_parse** %38, align 8
  %39 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %40 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %41 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %40, i32 0, i32 2
  %42 = load %struct.rrset_parse**, %struct.rrset_parse*** %41, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @PARSE_TABLE_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.rrset_parse*, %struct.rrset_parse** %42, i64 %47
  store %struct.rrset_parse* %39, %struct.rrset_parse** %48, align 8
  %49 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %50 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %49, i32 0, i32 14
  store %struct.rrset_parse* null, %struct.rrset_parse** %50, align 8
  %51 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %52 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %51, i32 0, i32 0
  %53 = load %struct.rrset_parse*, %struct.rrset_parse** %52, align 8
  %54 = icmp ne %struct.rrset_parse* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %26
  %56 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %57 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %58 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %57, i32 0, i32 0
  %59 = load %struct.rrset_parse*, %struct.rrset_parse** %58, align 8
  %60 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %59, i32 0, i32 14
  store %struct.rrset_parse* %56, %struct.rrset_parse** %60, align 8
  br label %65

61:                                               ; preds = %26
  %62 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %63 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %64 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %63, i32 0, i32 1
  store %struct.rrset_parse* %62, %struct.rrset_parse** %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %67 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %68 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %67, i32 0, i32 0
  store %struct.rrset_parse* %66, %struct.rrset_parse** %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %71 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %74 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %77 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %76, i32 0, i32 12
  store i32* %75, i32** %77, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %80 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %83 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %86 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %89 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 8
  %90 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %91 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %93 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %95 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %97 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %96, i32 0, i32 5
  store i64 0, i64* %97, align 8
  %98 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %99 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %101 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %103 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  store %struct.rrset_parse* %104, %struct.rrset_parse** %10, align 8
  br label %105

105:                                              ; preds = %65, %25
  %106 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  ret %struct.rrset_parse* %106
}

declare dso_local %struct.rrset_parse* @regional_alloc(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
