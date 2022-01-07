; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_getput_crypto.c_sshbuf_getput_crypto_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_getput_crypto.c_sshbuf_getput_crypto_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"0102030405060708090a0b0c0d0e0f10\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"f0e0d0c0b0a0908070605040302010007fff11\00", align 1
@__const.sshbuf_getput_crypto_tests.expbn1 = private unnamed_addr constant [16 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 16
@__const.sshbuf_getput_crypto_tests.expbn2 = private unnamed_addr constant [19 x i32] [i32 240, i32 224, i32 208, i32 192, i32 176, i32 160, i32 144, i32 128, i32 112, i32 96, i32 80, i32 64, i32 48, i32 32, i32 16, i32 0, i32 127, i32 255, i32 17], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"sshbuf_put_bignum1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sshbuf_put_bignum1 limited\00", align 1
@SSH_ERR_NO_BUFFER_SPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"sshbuf_put_bignum1 bn2\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"sshbuf_put_bignum1 bn2 limited\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"sshbuf_put_bignum2\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"sshbuf_put_bignum2 limited\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"sshbuf_put_bignum2 bn2\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"sshbuf_put_bignum2 bn2 limited\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"sshbuf_get_bignum1\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"sshbuf_get_bignum1 truncated\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"sshbuf_get_bignum1 giant\00", align 1
@SSH_ERR_BIGNUM_TOO_LARGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"sshbuf_get_bignum1 bn2\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"sshbuf_get_bignum1 bn2 truncated\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"sshbuf_get_bignum2\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"sshbuf_get_bignum2 truncated\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"sshbuf_get_bignum2 giant\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"sshbuf_get_bignum2 bn2\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"sshbuf_get_bignum2 bn2 truncated\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"sshbuf_get_bignum2 bn2 negative\00", align 1
@SSH_ERR_BIGNUM_IS_NEGATIVE = common dso_local global i32 0, align 4
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_getput_crypto_tests() #0 {
  %1 = alloca %struct.sshbuf*, align 8
  %2 = alloca %struct.sshbuf*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca [19 x i32], align 16
  %8 = alloca i32, align 4
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %9 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([16 x i32]* @__const.sshbuf_getput_crypto_tests.expbn1 to i8*), i64 64, i1 false)
  %10 = bitcast [19 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([19 x i32]* @__const.sshbuf_getput_crypto_tests.expbn2 to i8*), i64 76, i1 false)
  %11 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %12

12:                                               ; preds = %0
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %13)
  %15 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12
  %17 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %17, %struct.sshbuf** %1, align 8
  %18 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %19 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %18, i32* null)
  %20 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %22 = call i32 @sshbuf_put_bignum1(%struct.sshbuf* %20, %struct.sshbuf* %21)
  %23 = call i32 @ASSERT_INT_EQ(i32 %22, i32 0)
  %24 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %25 = call i64 @sshbuf_len(%struct.sshbuf* %24)
  %26 = call i32 @ASSERT_SIZE_T_EQ(i64 %25, i32 66)
  %27 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %28 = call i32* @sshbuf_ptr(%struct.sshbuf* %27)
  %29 = call i32 @PEEK_U16(i32* %28)
  %30 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %31 = call i32 @BN_num_bits(%struct.sshbuf* %30)
  %32 = call i32 @ASSERT_U16_EQ(i32 %29, i32 %31)
  %33 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %34 = call i32* @sshbuf_ptr(%struct.sshbuf* %33)
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %37 = call i32 @ASSERT_MEM_EQ(i32* %35, i32* %36, i32 64)
  %38 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %39 = call i32 @BN_free(%struct.sshbuf* %38)
  %40 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %41 = call i32 @sshbuf_free(%struct.sshbuf* %40)
  %42 = call i32 (...) @TEST_DONE()
  %43 = call i32 @TEST_START(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %16
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %45)
  %47 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44
  %49 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %49, %struct.sshbuf** %1, align 8
  %50 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %51 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %50, i32* null)
  %52 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %53 = call i32 @sshbuf_set_max_size(%struct.sshbuf* %52, i32 65)
  %54 = call i32 @ASSERT_INT_EQ(i32 %53, i32 0)
  %55 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %56 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %57 = call i32 @sshbuf_put_bignum1(%struct.sshbuf* %55, %struct.sshbuf* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  %60 = call i32 @ASSERT_INT_EQ(i32 %58, i32 %59)
  %61 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %62 = call i64 @sshbuf_len(%struct.sshbuf* %61)
  %63 = call i32 @ASSERT_SIZE_T_EQ(i64 %62, i32 0)
  %64 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %65 = call i32 @BN_free(%struct.sshbuf* %64)
  %66 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %67 = call i32 @sshbuf_free(%struct.sshbuf* %66)
  %68 = call i32 (...) @TEST_DONE()
  %69 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %48
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %71)
  %73 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %72, i32 0)
  br label %74

