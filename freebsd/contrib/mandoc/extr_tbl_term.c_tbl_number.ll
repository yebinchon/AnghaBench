; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.tbl_opts = type { i8 }
%struct.tbl_dat = type { i8* }
%struct.roffcol = type { i64, i64 }

@ASCII_NBRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.tbl_opts*, %struct.tbl_dat*, %struct.roffcol*)* @tbl_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_number(%struct.termp* %0, %struct.tbl_opts* %1, %struct.tbl_dat* %2, %struct.roffcol* %3) #0 {
  %5 = alloca %struct.termp*, align 8
  %6 = alloca %struct.tbl_opts*, align 8
  %7 = alloca %struct.tbl_dat*, align 8
  %8 = alloca %struct.roffcol*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x i8], align 1
  store %struct.termp* %0, %struct.termp** %5, align 8
  store %struct.tbl_opts* %1, %struct.tbl_opts** %6, align 8
  store %struct.tbl_dat* %2, %struct.tbl_dat** %7, align 8
  store %struct.roffcol* %3, %struct.roffcol** %8, align 8
  %16 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %17 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @assert(i8* %18)
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %20 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %21 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %84, %4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 38
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %11, align 8
  store i8* %42, i8** %10, align 8
  br label %87

43:                                               ; preds = %35, %29
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load %struct.tbl_opts*, %struct.tbl_opts** %6, align 8
  %49 = getelementptr inbounds %struct.tbl_opts, %struct.tbl_opts* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isdigit(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %62 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ugt i8* %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isdigit(i8 zeroext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %53
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %11, align 8
  br label %82

73:                                               ; preds = %65, %59, %43
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  br label %23

87:                                               ; preds = %41, %23
  store i64 0, i64* %13, align 8
  %88 = load %struct.termp*, %struct.termp** %5, align 8
  %89 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %90 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @term_strlen(%struct.termp* %88, i8* %91)
  store i64 %92, i64* %14, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %156

95:                                               ; preds = %87
  %96 = load i8*, i8** %11, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %11, align 8
  br label %101

101:                                              ; preds = %98, %95
  store i64 0, i64* %12, align 8
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 0, i8* %102, align 1
  %103 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %104 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %120, %101
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ult i8* %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %113, i8* %114, align 1
  %115 = load %struct.termp*, %struct.termp** %5, align 8
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %117 = call i64 @term_strlen(%struct.termp* %115, i8* %116)
  %118 = load i64, i64* %12, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %110
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  br label %106

123:                                              ; preds = %106
  %124 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %125 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %131 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %137 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub i64 %138, %139
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = add i64 %141, %142
  %144 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %145 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %135
  %149 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %150 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %14, align 8
  %153 = sub i64 %151, %152
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %148, %135
  br label %155

155:                                              ; preds = %154, %129, %123
  br label %170

156:                                              ; preds = %87
  %157 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %158 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %14, align 8
  %161 = icmp ugt i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %164 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %14, align 8
  %167 = sub i64 %165, %166
  %168 = udiv i64 %167, 2
  store i64 %168, i64* %13, align 8
  br label %169

169:                                              ; preds = %162, %156
  br label %170

170:                                              ; preds = %169, %155
  %171 = load %struct.termp*, %struct.termp** %5, align 8
  %172 = load i32, i32* @ASCII_NBRSP, align 4
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @tbl_fill_char(%struct.termp* %171, i32 %172, i64 %173)
  %175 = load %struct.termp*, %struct.termp** %5, align 8
  %176 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %177 = call i32 @tbl_word(%struct.termp* %175, %struct.tbl_dat* %176)
  %178 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %179 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %181, %182
  %184 = icmp ugt i64 %180, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %170
  %186 = load %struct.termp*, %struct.termp** %5, align 8
  %187 = load i32, i32* @ASCII_NBRSP, align 4
  %188 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %189 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = sub i64 %190, %191
  %193 = load i64, i64* %14, align 8
  %194 = sub i64 %192, %193
  %195 = call i32 @tbl_fill_char(%struct.termp* %186, i32 %187, i64 %194)
  br label %196

196:                                              ; preds = %185, %170
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @term_strlen(%struct.termp*, i8*) #1

declare dso_local i32 @tbl_fill_char(%struct.termp*, i32, i64) #1

declare dso_local i32 @tbl_word(%struct.termp*, %struct.tbl_dat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
