; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_decrypt_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_decrypt_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_keys = type { i64*, i64*, i64*, i64*, i32, i32 }
%struct.ikev2_hdr = type { i32 }
%struct.ikev2_integ_alg = type { i64 }
%struct.ikev2_encr_alg = type { i64, i32 }

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IKEV2: No Encrypted payload in SA_AUTH\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"IKEV2: Unsupported encryption type\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"IKEV2: Unsupported intergrity type\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"IKEV2: No room for IV or Integrity Checksum\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IKEV2: No SK_a available\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"IKEV2: Failed to calculate integrity hash\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"IKEV2: Incorrect Integrity Checksum Data\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"IKEV2: No SK_e available\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"IKEV2: Invalid padding in encrypted payload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @ikev2_decrypt_payload(i32 %0, i32 %1, %struct.ikev2_keys* %2, i32 %3, %struct.ikev2_hdr* %4, i64* %5, i64 %6, i64* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ikev2_keys*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ikev2_hdr*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.ikev2_integ_alg*, align 8
  %29 = alloca %struct.ikev2_encr_alg*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.ikev2_keys* %2, %struct.ikev2_keys** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.ikev2_hdr* %4, %struct.ikev2_hdr** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  %33 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %23, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %8
  %40 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %41 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  br label %47

43:                                               ; preds = %8
  %44 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %45 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i64* [ %42, %39 ], [ %46, %43 ]
  store i64* %48, i64** %30, align 8
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %53 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %57 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i64* [ %54, %51 ], [ %58, %55 ]
  store i64* %60, i64** %31, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.ikev2_encr_alg* @ikev2_get_encr(i32 %67)
  store %struct.ikev2_encr_alg* %68, %struct.ikev2_encr_alg** %29, align 8
  %69 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %29, align 8
  %70 = icmp eq %struct.ikev2_encr_alg* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

74:                                               ; preds = %66
  %75 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %29, align 8
  %76 = getelementptr inbounds %struct.ikev2_encr_alg, %struct.ikev2_encr_alg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %18, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %78)
  store %struct.ikev2_integ_alg* %79, %struct.ikev2_integ_alg** %28, align 8
  %80 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %28, align 8
  %81 = icmp eq %struct.ikev2_integ_alg* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @MSG_INFO, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

85:                                               ; preds = %74
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add i64 %87, 1
  %89 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %28, align 8
  %90 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = icmp ult i64 %86, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @MSG_INFO, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

97:                                               ; preds = %85
  %98 = load i64*, i64** %15, align 8
  store i64* %98, i64** %21, align 8
  %99 = load i64*, i64** %21, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64* %101, i64** %19, align 8
  %102 = load i64*, i64** %15, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64* %104, i64** %20, align 8
  %105 = load i64*, i64** %20, align 8
  %106 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %28, align 8
  %107 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  store i64* %110, i64** %22, align 8
  %111 = load i64*, i64** %31, align 8
  %112 = icmp eq i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %97
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

116:                                              ; preds = %97
  %117 = load i32, i32* %11, align 4
  %118 = load i64*, i64** %31, align 8
  %119 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %120 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %14, align 8
  %123 = bitcast %struct.ikev2_hdr* %122 to i64*
  %124 = load i64*, i64** %22, align 8
  %125 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %14, align 8
  %126 = bitcast %struct.ikev2_hdr* %125 to i64*
  %127 = ptrtoint i64* %124 to i64
  %128 = ptrtoint i64* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = call i64 @ikev2_integ_hash(i32 %117, i64* %118, i32 %121, i64* %123, i32 %131, i64* %36)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = call i32 @wpa_printf(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

137:                                              ; preds = %116
  %138 = load i64*, i64** %22, align 8
  %139 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %28, align 8
  %140 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @os_memcmp_const(i64* %138, i64* %36, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @MSG_INFO, align 4
  %146 = call i32 @wpa_printf(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

147:                                              ; preds = %137
  %148 = load i64*, i64** %30, align 8
  %149 = icmp eq i64* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @MSG_INFO, align 4
  %152 = call i32 @wpa_printf(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

153:                                              ; preds = %147
  %154 = load i64*, i64** %22, align 8
  %155 = load i64*, i64** %19, align 8
  %156 = ptrtoint i64* %154 to i64
  %157 = ptrtoint i64* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 8
  store i64 %159, i64* %26, align 8
  %160 = load i64, i64* %26, align 8
  %161 = call i64* @os_malloc(i64 %160)
  store i64* %161, i64** %25, align 8
  %162 = load i64*, i64** %25, align 8
  %163 = icmp eq i64* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

165:                                              ; preds = %153
  %166 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %29, align 8
  %167 = getelementptr inbounds %struct.ikev2_encr_alg, %struct.ikev2_encr_alg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i64*, i64** %30, align 8
  %170 = load %struct.ikev2_keys*, %struct.ikev2_keys** %12, align 8
  %171 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i64*, i64** %21, align 8
  %174 = load i64*, i64** %19, align 8
  %175 = load i64*, i64** %25, align 8
  %176 = load i64, i64* %26, align 8
  %177 = call i64 @ikev2_encr_decrypt(i32 %168, i64* %169, i32 %172, i64* %173, i64* %174, i64* %175, i64 %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = load i64*, i64** %25, align 8
  %181 = call i32 @os_free(i64* %180)
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

182:                                              ; preds = %165
  %183 = load i64*, i64** %25, align 8
  %184 = load i64, i64* %26, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %27, align 8
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* %27, align 8
  %190 = add i64 %189, 1
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %182
  %193 = load i32, i32* @MSG_INFO, align 4
  %194 = call i32 @wpa_printf(i32 %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %195 = load i64*, i64** %25, align 8
  %196 = call i32 @os_free(i64* %195)
  store i64* null, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

197:                                              ; preds = %182
  %198 = load i64, i64* %27, align 8
  %199 = add i64 %198, 1
  %200 = load i64, i64* %26, align 8
  %201 = sub i64 %200, %199
  store i64 %201, i64* %26, align 8
  %202 = load i64, i64* %26, align 8
  %203 = load i64*, i64** %17, align 8
  store i64 %202, i64* %203, align 8
  %204 = load i64*, i64** %25, align 8
  store i64* %204, i64** %9, align 8
  store i32 1, i32* %32, align 4
  br label %205

205:                                              ; preds = %197, %192, %179, %164, %150, %144, %134, %113, %94, %82, %71, %63
  %206 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i64*, i64** %9, align 8
  ret i64* %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.ikev2_encr_alg* @ikev2_get_encr(i32) #2

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #2

declare dso_local i64 @ikev2_integ_hash(i32, i64*, i32, i64*, i32, i64*) #2

declare dso_local i64 @os_memcmp_const(i64*, i64*, i64) #2

declare dso_local i64* @os_malloc(i64) #2

declare dso_local i64 @ikev2_encr_decrypt(i32, i64*, i32, i64*, i64*, i64*, i64) #2

declare dso_local i32 @os_free(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
