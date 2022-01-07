; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_grcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_grcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8**, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.group* (%struct.group*, i8*, i8*, i32)* @grcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.group* @grcopy(%struct.group* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.group*, align 8
  store %struct.group* %0, %struct.group** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.group*
  store %struct.group* %12, %struct.group** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 32
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i8**
  %20 = load %struct.group*, %struct.group** %10, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 0
  store i8** %19, i8*** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %6, align 8
  br label %31

28:                                               ; preds = %4
  %29 = load %struct.group*, %struct.group** %10, align 8
  %30 = getelementptr inbounds %struct.group, %struct.group* %29, i32 0, i32 0
  store i8** null, i8*** %30, align 8
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.group*, %struct.group** %5, align 8
  %33 = getelementptr inbounds %struct.group, %struct.group* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.group*, %struct.group** %10, align 8
  %39 = getelementptr inbounds %struct.group, %struct.group* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.group*, %struct.group** %5, align 8
  %42 = getelementptr inbounds %struct.group, %struct.group* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @stpcpy(i8* %40, i8* %43)
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %6, align 8
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.group*, %struct.group** %10, align 8
  %48 = getelementptr inbounds %struct.group, %struct.group* %47, i32 0, i32 1
  store i8* null, i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %36
  %50 = load %struct.group*, %struct.group** %5, align 8
  %51 = getelementptr inbounds %struct.group, %struct.group* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.group*, %struct.group** %10, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.group*, %struct.group** %5, align 8
  %60 = getelementptr inbounds %struct.group, %struct.group* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @stpcpy(i8* %58, i8* %61)
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %6, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.group*, %struct.group** %10, align 8
  %66 = getelementptr inbounds %struct.group, %struct.group* %65, i32 0, i32 2
  store i8* null, i8** %66, align 8
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.group*, %struct.group** %5, align 8
  %69 = getelementptr inbounds %struct.group, %struct.group* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.group*, %struct.group** %10, align 8
  %72 = getelementptr inbounds %struct.group, %struct.group* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %9, align 4
  %73 = load %struct.group*, %struct.group** %5, align 8
  %74 = getelementptr inbounds %struct.group, %struct.group* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %105, %77
  %79 = load %struct.group*, %struct.group** %5, align 8
  %80 = getelementptr inbounds %struct.group, %struct.group* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %78
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.group*, %struct.group** %10, align 8
  %90 = getelementptr inbounds %struct.group, %struct.group* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.group*, %struct.group** %5, align 8
  %97 = getelementptr inbounds %struct.group, %struct.group* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @stpcpy(i8* %95, i8* %102)
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %6, align 8
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %78

108:                                              ; preds = %78
  br label %109

109:                                              ; preds = %108, %67
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.group*, %struct.group** %10, align 8
  %115 = getelementptr inbounds %struct.group, %struct.group* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  store i8* %113, i8** %120, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i8* @stpcpy(i8* %121, i8* %122)
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %6, align 8
  br label %125

125:                                              ; preds = %112, %109
  %126 = load %struct.group*, %struct.group** %10, align 8
  %127 = getelementptr inbounds %struct.group, %struct.group* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = icmp ne i8** %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.group*, %struct.group** %10, align 8
  %132 = getelementptr inbounds %struct.group, %struct.group* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* null, i8** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.group*, %struct.group** %10, align 8
  ret %struct.group* %138
}

declare dso_local i8* @stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
