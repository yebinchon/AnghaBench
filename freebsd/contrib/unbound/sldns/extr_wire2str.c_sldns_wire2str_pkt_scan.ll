; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c";; QUESTION SECTION:\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c";; ANSWER SECTION:\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c";; AUTHORITY SECTION:\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c";; ADDITIONAL SECTION:\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c";; MSG SIZE  rcvd: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c";; trailing garbage 0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_pkt_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %4
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @LDNS_QDCOUNT(i32* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @LDNS_ANCOUNT(i32* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @LDNS_NSCOUNT(i32* %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @LDNS_ARCOUNT(i32* %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  br label %43

42:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32**, i32*** %5, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = call i64 @sldns_wire2str_header_scan(i32** %44, i64* %45, i8** %46, i64* %47)
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i8**, i8*** %7, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %53, i64* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i8**, i8*** %7, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %60, i64* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %88, %43
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32**, i32*** %5, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call i64 @sldns_wire2str_rrquestion_scan(i32** %72, i64* %73, i8** %74, i64* %75, i32* %76, i64 %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i64*, i64** %6, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %71
  br label %91

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %67

91:                                               ; preds = %86, %67
  %92 = load i8**, i8*** %7, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %92, i64* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %99, i64* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %127, %91
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i32**, i32*** %5, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i8**, i8*** %7, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i64 @sldns_wire2str_rr_scan(i32** %111, i64* %112, i8** %113, i64* %114, i32* %115, i64 %116)
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i64*, i64** %6, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  br label %130

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %106

130:                                              ; preds = %125, %106
  %131 = load i8**, i8*** %7, align 8
  %132 = load i64*, i64** %8, align 8
  %133 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %131, i64* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = load i8**, i8*** %7, align 8
  %139 = load i64*, i64** %8, align 8
  %140 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %138, i64* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %145

145:                                              ; preds = %166, %130
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load i32**, i32*** %5, align 8
  %151 = load i64*, i64** %6, align 8
  %152 = load i8**, i8*** %7, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = call i64 @sldns_wire2str_rr_scan(i32** %150, i64* %151, i8** %152, i64* %153, i32* %154, i64 %155)
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %9, align 4
  %161 = load i64*, i64** %6, align 8
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %149
  br label %169

165:                                              ; preds = %149
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %145

169:                                              ; preds = %164, %145
  %170 = load i8**, i8*** %7, align 8
  %171 = load i64*, i64** %8, align 8
  %172 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %170, i64* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %9, align 4
  %177 = load i8**, i8*** %7, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %177, i64* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %205, %169
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %184
  %189 = load i32**, i32*** %5, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = load i8**, i8*** %7, align 8
  %192 = load i64*, i64** %8, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = load i64, i64* %16, align 8
  %195 = call i64 @sldns_wire2str_rr_scan(i32** %189, i64* %190, i8** %191, i64* %192, i32* %193, i64 %194)
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %9, align 4
  %200 = load i64*, i64** %6, align 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %188
  br label %208

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %14, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %184

208:                                              ; preds = %203, %184
  %209 = load i8**, i8*** %7, align 8
  %210 = load i64*, i64** %8, align 8
  %211 = load i64, i64* %16, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %209, i64* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %9, align 4
  %218 = load i64*, i64** %6, align 8
  %219 = load i64, i64* %218, align 8
  %220 = icmp ugt i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %208
  %222 = load i32**, i32*** %5, align 8
  %223 = load i64*, i64** %6, align 8
  %224 = load i8**, i8*** %7, align 8
  %225 = load i64*, i64** %8, align 8
  %226 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32** %222, i64* %223, i8** %224, i64* %225)
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %9, align 4
  %231 = load i8**, i8*** %7, align 8
  %232 = load i64*, i64** %8, align 8
  %233 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %231, i64* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %9, align 4
  br label %238

238:                                              ; preds = %221, %208
  %239 = load i32, i32* %9, align 4
  ret i32 %239
}

declare dso_local i64 @LDNS_QDCOUNT(i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32*) #1

declare dso_local i64 @LDNS_NSCOUNT(i32*) #1

declare dso_local i64 @LDNS_ARCOUNT(i32*) #1

declare dso_local i64 @sldns_wire2str_header_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_wire2str_rrquestion_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i64 @sldns_wire2str_rr_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i64 @print_remainder_hex(i8*, i32**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
