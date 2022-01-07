; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"; EDNS:\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error malformed 0x\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error nonrootdname 0x\00", align 1
@LDNS_RR_TYPE_OPT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Error nottypeOPT 0x\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" version: %u;\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" flags:\00", align 1
@LDNS_EDNS_MASK_DO_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" do\00", align 1
@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c" ; ext-rcode: %d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" ; udp: %u\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" ; Error EDNS rdata too short; \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_edns_scan(i64** %0, i64* %1, i8** %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64** %0, i64*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %21, i64* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 11
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  %33 = load i64**, i64*** %8, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64** %33, i64* %34, i8** %35, i64* %36)
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %7, align 4
  br label %216

39:                                               ; preds = %6
  %40 = load i64**, i64*** %8, align 8
  %41 = getelementptr inbounds i64*, i64** %40, i64 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = load i64**, i64*** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i8**, i8*** %10, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64** %47, i64* %48, i8** %49, i64* %50)
  %52 = add nsw i32 %46, %51
  store i32 %52, i32* %7, align 4
  br label %216

53:                                               ; preds = %39
  %54 = load i64**, i64*** %8, align 8
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %54, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load i64**, i64*** %8, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = call i64 @sldns_read_uint16(i64* %61)
  %63 = load i64, i64* @LDNS_RR_TYPE_OPT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load i32, i32* %14, align 4
  %67 = load i64**, i64*** %8, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64** %67, i64* %68, i8** %69, i64* %70)
  %72 = add nsw i32 %66, %71
  store i32 %72, i32* %7, align 4
  br label %216

73:                                               ; preds = %53
  %74 = load i64**, i64*** %8, align 8
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = call i64 @sldns_read_uint16(i64* %76)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load i64**, i64*** %8, align 8
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 4
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %15, align 8
  %83 = load i64**, i64*** %8, align 8
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 5
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %16, align 8
  %87 = load i64**, i64*** %8, align 8
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 6
  %90 = call i64 @sldns_read_uint16(i64* %89)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %18, align 4
  %92 = load i64**, i64*** %8, align 8
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 8
  %95 = call i64 @sldns_read_uint16(i64* %94)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %19, align 4
  %97 = load i64**, i64*** %8, align 8
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 10
  store i64* %99, i64** %97, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, 10
  store i64 %102, i64* %100, align 8
  %103 = load i8**, i8*** %10, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %16, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %103, i64* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %14, align 4
  %112 = load i8**, i8*** %10, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %112, i64* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @LDNS_EDNS_MASK_DO_BIT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %73
  %124 = load i8**, i8*** %10, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %124, i64* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %123, %73
  %132 = load i64, i64* %15, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load i64, i64* %15, align 8
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %136, 4
  store i32 %137, i32* %20, align 4
  %138 = load i64*, i64** %12, align 8
  %139 = icmp ne i64* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %143 = icmp uge i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i64*, i64** %12, align 8
  %146 = call i32 @LDNS_RCODE_WIRE(i64* %145)
  %147 = load i32, i32* %20, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %20, align 4
  br label %149

149:                                              ; preds = %144, %140, %134
  %150 = load i8**, i8*** %10, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load i32, i32* %20, align 4
  %153 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %150, i64* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %149, %131
  %159 = load i8**, i8*** %10, align 8
  %160 = load i64*, i64** %11, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %159, i64* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %207

169:                                              ; preds = %158
  %170 = load i64*, i64** %9, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp ult i64 %171, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load i8**, i8*** %10, align 8
  %177 = load i64*, i64** %11, align 8
  %178 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %176, i64* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %14, align 4
  %183 = load i64*, i64** %9, align 8
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %19, align 4
  br label %186

186:                                              ; preds = %175, %169
  %187 = load i8**, i8*** %10, align 8
  %188 = load i64*, i64** %11, align 8
  %189 = load i64**, i64*** %8, align 8
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %19, align 4
  %192 = call i64 @print_edns_opts(i8** %187, i64* %188, i64* %190, i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i64**, i64*** %8, align 8
  %199 = load i64*, i64** %198, align 8
  %200 = sext i32 %197 to i64
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64* %201, i64** %198, align 8
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** %9, align 8
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, %203
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %186, %158
  %208 = load i8**, i8*** %10, align 8
  %209 = load i64*, i64** %11, align 8
  %210 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %208, i64* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %207, %65, %45, %31
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i32 @print_remainder_hex(i8*, i64**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_read_uint16(i64*) #1

declare dso_local i32 @LDNS_RCODE_WIRE(i64*) #1

declare dso_local i64 @print_edns_opts(i8**, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
