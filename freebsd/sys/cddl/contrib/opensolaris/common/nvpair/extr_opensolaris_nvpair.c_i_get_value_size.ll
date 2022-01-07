; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_i_get_value_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_i_get_value_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @i_get_value_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_get_value_size(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @i_validate_type_nelem(i32 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %160

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %150 [
    i32 154, label %18
    i32 152, label %19
    i32 151, label %20
    i32 141, label %21
    i32 129, label %22
    i32 147, label %23
    i32 135, label %24
    i32 145, label %25
    i32 133, label %26
    i32 143, label %27
    i32 131, label %28
    i32 149, label %29
    i32 137, label %30
    i32 153, label %39
    i32 150, label %45
    i32 140, label %51
    i32 128, label %57
    i32 146, label %63
    i32 134, label %69
    i32 144, label %75
    i32 132, label %81
    i32 142, label %87
    i32 130, label %93
    i32 136, label %99
    i32 148, label %135
    i32 139, label %136
    i32 138, label %138
  ]

18:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %151

19:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

20:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

21:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

22:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

23:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

24:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

25:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

26:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

27:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

28:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

29:                                               ; preds = %16
  store i32 8, i32* %8, align 4
  br label %151

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %33
  br label %151

39:                                               ; preds = %16
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  br label %151

45:                                               ; preds = %16
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %151

51:                                               ; preds = %16
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %151

57:                                               ; preds = %16
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %151

63:                                               ; preds = %16
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %151

69:                                               ; preds = %16
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  br label %151

75:                                               ; preds = %16
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  br label %151

81:                                               ; preds = %16
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %151

87:                                               ; preds = %16
  %88 = load i64, i64* %7, align 8
  %89 = trunc i64 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  br label %151

93:                                               ; preds = %16
  %94 = load i64, i64* %7, align 8
  %95 = trunc i64 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  br label %151

99:                                               ; preds = %16
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %134

107:                                              ; preds = %99
  %108 = load i8*, i8** %6, align 8
  %109 = bitcast i8* %108 to i8**
  store i8** %109, i8*** %9, align 8
  store i64 0, i64* %10, align 8
  br label %110

110:                                              ; preds = %130, %107
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load i8**, i8*** %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %160

121:                                              ; preds = %114
  %122 = load i8**, i8*** %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  br label %110

133:                                              ; preds = %110
  br label %134

134:                                              ; preds = %133, %99
  br label %151

135:                                              ; preds = %16
  store i32 4, i32* %8, align 4
  br label %151

136:                                              ; preds = %16
  %137 = call i32 @NV_ALIGN(i32 4)
  store i32 %137, i32* %8, align 4
  br label %151

138:                                              ; preds = %16
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = load i64, i64* %7, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @NV_ALIGN(i32 4)
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = add i64 %142, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %8, align 4
  br label %151

150:                                              ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %160

151:                                              ; preds = %138, %136, %135, %134, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %38, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @INT32_MAX, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ -1, %155 ], [ %157, %156 ]
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %150, %120, %15
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @i_validate_type_nelem(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NV_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
