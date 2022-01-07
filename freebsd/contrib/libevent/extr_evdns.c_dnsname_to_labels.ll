; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_dnsname_to_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_dnsname_to_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnslabel_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, i8*, i64, %struct.dnslabel_table*)* @dnsname_to_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnsname_to_labels(i64* %0, i64 %1, i32 %2, i8* %3, i64 %4, %struct.dnslabel_table* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dnslabel_table*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.dnslabel_table* %5, %struct.dnslabel_table** %13, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ugt i64 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -2, i32* %7, align 4
  br label %174

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %153, %26
  %28 = load i8*, i8** %11, align 8
  store i8* %28, i8** %17, align 8
  %29 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %30 = icmp ne %struct.dnslabel_table* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @dnslabel_table_get_pos(%struct.dnslabel_table* %32, i8* %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %173

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  %46 = or i32 %45, 49152
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @htons to i32 (i32, ...)*)(i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = bitcast i32* %16 to i8*
  %53 = call i32 @memcpy(i64* %51, i8* %52, i64 2)
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %7, align 4
  br label %174

58:                                               ; preds = %31, %27
  %59 = load i8*, i8** %11, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 46)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %107, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp ugt i64 %69, 63
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 -1, i32* %7, align 4
  br label %174

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %18, align 8
  %76 = add i64 %74, %75
  %77 = add i64 %76, 1
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -2, i32* %7, align 4
  br label %174

81:                                               ; preds = %72
  %82 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %83 = icmp ne %struct.dnslabel_table* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dnslabel_table_add(%struct.dnslabel_table* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i64, i64* %18, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %90, i64* %95, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i8*, i8** %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call i32 @memcpy(i64* %99, i8* %100, i64 %101)
  %103 = load i64, i64* %18, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %154

107:                                              ; preds = %58
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %19, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp ugt i64 %113, 63
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 -1, i32* %7, align 4
  br label %174

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %19, align 8
  %120 = add i64 %118, %119
  %121 = add i64 %120, 1
  %122 = load i64, i64* %9, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 -2, i32* %7, align 4
  br label %174

125:                                              ; preds = %116
  %126 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %127 = icmp ne %struct.dnslabel_table* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.dnslabel_table*, %struct.dnslabel_table** %13, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @dnslabel_table_add(%struct.dnslabel_table* %129, i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i64, i64* %19, align 8
  %135 = load i64*, i64** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = load i64*, i64** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i8*, i8** %17, align 8
  %145 = load i64, i64* %19, align 8
  %146 = call i32 @memcpy(i64* %143, i8* %144, i64 %145)
  %147 = load i64, i64* %19, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %11, align 8
  br label %153

153:                                              ; preds = %133
  br label %27

154:                                              ; preds = %89
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i64*, i64** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %157, %154
  %166 = load i64*, i64** %8, align 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %157
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %7, align 4
  br label %174

173:                                              ; preds = %43
  store i32 -2, i32* %7, align 4
  br label %174

174:                                              ; preds = %173, %171, %124, %115, %80, %71, %56, %25
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i32 @dnslabel_table_get_pos(%struct.dnslabel_table*, i8*) #1

declare dso_local i32 @htons(...) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dnslabel_table_add(%struct.dnslabel_table*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
