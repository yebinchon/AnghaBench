; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_check_qname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_check_qname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMPRESS_PTRS = common dso_local global i32 0, align 4
@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64)* @serviced_check_qname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serviced_check_qname(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64* @sldns_buffer_begin(i32* %13)
  %15 = getelementptr inbounds i64, i64* %14, i64 12
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 10
  store i64* %17, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sldns_buffer_limit(i32* %18)
  %20 = icmp slt i32 %19, 17
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %147

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %23, 15
  %25 = zext i1 %24 to i32
  %26 = call i32 @log_assert(i32 %25)
  %27 = load i64*, i64** %8, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %8, align 8
  %29 = load i64, i64* %27, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %9, align 8
  %32 = load i64, i64* %30, align 8
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %133, %78, %22
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %146

41:                                               ; preds = %39
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @LABEL_IS_PTR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load i64*, i64** %8, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sldns_buffer_limit(i32* %48)
  %50 = call i64* @sldns_buffer_at(i32* %47, i32 %49)
  %51 = icmp uge i64* %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %147

53:                                               ; preds = %45
  %54 = load i32*, i32** %5, align 8
  %55 = call i64* @sldns_buffer_begin(i32* %54)
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PTR_OFFSET(i64 %56, i64 %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  store i64* %61, i64** %8, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @sldns_buffer_limit(i32* %64)
  %66 = call i64* @sldns_buffer_at(i32* %63, i32 %65)
  %67 = icmp uge i64* %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %147

69:                                               ; preds = %53
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %8, align 8
  %72 = load i64, i64* %70, align 8
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* @MAX_COMPRESS_PTRS, align 4
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %147

78:                                               ; preds = %69
  br label %33

79:                                               ; preds = %41
  %80 = load i64*, i64** %9, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = icmp ugt i64* %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %147

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %147

91:                                               ; preds = %86
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %147

96:                                               ; preds = %91
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @sldns_buffer_limit(i32* %101)
  %103 = call i64* @sldns_buffer_at(i32* %100, i32 %102)
  %104 = icmp uge i64* %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %147

106:                                              ; preds = %96
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %109 = icmp sle i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @log_assert(i32 %110)
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %114 = icmp sle i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @log_assert(i32 %115)
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load i64, i64* %10, align 8
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %120, %106
  %124 = phi i1 [ false, %106 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @log_assert(i32 %125)
  %127 = load i64*, i64** %8, align 8
  %128 = load i64*, i64** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @memcmp(i64* %127, i64* %128, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %147

133:                                              ; preds = %123
  %134 = load i64, i64* %10, align 8
  %135 = load i64*, i64** %8, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 %134
  store i64* %136, i64** %8, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i64*, i64** %9, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 %137
  store i64* %139, i64** %9, align 8
  %140 = load i64*, i64** %8, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %8, align 8
  %142 = load i64, i64* %140, align 8
  store i64 %142, i64* %10, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %9, align 8
  %145 = load i64, i64* %143, align 8
  store i64 %145, i64* %11, align 8
  br label %33

146:                                              ; preds = %39
  store i32 1, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %132, %105, %95, %90, %85, %77, %68, %52, %21
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64* @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @LABEL_IS_PTR(i64) #1

declare dso_local i64* @sldns_buffer_at(i32*, i32) #1

declare dso_local i32 @PTR_OFFSET(i64, i64) #1

declare dso_local i64 @memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
