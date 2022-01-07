; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_subnet_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_subnet_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"malformed subnet \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"trailingdata:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ip4ntoperror \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"family %d \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"/%d scope /%d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_edns_subnet_print(i8** %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [4 x i64], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [16 x i64], align 16
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %38

20:                                               ; preds = %4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %21, i64* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @print_hex_buf(i8** %28, i64* %29, i64* %30, i64 %31)
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %215

38:                                               ; preds = %4
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @sldns_read_uint16(i64* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %126

49:                                               ; preds = %38
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %51 = call i32 @memset(i64* %50, i32 0, i32 32)
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 4
  %54 = icmp ugt i64 %53, 4
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load i8**, i8*** %6, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %56, i64* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 4
  %67 = getelementptr inbounds i64, i64* %66, i64 4
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, 4
  %70 = sub i64 %69, 4
  %71 = call i64 @print_hex_buf(i8** %63, i64* %64, i64* %67, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load i8**, i8*** %6, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %76, i64* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  store i64 8, i64* %9, align 8
  br label %83

83:                                               ; preds = %55, %49
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 4
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, 4
  %89 = call i32 @memmove(i64* %84, i64* %86, i64 %88)
  %90 = load i32, i32* @AF_INET, align 4
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %93 = call i32 @inet_ntop(i32 %90, i64* %91, i8* %92, i32 64)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %83
  %96 = load i8**, i8*** %6, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %96, i64* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i8**, i8*** %6, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  %107 = getelementptr inbounds i64, i64* %106, i64 4
  %108 = load i64, i64* %9, align 8
  %109 = sub i64 %108, 4
  %110 = sub i64 %109, 4
  %111 = call i64 @print_hex_buf(i8** %103, i64* %104, i64* %107, i64 %110)
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  br label %125

116:                                              ; preds = %83
  %117 = load i8**, i8*** %6, align 8
  %118 = load i64*, i64** %7, align 8
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %120 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %117, i64* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %116, %95
  br label %202

126:                                              ; preds = %38
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %183

129:                                              ; preds = %126
  %130 = getelementptr inbounds [16 x i64], [16 x i64]* %17, i64 0, i64 0
  %131 = call i32 @memset(i64* %130, i32 0, i32 128)
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %132, 4
  %134 = icmp ugt i64 %133, 16
  br i1 %134, label %135, label %163

135:                                              ; preds = %129
  %136 = load i8**, i8*** %6, align 8
  %137 = load i64*, i64** %7, align 8
  %138 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %136, i64* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i8**, i8*** %6, align 8
  %144 = load i64*, i64** %7, align 8
  %145 = load i64*, i64** %8, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 4
  %147 = getelementptr inbounds i64, i64* %146, i64 16
  %148 = load i64, i64* %9, align 8
  %149 = sub i64 %148, 4
  %150 = sub i64 %149, 16
  %151 = call i64 @print_hex_buf(i8** %143, i64* %144, i64* %147, i64 %150)
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %10, align 4
  %156 = load i8**, i8*** %6, align 8
  %157 = load i64*, i64** %7, align 8
  %158 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %156, i64* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %10, align 4
  store i64 20, i64* %9, align 8
  br label %163

163:                                              ; preds = %135, %129
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* %17, i64 0, i64 0
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 4
  %167 = load i64, i64* %9, align 8
  %168 = sub i64 %167, 4
  %169 = call i32 @memmove(i64* %164, i64* %166, i64 %168)
  %170 = load i8**, i8*** %6, align 8
  %171 = load i64*, i64** %7, align 8
  %172 = load i64*, i64** %8, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 4
  %174 = getelementptr inbounds i64, i64* %173, i64 4
  %175 = load i64, i64* %9, align 8
  %176 = sub i64 %175, 4
  %177 = sub i64 %176, 4
  %178 = call i64 @print_hex_buf(i8** %170, i64* %171, i64* %174, i64 %177)
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %10, align 4
  br label %201

183:                                              ; preds = %126
  %184 = load i8**, i8*** %6, align 8
  %185 = load i64*, i64** %7, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %184, i64* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %10, align 4
  %192 = load i8**, i8*** %6, align 8
  %193 = load i64*, i64** %7, align 8
  %194 = load i64*, i64** %8, align 8
  %195 = load i64, i64* %9, align 8
  %196 = call i64 @print_hex_buf(i8** %192, i64* %193, i64* %194, i64 %195)
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %183, %163
  br label %202

202:                                              ; preds = %201, %125
  %203 = load i8**, i8*** %6, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %12, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i64, i64* %13, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %203, i64* %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %208)
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %202, %20
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i64*, i64) #1

declare dso_local i32 @sldns_read_uint16(i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @inet_ntop(i32, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