74:                                               ; preds = %70
  %75 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %75, %struct.sshbuf** %1, align 8
  %76 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %77 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %76, i32* null)
  %78 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %79 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %80 = call i32 @sshbuf_put_bignum1(%struct.sshbuf* %78, %struct.sshbuf* %79)
  %81 = call i32 @ASSERT_INT_EQ(i32 %80, i32 0)
  %82 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %83 = call i64 @sshbuf_len(%struct.sshbuf* %82)
  %84 = call i32 @ASSERT_SIZE_T_EQ(i64 %83, i32 78)
  %85 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %86 = call i32* @sshbuf_ptr(%struct.sshbuf* %85)
  %87 = call i32 @PEEK_U16(i32* %86)
  %88 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %89 = call i32 @BN_num_bits(%struct.sshbuf* %88)
  %90 = call i32 @ASSERT_U16_EQ(i32 %87, i32 %89)
  %91 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %92 = call i32* @sshbuf_ptr(%struct.sshbuf* %91)
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %95 = call i32 @ASSERT_MEM_EQ(i32* %93, i32* %94, i32 76)
  %96 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %97 = call i32 @BN_free(%struct.sshbuf* %96)
  %98 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %99 = call i32 @sshbuf_free(%struct.sshbuf* %98)
  %100 = call i32 (...) @TEST_DONE()
  %101 = call i32 @TEST_START(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %74
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %103)
  %105 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %104, i32 0)
  br label %106

106:                                              ; preds = %102
  %107 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %107, %struct.sshbuf** %1, align 8
  %108 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %109 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %108, i32* null)
  %110 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %111 = call i32 @sshbuf_set_max_size(%struct.sshbuf* %110, i32 65)
  %112 = call i32 @ASSERT_INT_EQ(i32 %111, i32 0)
  %113 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %114 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %115 = call i32 @sshbuf_put_bignum1(%struct.sshbuf* %113, %struct.sshbuf* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  %118 = call i32 @ASSERT_INT_EQ(i32 %116, i32 %117)
  %119 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %120 = call i64 @sshbuf_len(%struct.sshbuf* %119)
  %121 = call i32 @ASSERT_SIZE_T_EQ(i64 %120, i32 0)
  %122 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %123 = call i32 @BN_free(%struct.sshbuf* %122)
  %124 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %125 = call i32 @sshbuf_free(%struct.sshbuf* %124)
  %126 = call i32 (...) @TEST_DONE()
  %127 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %106
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %129)
  %131 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %128
  %133 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %133, %struct.sshbuf** %1, align 8
  %134 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %135 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %134, i32* null)
  %136 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %137 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %138 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %136, %struct.sshbuf* %137)
  %139 = call i32 @ASSERT_INT_EQ(i32 %138, i32 0)
  %140 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %141 = call i64 @sshbuf_len(%struct.sshbuf* %140)
  %142 = call i32 @ASSERT_SIZE_T_EQ(i64 %141, i32 68)
  %143 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %144 = call i32* @sshbuf_ptr(%struct.sshbuf* %143)
  %145 = call i32 @PEEK_U32(i32* %144)
  %146 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %147 = call i32 @BN_num_bytes(%struct.sshbuf* %146)
  %148 = sext i32 %147 to i64
  %149 = call i32 @ASSERT_U32_EQ(i32 %145, i64 %148)
  %150 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %151 = call i32* @sshbuf_ptr(%struct.sshbuf* %150)
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %154 = call i32 @ASSERT_MEM_EQ(i32* %152, i32* %153, i32 64)
  %155 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %156 = call i32 @BN_free(%struct.sshbuf* %155)
  %157 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %158 = call i32 @sshbuf_free(%struct.sshbuf* %157)
  %159 = call i32 (...) @TEST_DONE()
  %160 = call i32 @TEST_START(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %161

161:                                              ; preds = %132
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %162)
  %164 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %163, i32 0)
  br label %165

