; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_moveover_rrsigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_moveover_rrsigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.rrset_parse = type { i32, %struct.rr_parse*, %struct.rr_parse*, i32, i32, %struct.rr_parse*, %struct.rr_parse*, i32 }
%struct.rr_parse = type { i64, %struct.rr_parse*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.regional*, %struct.rrset_parse*, %struct.rrset_parse*, i32)* @moveover_rrsigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveover_rrsigs(i32* %0, %struct.regional* %1, %struct.rrset_parse* %2, %struct.rrset_parse* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rr_parse*, align 8
  %13 = alloca %struct.rr_parse*, align 8
  %14 = alloca %struct.rr_parse*, align 8
  %15 = alloca %struct.rr_parse*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %9, align 8
  store %struct.rrset_parse* %3, %struct.rrset_parse** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %17 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %16, i32 0, i32 6
  %18 = load %struct.rr_parse*, %struct.rr_parse** %17, align 8
  store %struct.rr_parse* %18, %struct.rr_parse** %12, align 8
  store %struct.rr_parse* null, %struct.rr_parse** %13, align 8
  br label %19

19:                                               ; preds = %134, %5
  %20 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %21 = icmp ne %struct.rr_parse* %20, null
  br i1 %21, label %22, label %136

22:                                               ; preds = %19
  %23 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %24 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %23, i32 0, i32 1
  %25 = load %struct.rr_parse*, %struct.rr_parse** %24, align 8
  store %struct.rr_parse* %25, %struct.rr_parse** %15, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %28 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @pkt_rrsig_covered_equals(i32* %26, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %132

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.regional*, %struct.regional** %8, align 8
  %40 = call i64 @regional_alloc(%struct.regional* %39, i32 32)
  %41 = inttoptr i64 %40 to %struct.rr_parse*
  store %struct.rr_parse* %41, %struct.rr_parse** %14, align 8
  %42 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %43 = icmp ne %struct.rr_parse* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %137

45:                                               ; preds = %38
  %46 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %47 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %49 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %52 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %54 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %57 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %98

58:                                               ; preds = %35
  %59 = load %struct.rr_parse*, %struct.rr_parse** %13, align 8
  %60 = icmp ne %struct.rr_parse* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %63 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %62, i32 0, i32 1
  %64 = load %struct.rr_parse*, %struct.rr_parse** %63, align 8
  %65 = load %struct.rr_parse*, %struct.rr_parse** %13, align 8
  %66 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %65, i32 0, i32 1
  store %struct.rr_parse* %64, %struct.rr_parse** %66, align 8
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %69 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %68, i32 0, i32 1
  %70 = load %struct.rr_parse*, %struct.rr_parse** %69, align 8
  %71 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %72 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %71, i32 0, i32 6
  store %struct.rr_parse* %70, %struct.rr_parse** %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %75 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %74, i32 0, i32 5
  %76 = load %struct.rr_parse*, %struct.rr_parse** %75, align 8
  %77 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %78 = icmp eq %struct.rr_parse* %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.rr_parse*, %struct.rr_parse** %13, align 8
  %81 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %82 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %81, i32 0, i32 5
  store %struct.rr_parse* %80, %struct.rr_parse** %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %85 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %89 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %92 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  %97 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  store %struct.rr_parse* %97, %struct.rr_parse** %14, align 8
  br label %98

98:                                               ; preds = %83, %45
  %99 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %100 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %104 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %103, i32 0, i32 1
  store %struct.rr_parse* null, %struct.rr_parse** %104, align 8
  %105 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %106 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %105, i32 0, i32 1
  %107 = load %struct.rr_parse*, %struct.rr_parse** %106, align 8
  %108 = icmp ne %struct.rr_parse* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %111 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %112 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %111, i32 0, i32 1
  %113 = load %struct.rr_parse*, %struct.rr_parse** %112, align 8
  %114 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %113, i32 0, i32 1
  store %struct.rr_parse* %110, %struct.rr_parse** %114, align 8
  br label %119

115:                                              ; preds = %98
  %116 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %117 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %118 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %117, i32 0, i32 2
  store %struct.rr_parse* %116, %struct.rr_parse** %118, align 8
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %121 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %122 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %121, i32 0, i32 1
  store %struct.rr_parse* %120, %struct.rr_parse** %122, align 8
  %123 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %124 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %127 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  br label %134

132:                                              ; preds = %22
  %133 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  store %struct.rr_parse* %133, %struct.rr_parse** %13, align 8
  br label %134

134:                                              ; preds = %132, %119
  %135 = load %struct.rr_parse*, %struct.rr_parse** %15, align 8
  store %struct.rr_parse* %135, %struct.rr_parse** %12, align 8
  br label %19

136:                                              ; preds = %19
  store i32 1, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %44
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @pkt_rrsig_covered_equals(i32*, i32, i32) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
