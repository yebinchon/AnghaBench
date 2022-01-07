; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_sshkey_fuzz_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_sshkey_fuzz_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }
%struct.fuzz = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"fuzz RSA private\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rsa_1\00", align 1
@FUZZ_BASE64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@onerror = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"fuzz RSA new-format private\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rsa_n\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"fuzz DSA private\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dsa_1\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"fuzz DSA new-format private\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dsa_n\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"fuzz Ed25519 private\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ed25519_1\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"fuzz RSA public\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"fuzz RSA cert\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"fuzz DSA public\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"fuzz DSA cert\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"fuzz Ed25519 public\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"fuzz Ed25519 cert\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"fuzz RSA sig\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ssh-rsa\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"fuzz RSA SHA256 sig\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"rsa-sha2-256\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"fuzz RSA SHA512 sig\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"rsa-sha2-512\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"fuzz DSA sig\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"fuzz Ed25519 sig\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshkey_fuzz_tests() #0 {
  %1 = alloca %struct.sshkey*, align 8
  %2 = alloca %struct.sshbuf*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca %struct.fuzz*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sshbuf* %7, %struct.sshbuf** %2, align 8
  %8 = load i32, i32* @FUZZ_BASE64, align 4
  %9 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %10 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %9)
  %11 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %12 = call i32 @sshbuf_len(%struct.sshbuf* %11)
  %13 = call %struct.fuzz* @fuzz_begin(i32 %8, i32 %10, i32 %12)
  store %struct.fuzz* %13, %struct.fuzz** %4, align 8
  %14 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %15 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %16 = call i32 @ASSERT_INT_EQ(i64 %15, i32 0)
  %17 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %18 = call i32 @sshkey_free(%struct.sshkey* %17)
  %19 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %20 = call i32 @sshbuf_free(%struct.sshbuf* %19)
  %21 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %21, %struct.sshbuf** %3, align 8
  %22 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %21, i32* null)
  %23 = load i32, i32* @onerror, align 4
  %24 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %25 = call i32 @TEST_ONERROR(i32 %23, %struct.fuzz* %24)
  br label %26