165:                                              ; preds = %161
  %166 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %166, %struct.sshbuf** %1, align 8
  %167 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %168 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %167, i32* null)
  %169 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %170 = call i32 @sshbuf_set_max_size(%struct.sshbuf* %169, i32 67)
  %171 = call i32 @ASSERT_INT_EQ(i32 %170, i32 0)
  %172 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %173 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %174 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %172, %struct.sshbuf* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  %177 = call i32 @ASSERT_INT_EQ(i32 %175, i32 %176)
  %178 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %179 = call i64 @sshbuf_len(%struct.sshbuf* %178)
  %180 = call i32 @ASSERT_SIZE_T_EQ(i64 %179, i32 0)
  %181 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %182 = call i32 @BN_free(%struct.sshbuf* %181)
  %183 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %184 = call i32 @sshbuf_free(%struct.sshbuf* %183)
  %185 = call i32 (...) @TEST_DONE()
  %186 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %165
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %188)
  %190 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %189, i32 0)
  br label %191

191:                                              ; preds = %187
  %192 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %192, %struct.sshbuf** %1, align 8
  %193 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %194 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %193, i32* null)
  %195 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %196 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %197 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %195, %struct.sshbuf* %196)
  %198 = call i32 @ASSERT_INT_EQ(i32 %197, i32 0)
  %199 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %200 = call i64 @sshbuf_len(%struct.sshbuf* %199)
  %201 = call i32 @ASSERT_SIZE_T_EQ(i64 %200, i32 81)
  %202 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %203 = call i32* @sshbuf_ptr(%struct.sshbuf* %202)
  %204 = call i32 @PEEK_U32(i32* %203)
  %205 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %206 = call i32 @BN_num_bytes(%struct.sshbuf* %205)
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, 1
  %209 = call i32 @ASSERT_U32_EQ(i32 %204, i64 %208)
  %210 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %211 = call i32* @sshbuf_ptr(%struct.sshbuf* %210)
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ASSERT_U8_EQ(i32 %213, i32 0)
  %215 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %216 = call i32* @sshbuf_ptr(%struct.sshbuf* %215)
  %217 = getelementptr inbounds i32, i32* %216, i64 5
  %218 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %219 = call i32 @ASSERT_MEM_EQ(i32* %217, i32* %218, i32 76)
  %220 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %221 = call i32 @BN_free(%struct.sshbuf* %220)
  %222 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %223 = call i32 @sshbuf_free(%struct.sshbuf* %222)
  %224 = call i32 (...) @TEST_DONE()
  %225 = call i32 @TEST_START(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %226

226:                                              ; preds = %191
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %227 = load i8*, i8** %5, align 8
  %228 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %227)
  %229 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %228, i32 0)
  br label %230

230:                                              ; preds = %226
  %231 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %231, %struct.sshbuf** %1, align 8
  %232 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %233 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %232, i32* null)
  %234 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %235 = call i32 @sshbuf_set_max_size(%struct.sshbuf* %234, i32 79)
  %236 = call i32 @ASSERT_INT_EQ(i32 %235, i32 0)
  %237 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %238 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %239 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %237, %struct.sshbuf* %238)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  %242 = call i32 @ASSERT_INT_EQ(i32 %240, i32 %241)
  %243 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %244 = call i64 @sshbuf_len(%struct.sshbuf* %243)
  %245 = call i32 @ASSERT_SIZE_T_EQ(i64 %244, i32 0)
  %246 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %247 = call i32 @BN_free(%struct.sshbuf* %246)
  %248 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %249 = call i32 @sshbuf_free(%struct.sshbuf* %248)
  %250 = call i32 (...) @TEST_DONE()
  %251 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %252

252:                                              ; preds = %230
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %253)
  %255 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %254, i32 0)
  br label %256

