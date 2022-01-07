; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strfmon.c___setup_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strfmon.c___setup_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8, i8, i8, i8*, i8, i8, i8, i8*, i8, i8, i8, i8, i8, i8 }

@IS_NEGATIVE = common dso_local global i32 0, align 4
@USE_INTL_CURRENCY = common dso_local global i32 0, align 4
@PARENTH_POSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@CHAR_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8**)* @__setup_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_vars(i32 %0, i8* %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.lconv*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %12, %struct.lconv** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IS_NEGATIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @USE_INTL_CURRENCY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load %struct.lconv*, %struct.lconv** %11, align 8
  %24 = getelementptr inbounds %struct.lconv, %struct.lconv* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = load i8*, i8** %7, align 8
  store i8 %25, i8* %26, align 1
  %27 = load %struct.lconv*, %struct.lconv** %11, align 8
  %28 = getelementptr inbounds %struct.lconv, %struct.lconv* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %8, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PARENTH_POSN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %41

36:                                               ; preds = %22
  %37 = load %struct.lconv*, %struct.lconv** %11, align 8
  %38 = getelementptr inbounds %struct.lconv, %struct.lconv* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 2
  %40 = sext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %35
  %42 = phi i32 [ 0, %35 ], [ %40, %36 ]
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %9, align 8
  store i8 %43, i8* %44, align 1
  %45 = load %struct.lconv*, %struct.lconv** %11, align 8
  %46 = getelementptr inbounds %struct.lconv, %struct.lconv* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.lconv*, %struct.lconv** %11, align 8
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %52 ], [ %56, %53 ]
  %59 = load i8**, i8*** %10, align 8
  store i8* %58, i8** %59, align 8
  br label %164

60:                                               ; preds = %17, %5
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @USE_INTL_CURRENCY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load %struct.lconv*, %struct.lconv** %11, align 8
  %67 = getelementptr inbounds %struct.lconv, %struct.lconv* %66, i32 0, i32 4
  %68 = load i8, i8* %67, align 8
  %69 = load i8*, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  %70 = load %struct.lconv*, %struct.lconv** %11, align 8
  %71 = getelementptr inbounds %struct.lconv, %struct.lconv* %70, i32 0, i32 5
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %8, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PARENTH_POSN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %84

79:                                               ; preds = %65
  %80 = load %struct.lconv*, %struct.lconv** %11, align 8
  %81 = getelementptr inbounds %struct.lconv, %struct.lconv* %80, i32 0, i32 6
  %82 = load i8, i8* %81, align 2
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %79, %78
  %85 = phi i32 [ 0, %78 ], [ %83, %79 ]
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %9, align 8
  store i8 %86, i8* %87, align 1
  %88 = load %struct.lconv*, %struct.lconv** %11, align 8
  %89 = getelementptr inbounds %struct.lconv, %struct.lconv* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  br label %163

92:                                               ; preds = %60
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @IS_NEGATIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %92
  %98 = load %struct.lconv*, %struct.lconv** %11, align 8
  %99 = getelementptr inbounds %struct.lconv, %struct.lconv* %98, i32 0, i32 8
  %100 = load i8, i8* %99, align 8
  %101 = load i8*, i8** %7, align 8
  store i8 %100, i8* %101, align 1
  %102 = load %struct.lconv*, %struct.lconv** %11, align 8
  %103 = getelementptr inbounds %struct.lconv, %struct.lconv* %102, i32 0, i32 9
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %8, align 8
  store i8 %104, i8* %105, align 1
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @PARENTH_POSN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %116

111:                                              ; preds = %97
  %112 = load %struct.lconv*, %struct.lconv** %11, align 8
  %113 = getelementptr inbounds %struct.lconv, %struct.lconv* %112, i32 0, i32 10
  %114 = load i8, i8* %113, align 2
  %115 = sext i8 %114 to i32
  br label %116

116:                                              ; preds = %111, %110
  %117 = phi i32 [ 0, %110 ], [ %115, %111 ]
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %9, align 8
  store i8 %118, i8* %119, align 1
  %120 = load %struct.lconv*, %struct.lconv** %11, align 8
  %121 = getelementptr inbounds %struct.lconv, %struct.lconv* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %132

128:                                              ; preds = %116
  %129 = load %struct.lconv*, %struct.lconv** %11, align 8
  %130 = getelementptr inbounds %struct.lconv, %struct.lconv* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  br label %132

132:                                              ; preds = %128, %127
  %133 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %127 ], [ %131, %128 ]
  %134 = load i8**, i8*** %10, align 8
  store i8* %133, i8** %134, align 8
  br label %162

135:                                              ; preds = %92
  %136 = load %struct.lconv*, %struct.lconv** %11, align 8
  %137 = getelementptr inbounds %struct.lconv, %struct.lconv* %136, i32 0, i32 11
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %7, align 8
  store i8 %138, i8* %139, align 1
  %140 = load %struct.lconv*, %struct.lconv** %11, align 8
  %141 = getelementptr inbounds %struct.lconv, %struct.lconv* %140, i32 0, i32 12
  %142 = load i8, i8* %141, align 4
  %143 = load i8*, i8** %8, align 8
  store i8 %142, i8* %143, align 1
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @PARENTH_POSN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %154

149:                                              ; preds = %135
  %150 = load %struct.lconv*, %struct.lconv** %11, align 8
  %151 = getelementptr inbounds %struct.lconv, %struct.lconv* %150, i32 0, i32 13
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  br label %154

154:                                              ; preds = %149, %148
  %155 = phi i32 [ 0, %148 ], [ %153, %149 ]
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %9, align 8
  store i8 %156, i8* %157, align 1
  %158 = load %struct.lconv*, %struct.lconv** %11, align 8
  %159 = getelementptr inbounds %struct.lconv, %struct.lconv* %158, i32 0, i32 7
  %160 = load i8*, i8** %159, align 8
  %161 = load i8**, i8*** %10, align 8
  store i8* %160, i8** %161, align 8
  br label %162

162:                                              ; preds = %154, %132
  br label %163

163:                                              ; preds = %162, %84
  br label %164

164:                                              ; preds = %163, %57
  %165 = load i8*, i8** %7, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i8*, i8** %7, align 8
  store i8 1, i8* %170, align 1
  br label %171

171:                                              ; preds = %169, %164
  %172 = load i8*, i8** %8, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load i8, i8* @CHAR_MAX, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i8*, i8** %8, align 8
  store i8 0, i8* %179, align 1
  br label %180

180:                                              ; preds = %178, %171
  %181 = load i8*, i8** %9, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* @CHAR_MAX, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i8*, i8** %9, align 8
  store i8 0, i8* %188, align 1
  br label %189

189:                                              ; preds = %187, %180
  ret void
}

declare dso_local %struct.lconv* @localeconv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
