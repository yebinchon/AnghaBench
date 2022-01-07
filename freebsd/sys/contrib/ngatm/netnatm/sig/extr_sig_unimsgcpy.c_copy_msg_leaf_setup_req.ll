; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_leaf_setup_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_leaf_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_leaf_setup_req = type { i32, i32, i32, i32*, i32, i32*, i32, i32* }

@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_leaf_setup_req(%struct.uni_leaf_setup_req* %0, %struct.uni_leaf_setup_req* %1) #0 {
  %3 = alloca %struct.uni_leaf_setup_req*, align 8
  %4 = alloca %struct.uni_leaf_setup_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_leaf_setup_req* %0, %struct.uni_leaf_setup_req** %3, align 8
  store %struct.uni_leaf_setup_req* %1, %struct.uni_leaf_setup_req** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %13 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IE_ISGOOD(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %22 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %28 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %20, %11
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %39 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IE_ISGOOD(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %45 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %48 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %56 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IE_ISGOOD(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %65 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %71 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %63, %54
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %50

80:                                               ; preds = %50
  %81 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %82 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IE_ISGOOD(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %88 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %91 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %80
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %93

93:                                               ; preds = %120, %92
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  %98 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %99 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IE_ISGOOD(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %108 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %114 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %6, align 8
  %118 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %106, %97
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %5, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %5, align 8
  br label %93

123:                                              ; preds = %93
  %124 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %125 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @IE_ISGOOD(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %131 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %134 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %137 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @IE_ISGOOD(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %143 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %146 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %149 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @IE_ISGOOD(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %155 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %4, align 8
  %158 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %153, %147
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