256:                                              ; preds = %252
  %257 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %257, %struct.sshbuf** %1, align 8
  %258 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %259 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %258, i32* null)
  %260 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %261 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %262 = call i32 @BN_num_bits(%struct.sshbuf* %261)
  %263 = call i32 @sshbuf_put_u16(%struct.sshbuf* %260, i32 %262)
  %264 = call i32 @ASSERT_INT_EQ(i32 %263, i32 0)
  %265 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %266 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %267 = call i32 @sshbuf_put(%struct.sshbuf* %265, i32* %266, i32 64)
  %268 = call i32 @ASSERT_INT_EQ(i32 %267, i32 0)
  %269 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %270 = call i64 @sshbuf_len(%struct.sshbuf* %269)
  %271 = call i32 @ASSERT_SIZE_T_EQ(i64 %270, i32 66)
  %272 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %273 = call i32 @sshbuf_put_u16(%struct.sshbuf* %272, i32 53263)
  %274 = call i32 @ASSERT_INT_EQ(i32 %273, i32 0)
  %275 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %275, %struct.sshbuf** %3, align 8
  %276 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %277 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %278 = call i32 @sshbuf_get_bignum1(%struct.sshbuf* %276, %struct.sshbuf* %277)
  %279 = call i32 @ASSERT_INT_EQ(i32 %278, i32 0)
  %280 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %281 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %282 = call i32 @ASSERT_BIGNUM_EQ(%struct.sshbuf* %280, %struct.sshbuf* %281)
  %283 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %284 = call i64 @sshbuf_len(%struct.sshbuf* %283)
  %285 = call i32 @ASSERT_SIZE_T_EQ(i64 %284, i32 2)
  %286 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %287 = call i32 @BN_free(%struct.sshbuf* %286)
  %288 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %289 = call i32 @BN_free(%struct.sshbuf* %288)
  %290 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %291 = call i32 @sshbuf_free(%struct.sshbuf* %290)
  %292 = call i32 (...) @TEST_DONE()
  %293 = call i32 @TEST_START(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %294

294:                                              ; preds = %256
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %295)
  %297 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %296, i32 0)
  br label %298

298:                                              ; preds = %294
  %299 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %299, %struct.sshbuf** %1, align 8
  %300 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %301 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %300, i32* null)
  %302 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %303 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %304 = call i32 @BN_num_bits(%struct.sshbuf* %303)
  %305 = call i32 @sshbuf_put_u16(%struct.sshbuf* %302, i32 %304)
  %306 = call i32 @ASSERT_INT_EQ(i32 %305, i32 0)
  %307 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %309 = call i32 @sshbuf_put(%struct.sshbuf* %307, i32* %308, i32 63)
  %310 = call i32 @ASSERT_INT_EQ(i32 %309, i32 0)
  %311 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %312 = call i64 @sshbuf_len(%struct.sshbuf* %311)
  %313 = call i32 @ASSERT_SIZE_T_EQ(i64 %312, i32 65)
  %314 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %314, %struct.sshbuf** %3, align 8
  %315 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %316 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %317 = call i32 @sshbuf_get_bignum1(%struct.sshbuf* %315, %struct.sshbuf* %316)
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  %320 = call i32 @ASSERT_INT_EQ(i32 %318, i32 %319)
  %321 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %322 = call i64 @sshbuf_len(%struct.sshbuf* %321)
  %323 = call i32 @ASSERT_SIZE_T_EQ(i64 %322, i32 65)
  %324 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %325 = call i32 @BN_free(%struct.sshbuf* %324)
  %326 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %327 = call i32 @BN_free(%struct.sshbuf* %326)
  %328 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %329 = call i32 @sshbuf_free(%struct.sshbuf* %328)
  %330 = call i32 (...) @TEST_DONE()
  %331 = call i32 @TEST_START(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %332

332:                                              ; preds = %298
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %333 = load i8*, i8** %4, align 8
  %334 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %333)
  %335 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %334, i32 0)
  br label %336

336:                                              ; preds = %332
  %337 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %337, %struct.sshbuf** %1, align 8
  %338 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %339 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %338, i32* null)
  %340 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %341 = call i32 @sshbuf_put_u16(%struct.sshbuf* %340, i32 65535)
  %342 = call i32 @ASSERT_INT_EQ(i32 %341, i32 0)
  %343 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %344 = call i32 @sshbuf_reserve(%struct.sshbuf* %343, i32 8192, i32* null)
  %345 = call i32 @ASSERT_INT_EQ(i32 %344, i32 0)
  %346 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %347 = call i64 @sshbuf_len(%struct.sshbuf* %346)
  %348 = call i32 @ASSERT_SIZE_T_EQ(i64 %347, i32 8194)
  %349 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %349, %struct.sshbuf** %3, align 8
  %350 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %351 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %352 = call i32 @sshbuf_get_bignum1(%struct.sshbuf* %350, %struct.sshbuf* %351)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @SSH_ERR_BIGNUM_TOO_LARGE, align 4
  %355 = call i32 @ASSERT_INT_EQ(i32 %353, i32 %354)
  %356 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %357 = call i64 @sshbuf_len(%struct.sshbuf* %356)
  %358 = call i32 @ASSERT_SIZE_T_EQ(i64 %357, i32 8194)
  %359 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %360 = call i32 @BN_free(%struct.sshbuf* %359)
  %361 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %362 = call i32 @BN_free(%struct.sshbuf* %361)
  %363 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %364 = call i32 @sshbuf_free(%struct.sshbuf* %363)
  %365 = call i32 (...) @TEST_DONE()
  %366 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %367

