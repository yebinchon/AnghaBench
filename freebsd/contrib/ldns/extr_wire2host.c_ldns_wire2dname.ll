; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_PACKET_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_STATUS_INVALID_POINTER = common dso_local global i32 0, align 4
@LDNS_MAX_POINTERS = common dso_local global i32 0, align 4
@LDNS_MAX_LABELLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_STATUS_DOMAINNAME_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_wire2dname(i32** %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

28:                                               ; preds = %4
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @LDNS_STATUS_PACKET_OVERFLOW, align 4
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %194, %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %195

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %100, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 192
  br i1 %47, label %48, label %108

48:                                               ; preds = %45
  %49 = load i64, i64* %15, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 2
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %18, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %18, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 2
  %61 = load i64, i64* %8, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @LDNS_STATUS_PACKET_OVERFLOW, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

65:                                               ; preds = %55
  %66 = load i32*, i32** %7, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 63
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %81 = call i64 @ldns_read_uint16(i32* %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %65
  %85 = load i32, i32* @LDNS_STATUS_INVALID_POINTER, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

86:                                               ; preds = %65
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @LDNS_STATUS_INVALID_POINTER, align 4
  store i32 %91, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

92:                                               ; preds = %86
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* @LDNS_MAX_POINTERS, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @LDNS_STATUS_INVALID_POINTER, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %11, align 8
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  br label %45

108:                                              ; preds = %45
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %195

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @LDNS_MAX_LABELLEN, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @LDNS_STATUS_LABEL_OVERFLOW, align 4
  store i32 %117, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

118:                                              ; preds = %112
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %121, %123
  %125 = load i64, i64* %8, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @LDNS_STATUS_LABEL_OVERFLOW, align 4
  store i32 %128, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

129:                                              ; preds = %118
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  %132 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ugt i64 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @LDNS_STATUS_DOMAINNAME_OVERFLOW, align 4
  store i32 %136, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

137:                                              ; preds = %129
  %138 = load i32, i32* %10, align 4
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds i32, i32* %23, i64 %139
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = load i64*, i64** %9, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %151, %153
  %155 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  %159 = load i32, i32* @LDNS_STATUS_DOMAINNAME_OVERFLOW, align 4
  store i32 %159, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

160:                                              ; preds = %146
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds i32, i32* %23, i64 %161
  %163 = load i32*, i32** %7, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @memcpy(i32* %162, i32* %166, i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %14, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %14, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %13, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %13, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %179, %181
  %183 = load i64*, i64** %9, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i64*, i64** %9, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %160
  %189 = load i32*, i32** %7, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %188, %160
  br label %41

195:                                              ; preds = %111, %41
  %196 = load i64, i64* %15, align 8
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, i64* %15, align 8
  %200 = load i64*, i64** %9, align 8
  store i64 %199, i64* %200, align 8
  br label %206

201:                                              ; preds = %195
  %202 = load i64*, i64** %9, align 8
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, 1
  %205 = load i64*, i64** %9, align 8
  store i64 %204, i64* %205, align 8
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i64, i64* %13, align 8
  %208 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %209 = sext i32 %208 to i64
  %210 = icmp uge i64 %207, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @LDNS_STATUS_DOMAINNAME_OVERFLOW, align 4
  store i32 %212, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

213:                                              ; preds = %206
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds i32, i32* %23, i64 %214
  store i32 0, i32* %215, align 4
  %216 = load i64, i64* %13, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %13, align 8
  %218 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %219 = load i64, i64* %13, align 8
  %220 = call i32* @ldns_rdf_new_frm_data(i32 %218, i64 %219, i32* %23)
  %221 = load i32**, i32*** %6, align 8
  store i32* %220, i32** %221, align 8
  %222 = load i32**, i32*** %6, align 8
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %213
  %226 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %226, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

227:                                              ; preds = %213
  %228 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %228, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %229

229:                                              ; preds = %227, %225, %211, %158, %135, %127, %116, %96, %90, %84, %63, %33, %26
  %230 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ldns_read_uint16(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
