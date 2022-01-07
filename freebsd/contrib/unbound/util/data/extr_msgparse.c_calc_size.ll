; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_calc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_parse = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.rr_parse*)* @calc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_size(i32* %0, i64 %1, %struct.rr_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rr_parse*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rr_parse* %2, %struct.rr_parse** %7, align 8
  %14 = load %struct.rr_parse*, %struct.rr_parse** %7, align 8
  %15 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %14, i32 0, i32 0
  store i32 8, i32* %15, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sldns_buffer_skip(i32* %16, i32 4)
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @sldns_buffer_read_u16(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @sldns_buffer_remaining(i32* %20)
  %22 = load i64, i64* %9, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %137

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %137

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %137

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %133, %38
  %44 = load i64, i64* %9, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %51, label %136

51:                                               ; preds = %49
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %101 [
    i32 129, label %59
    i32 128, label %90
  ]

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @sldns_buffer_position(i32* %60)
  store i64 %61, i64* %13, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @pkt_dname_len(i32* %62)
  store i64 %63, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %149

66:                                               ; preds = %59
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @sldns_buffer_position(i32* %67)
  %69 = load i64, i64* %13, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %149

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @sldns_buffer_position(i32* %75)
  %77 = load i64, i64* %13, align 8
  %78 = sub i64 %76, %77
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.rr_parse*, %struct.rr_parse** %7, align 8
  %83 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %110

90:                                               ; preds = %51
  %91 = load i64, i64* %9, align 8
  %92 = icmp slt i64 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %149

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = call i32* @sldns_buffer_current(i32* %95)
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %12, align 8
  br label %110

101:                                              ; preds = %51
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @get_rdf_size(i32 %108)
  store i64 %109, i64* %12, align 8
  br label %110

110:                                              ; preds = %101, %94, %74
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %149

118:                                              ; preds = %113
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i64, i64* %12, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @sldns_buffer_skip(i32* %122, i32 %124)
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.rr_parse*, %struct.rr_parse** %7, align 8
  %128 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  br label %133

133:                                              ; preds = %118, %110
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %43

136:                                              ; preds = %49
  br label %137

137:                                              ; preds = %136, %33, %30, %25
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.rr_parse*, %struct.rr_parse** %7, align 8
  %140 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i64, i64* %9, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @sldns_buffer_skip(i32* %145, i32 %147)
  store i32 1, i32* %4, align 4
  br label %149

149:                                              ; preds = %137, %117, %93, %73, %65, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local %struct.TYPE_3__* @sldns_rr_descript(i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i32* @sldns_buffer_current(i32*) #1

declare dso_local i64 @get_rdf_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