367:                                              ; preds = %336
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %368 = load i8*, i8** %5, align 8
  %369 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %368)
  %370 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %369, i32 0)
  br label %371

371:                                              ; preds = %367
  %372 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %372, %struct.sshbuf** %1, align 8
  %373 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %374 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %373, i32* null)
  %375 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %376 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %377 = call i32 @BN_num_bits(%struct.sshbuf* %376)
  %378 = call i32 @sshbuf_put_u16(%struct.sshbuf* %375, i32 %377)
  %379 = call i32 @ASSERT_INT_EQ(i32 %378, i32 0)
  %380 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %381 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %382 = call i32 @sshbuf_put(%struct.sshbuf* %380, i32* %381, i32 76)
  %383 = call i32 @ASSERT_INT_EQ(i32 %382, i32 0)
  %384 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %385 = call i64 @sshbuf_len(%struct.sshbuf* %384)
  %386 = call i32 @ASSERT_SIZE_T_EQ(i64 %385, i32 78)
  %387 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %388 = call i32 @sshbuf_put_u16(%struct.sshbuf* %387, i32 53263)
  %389 = call i32 @ASSERT_INT_EQ(i32 %388, i32 0)
  %390 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %390, %struct.sshbuf** %3, align 8
  %391 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %392 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %393 = call i32 @sshbuf_get_bignum1(%struct.sshbuf* %391, %struct.sshbuf* %392)
  %394 = call i32 @ASSERT_INT_EQ(i32 %393, i32 0)
  %395 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %396 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %397 = call i32 @ASSERT_BIGNUM_EQ(%struct.sshbuf* %395, %struct.sshbuf* %396)
  %398 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %399 = call i64 @sshbuf_len(%struct.sshbuf* %398)
  %400 = call i32 @ASSERT_SIZE_T_EQ(i64 %399, i32 2)
  %401 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %402 = call i32 @BN_free(%struct.sshbuf* %401)
  %403 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %404 = call i32 @BN_free(%struct.sshbuf* %403)
  %405 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %406 = call i32 @sshbuf_free(%struct.sshbuf* %405)
  %407 = call i32 (...) @TEST_DONE()
  %408 = call i32 @TEST_START(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %409

409:                                              ; preds = %371
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %410 = load i8*, i8** %5, align 8
  %411 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %410)
  %412 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %411, i32 0)
  br label %413

413:                                              ; preds = %409
  %414 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %414, %struct.sshbuf** %1, align 8
  %415 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %416 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %415, i32* null)
  %417 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %418 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %419 = call i32 @BN_num_bits(%struct.sshbuf* %418)
  %420 = call i32 @sshbuf_put_u16(%struct.sshbuf* %417, i32 %419)
  %421 = call i32 @ASSERT_INT_EQ(i32 %420, i32 0)
  %422 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %423 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %424 = call i32 @sshbuf_put(%struct.sshbuf* %422, i32* %423, i32 75)
  %425 = call i32 @ASSERT_INT_EQ(i32 %424, i32 0)
  %426 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %427 = call i64 @sshbuf_len(%struct.sshbuf* %426)
  %428 = call i32 @ASSERT_SIZE_T_EQ(i64 %427, i32 77)
  %429 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %429, %struct.sshbuf** %3, align 8
  %430 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %431 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %432 = call i32 @sshbuf_get_bignum1(%struct.sshbuf* %430, %struct.sshbuf* %431)
  store i32 %432, i32* %8, align 4
  %433 = load i32, i32* %8, align 4
  %434 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  %435 = call i32 @ASSERT_INT_EQ(i32 %433, i32 %434)
  %436 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %437 = call i64 @sshbuf_len(%struct.sshbuf* %436)
  %438 = call i32 @ASSERT_SIZE_T_EQ(i64 %437, i32 77)
  %439 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %440 = call i32 @BN_free(%struct.sshbuf* %439)
  %441 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %442 = call i32 @BN_free(%struct.sshbuf* %441)
  %443 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %444 = call i32 @sshbuf_free(%struct.sshbuf* %443)
  %445 = call i32 (...) @TEST_DONE()
  %446 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %447

447:                                              ; preds = %413
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %448 = load i8*, i8** %4, align 8
  %449 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %448)
  %450 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %449, i32 0)
  br label %451

