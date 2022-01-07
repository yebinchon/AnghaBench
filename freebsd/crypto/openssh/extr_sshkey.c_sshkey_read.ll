; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32* }
%struct.sshbuf = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_EC_CURVE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_EXPECTED_CERT = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_read(%struct.sshkey* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sshbuf*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %12, align 4
  %14 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %15 = icmp eq %struct.sshkey* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %3, align 4
  br label %226

18:                                               ; preds = %2
  %19 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %20 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %23 [
    i32 130, label %22
    i32 132, label %22
    i32 138, label %22
    i32 136, label %22
    i32 134, label %22
    i32 137, label %22
    i32 135, label %22
    i32 131, label %22
    i32 133, label %22
  ]

22:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %3, align 4
  br label %226

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strcspn(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %35, i32* %3, align 4
  br label %226

36:                                               ; preds = %25
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @peek_type_nid(i8* %37, i64 %38, i32* %12)
  store i32 %39, i32* %11, align 4
  %40 = icmp eq i32 %39, 130
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %42, i32* %3, align 4
  br label %226

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %60, %43
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 9
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ true, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  br label %47

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %69, i32* %3, align 4
  br label %226

70:                                               ; preds = %63
  %71 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %72 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 130
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %77 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %82, i32* %3, align 4
  br label %226

83:                                               ; preds = %75, %70
  %84 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %84, %struct.sshbuf** %13, align 8
  %85 = icmp eq %struct.sshbuf* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %87, i32* %3, align 4
  br label %226

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @strcspn(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %90, i64* %9, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i8* @strndup(i8* %91, i64 %92)
  store i8* %93, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %97 = call i32 @sshbuf_free(%struct.sshbuf* %96)
  %98 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %98, i32* %3, align 4
  br label %226

99:                                               ; preds = %88
  %100 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @sshbuf_b64tod(%struct.sshbuf* %100, i8* %101)
  store i32 %102, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %108 = call i32 @sshbuf_free(%struct.sshbuf* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %226

110:                                              ; preds = %99
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %114 = call i32 @sshkey_fromb(%struct.sshbuf* %113, %struct.sshkey** %6)
  store i32 %114, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %118 = call i32 @sshbuf_free(%struct.sshbuf* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %226

120:                                              ; preds = %110
  %121 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %122 = call i32 @sshbuf_free(%struct.sshbuf* %121)
  %123 = load i64, i64* %9, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %139, %120
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 9
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ true, %126 ], [ %135, %131 ]
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %7, align 8
  br label %126

142:                                              ; preds = %136
  %143 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %144 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %150 = call i32 @sshkey_free(%struct.sshkey* %149)
  %151 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %151, i32* %3, align 4
  br label %226

152:                                              ; preds = %142
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @sshkey_type_plain(i32 %153)
  %155 = icmp eq i32 %154, 136
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %159 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %164 = call i32 @sshkey_free(%struct.sshkey* %163)
  %165 = load i32, i32* @SSH_ERR_EC_CURVE_MISMATCH, align 4
  store i32 %165, i32* %3, align 4
  br label %226

166:                                              ; preds = %156, %152
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %169 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %171 = call i64 @sshkey_is_cert(%struct.sshkey* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %199

173:                                              ; preds = %166
  %174 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %175 = call i64 @sshkey_is_cert(%struct.sshkey* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %179 = call i32 @sshkey_free(%struct.sshkey* %178)
  %180 = load i32, i32* @SSH_ERR_EXPECTED_CERT, align 4
  store i32 %180, i32* %3, align 4
  br label %226

181:                                              ; preds = %173
  %182 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %183 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %188 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %187, i32 0, i32 10
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @cert_free(i32* %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %193 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %192, i32 0, i32 10
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %196 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %195, i32 0, i32 10
  store i32* %194, i32** %196, align 8
  %197 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %198 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %197, i32 0, i32 10
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %191, %166
  %200 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %201 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @sshkey_type_plain(i32 %202)
  switch i32 %203, label %217 [
    i32 134, label %204
  ]

204:                                              ; preds = %199
  %205 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %206 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @ED25519_PK_SZ, align 4
  %209 = call i32 @freezero(i32* %207, i32 %208)
  %210 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %211 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %214 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %213, i32 0, i32 6
  store i32* %212, i32** %214, align 8
  %215 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %216 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %215, i32 0, i32 6
  store i32* null, i32** %216, align 8
  br label %221

217:                                              ; preds = %199
  %218 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %219 = call i32 @sshkey_free(%struct.sshkey* %218)
  %220 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %220, i32* %3, align 4
  br label %226

221:                                              ; preds = %204
  %222 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %223 = call i32 @sshkey_free(%struct.sshkey* %222)
  %224 = load i8*, i8** %7, align 8
  %225 = load i8**, i8*** %5, align 8
  store i8* %224, i8** %225, align 8
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %221, %217, %177, %162, %148, %116, %104, %95, %86, %81, %68, %41, %34, %23, %16
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @peek_type_nid(i8*, i64, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_b64tod(%struct.sshbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshkey_fromb(%struct.sshbuf*, %struct.sshkey**) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @sshkey_type_plain(i32) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @cert_free(i32*) #1

declare dso_local i32 @freezero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
