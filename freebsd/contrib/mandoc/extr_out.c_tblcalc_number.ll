; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rofftbl = type { i64 (i8*, i32)*, i32 }
%struct.roffcol = type { i64, i64, i64 }
%struct.tbl_opts = type { i8 }
%struct.tbl_dat = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rofftbl*, %struct.roffcol*, %struct.tbl_opts*, %struct.tbl_dat*)* @tblcalc_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tblcalc_number(%struct.rofftbl* %0, %struct.roffcol* %1, %struct.tbl_opts* %2, %struct.tbl_dat* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.rofftbl*, align 8
  %7 = alloca %struct.roffcol*, align 8
  %8 = alloca %struct.tbl_opts*, align 8
  %9 = alloca %struct.tbl_dat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x i8], align 1
  store %struct.rofftbl* %0, %struct.rofftbl** %6, align 8
  store %struct.roffcol* %1, %struct.roffcol** %7, align 8
  store %struct.tbl_opts* %2, %struct.tbl_opts** %8, align 8
  store %struct.tbl_dat* %3, %struct.tbl_dat** %9, align 8
  %16 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %17 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %22 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %4
  store i64 0, i64* %5, align 8
  br label %201

28:                                               ; preds = %20
  %29 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %30 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %29, i32 0, i32 0
  %31 = load i64 (i8*, i32)*, i64 (i8*, i32)** %30, align 8
  %32 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %33 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %36 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 %31(i8* %34, i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %40 = icmp eq %struct.roffcol* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %5, align 8
  br label %201

43:                                               ; preds = %28
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %44 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %45 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %108, %43
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 38
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  store i8* %66, i8** %12, align 8
  store i8* %66, i8** %11, align 8
  br label %111

67:                                               ; preds = %59, %53
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load %struct.tbl_opts*, %struct.tbl_opts** %8, align 8
  %73 = getelementptr inbounds %struct.tbl_opts, %struct.tbl_opts* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %67
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isdigit(i8 zeroext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %86 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ugt i8* %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 -1
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isdigit(i8 zeroext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %77
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %12, align 8
  br label %106

97:                                               ; preds = %89, %83, %67
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @isdigit(i8 zeroext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** %11, align 8
  br label %105

105:                                              ; preds = %103, %97
  br label %106

106:                                              ; preds = %105, %95
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  br label %47

111:                                              ; preds = %65, %47
  %112 = load i8*, i8** %11, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %116 = icmp ne %struct.roffcol* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %119 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %126 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117, %114
  %128 = load i64, i64* %14, align 8
  store i64 %128, i64* %5, align 8
  br label %201

129:                                              ; preds = %111
  %130 = load i8*, i8** %12, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8* %134, i8** %12, align 8
  br label %135

135:                                              ; preds = %132, %129
  store i64 0, i64* %13, align 8
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 0, i8* %136, align 1
  %137 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %138 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %10, align 8
  br label %140

140:                                              ; preds = %159, %135
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %147, i8* %148, align 1
  %149 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %150 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %149, i32 0, i32 0
  %151 = load i64 (i8*, i32)*, i64 (i8*, i32)** %150, align 8
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %153 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %154 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 %151(i8* %152, i32 %155)
  %157 = load i64, i64* %13, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %13, align 8
  br label %159

159:                                              ; preds = %144
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %10, align 8
  br label %140

162:                                              ; preds = %140
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %165 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ugt i64 %163, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %171 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sub i64 %169, %172
  %174 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %175 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %180 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %189

181:                                              ; preds = %162
  %182 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %183 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %13, align 8
  %186 = sub i64 %184, %185
  %187 = load i64, i64* %14, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %14, align 8
  br label %189

189:                                              ; preds = %181, %168
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %192 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ugt i64 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i64, i64* %14, align 8
  %197 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %198 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i64, i64* %14, align 8
  store i64 %200, i64* %5, align 8
  br label %201

201:                                              ; preds = %199, %127, %41, %27
  %202 = load i64, i64* %5, align 8
  ret i64 %202
}

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