451:                                              ; preds = %447
  %452 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %452, %struct.sshbuf** %1, align 8
  %453 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %454 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %453, i32* null)
  %455 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %456 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %457 = call i32 @BN_num_bytes(%struct.sshbuf* %456)
  %458 = call i32 @sshbuf_put_u32(%struct.sshbuf* %455, i32 %457)
  %459 = call i32 @ASSERT_INT_EQ(i32 %458, i32 0)
  %460 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %462 = call i32 @sshbuf_put(%struct.sshbuf* %460, i32* %461, i32 64)
  %463 = call i32 @ASSERT_INT_EQ(i32 %462, i32 0)
  %464 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %465 = call i64 @sshbuf_len(%struct.sshbuf* %464)
  %466 = call i32 @ASSERT_SIZE_T_EQ(i64 %465, i32 68)
  %467 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %468 = call i32 @sshbuf_put_u16(%struct.sshbuf* %467, i32 53263)
  %469 = call i32 @ASSERT_INT_EQ(i32 %468, i32 0)
  %470 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %470, %struct.sshbuf** %3, align 8
  %471 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %472 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %473 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %471, %struct.sshbuf* %472)
  %474 = call i32 @ASSERT_INT_EQ(i32 %473, i32 0)
  %475 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %476 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %477 = call i32 @ASSERT_BIGNUM_EQ(%struct.sshbuf* %475, %struct.sshbuf* %476)
  %478 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %479 = call i64 @sshbuf_len(%struct.sshbuf* %478)
  %480 = call i32 @ASSERT_SIZE_T_EQ(i64 %479, i32 2)
  %481 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %482 = call i32 @BN_free(%struct.sshbuf* %481)
  %483 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %484 = call i32 @BN_free(%struct.sshbuf* %483)
  %485 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %486 = call i32 @sshbuf_free(%struct.sshbuf* %485)
  %487 = call i32 (...) @TEST_DONE()
  %488 = call i32 @TEST_START(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %489

489:                                              ; preds = %451
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %490 = load i8*, i8** %4, align 8
  %491 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %490)
  %492 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %491, i32 0)
  br label %493

493:                                              ; preds = %489
  %494 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %494, %struct.sshbuf** %1, align 8
  %495 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %496 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %495, i32* null)
  %497 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %498 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %499 = call i32 @BN_num_bytes(%struct.sshbuf* %498)
  %500 = call i32 @sshbuf_put_u32(%struct.sshbuf* %497, i32 %499)
  %501 = call i32 @ASSERT_INT_EQ(i32 %500, i32 0)
  %502 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %503 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %504 = call i32 @sshbuf_put(%struct.sshbuf* %502, i32* %503, i32 63)
  %505 = call i32 @ASSERT_INT_EQ(i32 %504, i32 0)
  %506 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %506, %struct.sshbuf** %3, align 8
  %507 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %508 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %509 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %507, %struct.sshbuf* %508)
  store i32 %509, i32* %8, align 4
  %510 = load i32, i32* %8, align 4
  %511 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  %512 = call i32 @ASSERT_INT_EQ(i32 %510, i32 %511)
  %513 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %514 = call i64 @sshbuf_len(%struct.sshbuf* %513)
  %515 = call i32 @ASSERT_SIZE_T_EQ(i64 %514, i32 67)
  %516 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %517 = call i32 @BN_free(%struct.sshbuf* %516)
  %518 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %519 = call i32 @BN_free(%struct.sshbuf* %518)
  %520 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %521 = call i32 @sshbuf_free(%struct.sshbuf* %520)
  %522 = call i32 (...) @TEST_DONE()
  %523 = call i32 @TEST_START(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %524

524:                                              ; preds = %493
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %525 = load i8*, i8** %4, align 8
  %526 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %525)
  %527 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %526, i32 0)
  br label %528