26:                                               ; preds = %50, %0
  %27 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %28 = call i32 @fuzz_done(%struct.fuzz* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %33 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %34 = call i32 @fuzz_ptr(%struct.fuzz* %33)
  %35 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %36 = call i32 @fuzz_len(%struct.fuzz* %35)
  %37 = call i32 @sshbuf_put(%struct.sshbuf* %32, i32 %34, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @ASSERT_INT_EQ(i64 %39, i32 0)
  %41 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %42 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %46 = call i32 @sshkey_free(%struct.sshkey* %45)
  br label %47

47:                                               ; preds = %44, %31
  %48 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %49 = call i32 @sshbuf_reset(%struct.sshbuf* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %52 = call i32 @fuzz_next(%struct.fuzz* %51)
  br label %26

53:                                               ; preds = %26
  %54 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %55 = call i32 @sshbuf_free(%struct.sshbuf* %54)
  %56 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %57 = call i32 @fuzz_cleanup(%struct.fuzz* %56)
  %58 = call i32 (...) @TEST_DONE()
  %59 = call i32 @TEST_START(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %60 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sshbuf* %60, %struct.sshbuf** %2, align 8
  %61 = load i32, i32* @FUZZ_BASE64, align 4
  %62 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %63 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %62)
  %64 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %65 = call i32 @sshbuf_len(%struct.sshbuf* %64)
  %66 = call %struct.fuzz* @fuzz_begin(i32 %61, i32 %63, i32 %65)
  store %struct.fuzz* %66, %struct.fuzz** %4, align 8
  %67 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %68 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %69 = call i32 @ASSERT_INT_EQ(i64 %68, i32 0)
  %70 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %71 = call i32 @sshkey_free(%struct.sshkey* %70)
  %72 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %73 = call i32 @sshbuf_free(%struct.sshbuf* %72)
  %74 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %74, %struct.sshbuf** %3, align 8
  %75 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %74, i32* null)
  %76 = load i32, i32* @onerror, align 4
  %77 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %78 = call i32 @TEST_ONERROR(i32 %76, %struct.fuzz* %77)
  br label %79

79:                                               ; preds = %103, %53
  %80 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %81 = call i32 @fuzz_done(%struct.fuzz* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %86 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %87 = call i32 @fuzz_ptr(%struct.fuzz* %86)
  %88 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %89 = call i32 @fuzz_len(%struct.fuzz* %88)
  %90 = call i32 @sshbuf_put(%struct.sshbuf* %85, i32 %87, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @ASSERT_INT_EQ(i64 %92, i32 0)
  %94 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %95 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %99 = call i32 @sshkey_free(%struct.sshkey* %98)
  br label %100

100:                                              ; preds = %97, %84
  %101 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %102 = call i32 @sshbuf_reset(%struct.sshbuf* %101)
  br label %103

103:                                              ; preds = %100
  %104 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %105 = call i32 @fuzz_next(%struct.fuzz* %104)
  br label %79

106:                                              ; preds = %79
  %107 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %108 = call i32 @sshbuf_free(%struct.sshbuf* %107)
  %109 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %110 = call i32 @fuzz_cleanup(%struct.fuzz* %109)
  %111 = call i32 (...) @TEST_DONE()
  %112 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %113 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sshbuf* %113, %struct.sshbuf** %2, align 8
  %114 = load i32, i32* @FUZZ_BASE64, align 4
  %115 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %116 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %115)
  %117 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %118 = call i32 @sshbuf_len(%struct.sshbuf* %117)
  %119 = call %struct.fuzz* @fuzz_begin(i32 %114, i32 %116, i32 %118)
  store %struct.fuzz* %119, %struct.fuzz** %4, align 8
  %120 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %121 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %122 = call i32 @ASSERT_INT_EQ(i64 %121, i32 0)
  %123 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %124 = call i32 @sshkey_free(%struct.sshkey* %123)
  %125 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %126 = call i32 @sshbuf_free(%struct.sshbuf* %125)
  %127 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %127, %struct.sshbuf** %3, align 8
  %128 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %127, i32* null)
  %129 = load i32, i32* @onerror, align 4
  %130 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %131 = call i32 @TEST_ONERROR(i32 %129, %struct.fuzz* %130)
  br label %132

132:                                              ; preds = %156, %106
  %133 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %134 = call i32 @fuzz_done(%struct.fuzz* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %159

137:                                              ; preds = %132
  %138 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %139 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %140 = call i32 @fuzz_ptr(%struct.fuzz* %139)
  %141 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %142 = call i32 @fuzz_len(%struct.fuzz* %141)
  %143 = call i32 @sshbuf_put(%struct.sshbuf* %138, i32 %140, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 @ASSERT_INT_EQ(i64 %145, i32 0)
  %147 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %148 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %152 = call i32 @sshkey_free(%struct.sshkey* %151)
  br label %153

153:                                              ; preds = %150, %137
  %154 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %155 = call i32 @sshbuf_reset(%struct.sshbuf* %154)
  br label %156

156:                                              ; preds = %153
  %157 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %158 = call i32 @fuzz_next(%struct.fuzz* %157)
  br label %132

159:                                              ; preds = %132
  %160 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %161 = call i32 @sshbuf_free(%struct.sshbuf* %160)
  %162 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %163 = call i32 @fuzz_cleanup(%struct.fuzz* %162)
  %164 = call i32 (...) @TEST_DONE()
  %165 = call i32 @TEST_START(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %166 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store %struct.sshbuf* %166, %struct.sshbuf** %2, align 8
  %167 = load i32, i32* @FUZZ_BASE64, align 4
  %168 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %169 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %168)
  %170 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %171 = call i32 @sshbuf_len(%struct.sshbuf* %170)
  %172 = call %struct.fuzz* @fuzz_begin(i32 %167, i32 %169, i32 %171)
  store %struct.fuzz* %172, %struct.fuzz** %4, align 8
  %173 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %174 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %173, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %175 = call i32 @ASSERT_INT_EQ(i64 %174, i32 0)
  %176 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %177 = call i32 @sshkey_free(%struct.sshkey* %176)
  %178 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %179 = call i32 @sshbuf_free(%struct.sshbuf* %178)
  %180 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %180, %struct.sshbuf** %3, align 8
  %181 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %180, i32* null)
  %182 = load i32, i32* @onerror, align 4
  %183 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %184 = call i32 @TEST_ONERROR(i32 %182, %struct.fuzz* %183)
  br label %185

185:                                              ; preds = %209, %159
  %186 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %187 = call i32 @fuzz_done(%struct.fuzz* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br i1 %189, label %190, label %212

190:                                              ; preds = %185
  %191 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %192 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %193 = call i32 @fuzz_ptr(%struct.fuzz* %192)
  %194 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %195 = call i32 @fuzz_len(%struct.fuzz* %194)
  %196 = call i32 @sshbuf_put(%struct.sshbuf* %191, i32 %193, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 @ASSERT_INT_EQ(i64 %198, i32 0)
  %200 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %201 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %200, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %190
  %204 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %205 = call i32 @sshkey_free(%struct.sshkey* %204)
  br label %206

206:                                              ; preds = %203, %190
  %207 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %208 = call i32 @sshbuf_reset(%struct.sshbuf* %207)
  br label %209

209:                                              ; preds = %206
  %210 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %211 = call i32 @fuzz_next(%struct.fuzz* %210)
  br label %185

212:                                              ; preds = %185
  %213 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %214 = call i32 @sshbuf_free(%struct.sshbuf* %213)
  %215 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %216 = call i32 @fuzz_cleanup(%struct.fuzz* %215)
  %217 = call i32 (...) @TEST_DONE()
  %218 = call i32 @TEST_START(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %219 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sshbuf* %219, %struct.sshbuf** %2, align 8
  %220 = load i32, i32* @FUZZ_BASE64, align 4
  %221 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %222 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %221)
  %223 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %224 = call i32 @sshbuf_len(%struct.sshbuf* %223)
  %225 = call %struct.fuzz* @fuzz_begin(i32 %220, i32 %222, i32 %224)
  store %struct.fuzz* %225, %struct.fuzz** %4, align 8
  %226 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %227 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %226, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %228 = call i32 @ASSERT_INT_EQ(i64 %227, i32 0)
  %229 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %230 = call i32 @sshkey_free(%struct.sshkey* %229)
  %231 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %232 = call i32 @sshbuf_free(%struct.sshbuf* %231)
  %233 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %233, %struct.sshbuf** %3, align 8
  %234 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %233, i32* null)
  %235 = load i32, i32* @onerror, align 4
  %236 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %237 = call i32 @TEST_ONERROR(i32 %235, %struct.fuzz* %236)
  br label %238

238:                                              ; preds = %262, %212
  %239 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %240 = call i32 @fuzz_done(%struct.fuzz* %239)
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  br i1 %242, label %243, label %265

243:                                              ; preds = %238
  %244 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %245 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %246 = call i32 @fuzz_ptr(%struct.fuzz* %245)
  %247 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %248 = call i32 @fuzz_len(%struct.fuzz* %247)
  %249 = call i32 @sshbuf_put(%struct.sshbuf* %244, i32 %246, i32 %248)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = call i32 @ASSERT_INT_EQ(i64 %251, i32 0)
  %253 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %254 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %253, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %243
  %257 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %258 = call i32 @sshkey_free(%struct.sshkey* %257)
  br label %259

259:                                              ; preds = %256, %243
  %260 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %261 = call i32 @sshbuf_reset(%struct.sshbuf* %260)
  br label %262

262:                                              ; preds = %259
  %263 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %264 = call i32 @fuzz_next(%struct.fuzz* %263)
  br label %238

265:                                              ; preds = %238
  %266 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %267 = call i32 @sshbuf_free(%struct.sshbuf* %266)
  %268 = load %struct.fuzz*, %struct.fuzz** %4, align 8
  %269 = call i32 @fuzz_cleanup(%struct.fuzz* %268)
  %270 = call i32 (...) @TEST_DONE()
  %271 = call i32 @TEST_START(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %272 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sshbuf* %272, %struct.sshbuf** %2, align 8
  %273 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %274 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %273, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %275 = call i32 @ASSERT_INT_EQ(i64 %274, i32 0)
  %276 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %277 = call i32 @sshbuf_free(%struct.sshbuf* %276)
  %278 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %279 = call i32 @public_fuzz(%struct.sshkey* %278)
  %280 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %281 = call i32 @sshkey_free(%struct.sshkey* %280)
  %282 = call i32 (...) @TEST_DONE()
  %283 = call i32 @TEST_START(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %284 = call i32 @test_data_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %285 = call i64 @sshkey_load_cert(i32 %284, %struct.sshkey** %1)
  %286 = call i32 @ASSERT_INT_EQ(i64 %285, i32 0)
  %287 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %288 = call i32 @public_fuzz(%struct.sshkey* %287)
  %289 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %290 = call i32 @sshkey_free(%struct.sshkey* %289)
  %291 = call i32 (...) @TEST_DONE()
  %292 = call i32 @TEST_START(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %293 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sshbuf* %293, %struct.sshbuf** %2, align 8
  %294 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %295 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %294, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %296 = call i32 @ASSERT_INT_EQ(i64 %295, i32 0)
  %297 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %298 = call i32 @sshbuf_free(%struct.sshbuf* %297)
  %299 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %300 = call i32 @public_fuzz(%struct.sshkey* %299)
  %301 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %302 = call i32 @sshkey_free(%struct.sshkey* %301)
  %303 = call i32 (...) @TEST_DONE()
  %304 = call i32 @TEST_START(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %305 = call i32 @test_data_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %306 = call i64 @sshkey_load_cert(i32 %305, %struct.sshkey** %1)
  %307 = call i32 @ASSERT_INT_EQ(i64 %306, i32 0)
  %308 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %309 = call i32 @public_fuzz(%struct.sshkey* %308)
  %310 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %311 = call i32 @sshkey_free(%struct.sshkey* %310)
  %312 = call i32 (...) @TEST_DONE()
  %313 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %314 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sshbuf* %314, %struct.sshbuf** %2, align 8
  %315 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %316 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %315, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %317 = call i32 @ASSERT_INT_EQ(i64 %316, i32 0)
  %318 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %319 = call i32 @sshbuf_free(%struct.sshbuf* %318)
  %320 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %321 = call i32 @public_fuzz(%struct.sshkey* %320)
  %322 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %323 = call i32 @sshkey_free(%struct.sshkey* %322)
  %324 = call i32 (...) @TEST_DONE()
  %325 = call i32 @TEST_START(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %326 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %327 = call i64 @sshkey_load_cert(i32 %326, %struct.sshkey** %1)
  %328 = call i32 @ASSERT_INT_EQ(i64 %327, i32 0)
  %329 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %330 = call i32 @public_fuzz(%struct.sshkey* %329)
  %331 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %332 = call i32 @sshkey_free(%struct.sshkey* %331)
  %333 = call i32 (...) @TEST_DONE()
  %334 = call i32 @TEST_START(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %335 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sshbuf* %335, %struct.sshbuf** %2, align 8
  %336 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %337 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %336, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %338 = call i32 @ASSERT_INT_EQ(i64 %337, i32 0)
  %339 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %340 = call i32 @sshbuf_free(%struct.sshbuf* %339)
  %341 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %342 = call i32 @sig_fuzz(%struct.sshkey* %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %343 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %344 = call i32 @sshkey_free(%struct.sshkey* %343)
  %345 = call i32 (...) @TEST_DONE()
  %346 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %347 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sshbuf* %347, %struct.sshbuf** %2, align 8
  %348 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %349 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %348, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %350 = call i32 @ASSERT_INT_EQ(i64 %349, i32 0)
  %351 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %352 = call i32 @sshbuf_free(%struct.sshbuf* %351)
  %353 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %354 = call i32 @sig_fuzz(%struct.sshkey* %353, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %355 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %356 = call i32 @sshkey_free(%struct.sshkey* %355)
  %357 = call i32 (...) @TEST_DONE()
  %358 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %359 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sshbuf* %359, %struct.sshbuf** %2, align 8
  %360 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %361 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %360, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %362 = call i32 @ASSERT_INT_EQ(i64 %361, i32 0)
  %363 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %364 = call i32 @sshbuf_free(%struct.sshbuf* %363)
  %365 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %366 = call i32 @sig_fuzz(%struct.sshkey* %365, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %367 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %368 = call i32 @sshkey_free(%struct.sshkey* %367)
  %369 = call i32 (...) @TEST_DONE()
  %370 = call i32 @TEST_START(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %371 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sshbuf* %371, %struct.sshbuf** %2, align 8
  %372 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %373 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %372, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %374 = call i32 @ASSERT_INT_EQ(i64 %373, i32 0)
  %375 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %376 = call i32 @sshbuf_free(%struct.sshbuf* %375)
  %377 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %378 = call i32 @sig_fuzz(%struct.sshkey* %377, i8* null)
  %379 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %380 = call i32 @sshkey_free(%struct.sshkey* %379)
  %381 = call i32 (...) @TEST_DONE()
  %382 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %383 = call %struct.sshbuf* @load_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sshbuf* %383, %struct.sshbuf** %2, align 8
  %384 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %385 = call i64 @sshkey_parse_private_fileblob(%struct.sshbuf* %384, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %1, i32* null)
  %386 = call i32 @ASSERT_INT_EQ(i64 %385, i32 0)
  %387 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %388 = call i32 @sshbuf_free(%struct.sshbuf* %387)
  %389 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %390 = call i32 @sig_fuzz(%struct.sshkey* %389, i8* null)
  %391 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %392 = call i32 @sshkey_free(%struct.sshkey* %391)
  %393 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local %struct.sshbuf* @load_file(i8*) #1

declare dso_local %struct.fuzz* @fuzz_begin(i32, i32, i32) #1

declare dso_local i32 @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @ASSERT_INT_EQ(i64, i32) #1

declare dso_local i64 @sshkey_parse_private_fileblob(%struct.sshbuf*, i8*, %struct.sshkey**, i32*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @TEST_ONERROR(i32, %struct.fuzz*) #1

declare dso_local i32 @fuzz_done(%struct.fuzz*) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32, i32) #1

declare dso_local i32 @fuzz_ptr(%struct.fuzz*) #1

declare dso_local i32 @fuzz_len(%struct.fuzz*) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @fuzz_next(%struct.fuzz*) #1

declare dso_local i32 @fuzz_cleanup(%struct.fuzz*) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i32 @public_fuzz(%struct.sshkey*) #1

declare dso_local i64 @sshkey_load_cert(i32, %struct.sshkey**) #1

declare dso_local i32 @test_data_file(i8*) #1

declare dso_local i32 @sig_fuzz(%struct.sshkey*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
