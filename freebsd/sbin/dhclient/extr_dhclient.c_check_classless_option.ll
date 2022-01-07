; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_classless_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_classless_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Too small length: %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Incorrect subnet width: %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Incorrect data length: %d (must be %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_classless_option(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %194

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %182, %30, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %185

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %7, align 1
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %6, align 4
  br label %16

33:                                               ; preds = %20
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 24
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %149

47:                                               ; preds = %33
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 17
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 24
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 16
  %67 = add nsw i32 %58, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %6, align 4
  br label %148

70:                                               ; preds = %47
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 25
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 24
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 16
  %90 = add nsw i32 %81, %89
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 8
  %99 = add nsw i32 %90, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 3
  store i32 %101, i32* %6, align 4
  br label %147

102:                                              ; preds = %70
  %103 = load i8, i8* %7, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %104, 33
  br i1 %105, label %106, label %142

106:                                              ; preds = %102
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 24
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 16
  %122 = add nsw i32 %113, %121
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 8
  %131 = add nsw i32 %122, %130
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nsw i32 %131, %138
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %6, align 4
  br label %146

142:                                              ; preds = %102
  %143 = load i8, i8* %7, align 1
  %144 = zext i8 %143 to i32
  %145 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  store i32 0, i32* %3, align 4
  br label %194

146:                                              ; preds = %106
  br label %147

147:                                              ; preds = %146, %74
  br label %148

148:                                              ; preds = %147, %51
  br label %149

149:                                              ; preds = %148, %37
  br label %150

150:                                              ; preds = %149
  %151 = load i8, i8* %7, align 1
  %152 = zext i8 %151 to i32
  %153 = sub nsw i32 32, %152
  %154 = shl i32 -1, %153
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @ntohl(i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ntohl(i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %150
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i8, i8* %7, align 1
  %170 = zext i8 %169 to i32
  %171 = sub nsw i32 32, %170
  %172 = sdiv i32 %171, 8
  %173 = mul nsw i32 %172, 8
  %174 = ashr i32 %168, %173
  %175 = and i32 %174, 255
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8 %176, i8* %181, align 1
  br label %182

182:                                              ; preds = %164, %150
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 4
  store i32 %184, i32* %6, align 4
  br label %16

185:                                              ; preds = %16
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %191)
  store i32 0, i32* %3, align 4
  br label %194

193:                                              ; preds = %185
  store i32 1, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %189, %142, %12
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