528:                                              ; preds = %524
  %529 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %529, %struct.sshbuf** %1, align 8
  %530 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %531 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %530, i32* null)
  %532 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %533 = call i32 @sshbuf_put_u32(%struct.sshbuf* %532, i32 65536)
  %534 = call i32 @ASSERT_INT_EQ(i32 %533, i32 0)
  %535 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %536 = call i32 @sshbuf_reserve(%struct.sshbuf* %535, i32 65536, i32* null)
  %537 = call i32 @ASSERT_INT_EQ(i32 %536, i32 0)
  %538 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %538, %struct.sshbuf** %3, align 8
  %539 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %540 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %541 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %539, %struct.sshbuf* %540)
  store i32 %541, i32* %8, align 4
  %542 = load i32, i32* %8, align 4
  %543 = load i32, i32* @SSH_ERR_BIGNUM_TOO_LARGE, align 4
  %544 = call i32 @ASSERT_INT_EQ(i32 %542, i32 %543)
  %545 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %546 = call i64 @sshbuf_len(%struct.sshbuf* %545)
  %547 = call i32 @ASSERT_SIZE_T_EQ(i64 %546, i32 65540)
  %548 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %549 = call i32 @BN_free(%struct.sshbuf* %548)
  %550 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %551 = call i32 @BN_free(%struct.sshbuf* %550)
  %552 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %553 = call i32 @sshbuf_free(%struct.sshbuf* %552)
  %554 = call i32 (...) @TEST_DONE()
  %555 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %556

556:                                              ; preds = %528
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %557 = load i8*, i8** %5, align 8
  %558 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %557)
  %559 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %558, i32 0)
  br label %560

560:                                              ; preds = %556
  %561 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %561, %struct.sshbuf** %1, align 8
  %562 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %563 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %562, i32* null)
  %564 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %565 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %566 = call i32 @BN_num_bytes(%struct.sshbuf* %565)
  %567 = add nsw i32 %566, 1
  %568 = call i32 @sshbuf_put_u32(%struct.sshbuf* %564, i32 %567)
  %569 = call i32 @ASSERT_INT_EQ(i32 %568, i32 0)
  %570 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %571 = call i32 @sshbuf_put_u8(%struct.sshbuf* %570, i32 0)
  %572 = call i32 @ASSERT_INT_EQ(i32 %571, i32 0)
  %573 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %574 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %575 = call i32 @sshbuf_put(%struct.sshbuf* %573, i32* %574, i32 76)
  %576 = call i32 @ASSERT_INT_EQ(i32 %575, i32 0)
  %577 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %578 = call i64 @sshbuf_len(%struct.sshbuf* %577)
  %579 = call i32 @ASSERT_SIZE_T_EQ(i64 %578, i32 81)
  %580 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %581 = call i32 @sshbuf_put_u16(%struct.sshbuf* %580, i32 53263)
  %582 = call i32 @ASSERT_INT_EQ(i32 %581, i32 0)
  %583 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %583, %struct.sshbuf** %3, align 8
  %584 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %585 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %586 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %584, %struct.sshbuf* %585)
  %587 = call i32 @ASSERT_INT_EQ(i32 %586, i32 0)
  %588 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %589 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %590 = call i32 @ASSERT_BIGNUM_EQ(%struct.sshbuf* %588, %struct.sshbuf* %589)
  %591 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %592 = call i64 @sshbuf_len(%struct.sshbuf* %591)
  %593 = call i32 @ASSERT_SIZE_T_EQ(i64 %592, i32 2)
  %594 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %595 = call i32 @BN_free(%struct.sshbuf* %594)
  %596 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %597 = call i32 @BN_free(%struct.sshbuf* %596)
  %598 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %599 = call i32 @sshbuf_free(%struct.sshbuf* %598)
  %600 = call i32 (...) @TEST_DONE()
  %601 = call i32 @TEST_START(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  br label %602

602:                                              ; preds = %560
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %603 = load i8*, i8** %5, align 8
  %604 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %603)
  %605 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %604, i32 0)
  br label %606

606:                                              ; preds = %602
  %607 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %607, %struct.sshbuf** %1, align 8
  %608 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %609 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %608, i32* null)
  %610 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %611 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %612 = call i32 @BN_num_bytes(%struct.sshbuf* %611)
  %613 = add nsw i32 %612, 1
  %614 = call i32 @sshbuf_put_u32(%struct.sshbuf* %610, i32 %613)
  %615 = call i32 @ASSERT_INT_EQ(i32 %614, i32 0)
  %616 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %617 = call i32 @sshbuf_put_u8(%struct.sshbuf* %616, i32 0)
  %618 = call i32 @ASSERT_INT_EQ(i32 %617, i32 0)
  %619 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %620 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %621 = call i32 @sshbuf_put(%struct.sshbuf* %619, i32* %620, i32 75)
  %622 = call i32 @ASSERT_INT_EQ(i32 %621, i32 0)
  %623 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %623, %struct.sshbuf** %3, align 8
  %624 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %625 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %626 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %624, %struct.sshbuf* %625)
  store i32 %626, i32* %8, align 4
  %627 = load i32, i32* %8, align 4
  %628 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  %629 = call i32 @ASSERT_INT_EQ(i32 %627, i32 %628)
  %630 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %631 = call i64 @sshbuf_len(%struct.sshbuf* %630)
  %632 = call i32 @ASSERT_SIZE_T_EQ(i64 %631, i32 80)
  %633 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %634 = call i32 @BN_free(%struct.sshbuf* %633)
  %635 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %636 = call i32 @BN_free(%struct.sshbuf* %635)
  %637 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %638 = call i32 @sshbuf_free(%struct.sshbuf* %637)
  %639 = call i32 (...) @TEST_DONE()
  %640 = call i32 @TEST_START(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %641

641:                                              ; preds = %606
  store %struct.sshbuf* null, %struct.sshbuf** %2, align 8
  %642 = load i8*, i8** %5, align 8
  %643 = call i32 (%struct.sshbuf**, i8*, ...) bitcast (i32 (...)* @BN_hex2bn to i32 (%struct.sshbuf**, i8*, ...)*)(%struct.sshbuf** %2, i8* %642)
  %644 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ASSERT_INT_GT to i32 (i32, i32, ...)*)(i32 %643, i32 0)
  br label %645

645:                                              ; preds = %641
  %646 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %646, %struct.sshbuf** %1, align 8
  %647 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %648 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %647, i32* null)
  %649 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %650 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %651 = call i32 @BN_num_bytes(%struct.sshbuf* %650)
  %652 = call i32 @sshbuf_put_u32(%struct.sshbuf* %649, i32 %651)
  %653 = call i32 @ASSERT_INT_EQ(i32 %652, i32 0)
  %654 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %655 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  %656 = call i32 @sshbuf_put(%struct.sshbuf* %654, i32* %655, i32 76)
  %657 = call i32 @ASSERT_INT_EQ(i32 %656, i32 0)
  %658 = call %struct.sshbuf* (...) @BN_new()
  store %struct.sshbuf* %658, %struct.sshbuf** %3, align 8
  %659 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %660 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %661 = call i32 @sshbuf_get_bignum2(%struct.sshbuf* %659, %struct.sshbuf* %660)
  store i32 %661, i32* %8, align 4
  %662 = load i32, i32* %8, align 4
  %663 = load i32, i32* @SSH_ERR_BIGNUM_IS_NEGATIVE, align 4
  %664 = call i32 @ASSERT_INT_EQ(i32 %662, i32 %663)
  %665 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %666 = call i64 @sshbuf_len(%struct.sshbuf* %665)
  %667 = call i32 @ASSERT_SIZE_T_EQ(i64 %666, i32 80)
  %668 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %669 = call i32 @BN_free(%struct.sshbuf* %668)
  %670 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %671 = call i32 @BN_free(%struct.sshbuf* %670)
  %672 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %673 = call i32 @sshbuf_free(%struct.sshbuf* %672)
  %674 = call i32 (...) @TEST_DONE()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_START(i8*) #2

declare dso_local i32 @ASSERT_INT_GT(...) #2

declare dso_local i32 @BN_hex2bn(...) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #2

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #2

declare dso_local i32 @sshbuf_put_bignum1(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i32 @ASSERT_SIZE_T_EQ(i64, i32) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32 @ASSERT_U16_EQ(i32, i32) #2

declare dso_local i32 @PEEK_U16(i32*) #2

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @BN_num_bits(%struct.sshbuf*) #2

declare dso_local i32 @ASSERT_MEM_EQ(i32*, i32*, i32) #2

declare dso_local i32 @BN_free(%struct.sshbuf*) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

declare dso_local i32 @TEST_DONE(...) #2

declare dso_local i32 @sshbuf_set_max_size(%struct.sshbuf*, i32) #2

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i32 @ASSERT_U32_EQ(i32, i64) #2

declare dso_local i32 @PEEK_U32(i32*) #2

declare dso_local i32 @BN_num_bytes(%struct.sshbuf*) #2

declare dso_local i32 @ASSERT_U8_EQ(i32, i32) #2

declare dso_local i32 @sshbuf_put_u16(%struct.sshbuf*, i32) #2

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i32) #2

declare dso_local %struct.sshbuf* @BN_new(...) #2

declare dso_local i32 @sshbuf_get_bignum1(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i32 @ASSERT_BIGNUM_EQ(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i32, i32*) #2

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #2

declare dso_local i32 @sshbuf_get_bignum2(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
