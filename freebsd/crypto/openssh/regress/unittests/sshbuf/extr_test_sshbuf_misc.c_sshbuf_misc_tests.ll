; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_misc.c_sshbuf_misc_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_misc.c_sshbuf_misc_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type opaque

@.str = private unnamed_addr constant [12 x i8] c"sshbuf_dump\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"12 34 56 78\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"sshbuf_dtob16\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"sshbuf_dtob64 len 1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"EQ==\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"sshbuf_dtob64 len 2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ESI=\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"sshbuf_dtob64 len 3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ESIz\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"sshbuf_dtob64 len 8191\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"sshbuf_b64tod len 1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"0A==\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"sshbuf_b64tod len 2\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"0A8=\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"sshbuf_b64tod len 4\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"0A/QDw==\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"sshbuf_dup_string\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"quad1\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"quad2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_misc_tests() #0 {
  %1 = alloca %struct.sshbuf*, align 8
  %2 = alloca [512 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = call i32 @TEST_START(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* (...) @tmpfile()
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @ASSERT_PTR_NE(i8* %8, i32* null)
  %10 = call i8* (...) @sshbuf_new()
  %11 = bitcast i8* %10 to %struct.sshbuf*
  store %struct.sshbuf* %11, %struct.sshbuf** %1, align 8
  %12 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %13 = bitcast %struct.sshbuf* %12 to i8*
  %14 = call i32 @ASSERT_PTR_NE(i8* %13, i32* null)
  %15 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %16 = bitcast %struct.sshbuf* %15 to i8*
  %17 = call i32 @sshbuf_put_u32(i8* %16, i32 305419896)
  %18 = call i32 @ASSERT_INT_EQ(i32 %17, i32 0)
  %19 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %20 = bitcast %struct.sshbuf* %19 to i8*
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sshbuf_dump(i8* %20, i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @fflush(i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @rewind(i8* %25)
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @fread(i8* %27, i32 1, i32 512, i8* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @ferror(i8* %30)
  %32 = call i32 @ASSERT_INT_EQ(i32 %31, i32 0)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @feof(i8* %33)
  %35 = call i32 @ASSERT_INT_NE(i32 %34, i32 0)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ASSERT_SIZE_T_GT(i64 %36, i32 0)
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %41 = call i8* @strstr(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ASSERT_PTR_NE(i8* %41, i32* null)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @fclose(i8* %43)
  %45 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %46 = bitcast %struct.sshbuf* %45 to i8*
  %47 = call i32 @sshbuf_free(i8* %46)
  %48 = call i32 (...) @TEST_DONE()
  %49 = call i32 @TEST_START(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i8* (...) @sshbuf_new()
  %51 = bitcast i8* %50 to %struct.sshbuf*
  store %struct.sshbuf* %51, %struct.sshbuf** %1, align 8
  %52 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %53 = bitcast %struct.sshbuf* %52 to i8*
  %54 = call i32 @ASSERT_PTR_NE(i8* %53, i32* null)
  %55 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %56 = bitcast %struct.sshbuf* %55 to i8*
  %57 = call i32 @sshbuf_put_u32(i8* %56, i32 305419896)
  %58 = call i32 @ASSERT_INT_EQ(i32 %57, i32 0)
  %59 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %60 = bitcast %struct.sshbuf* %59 to i8*
  %61 = call i8* @sshbuf_dtob16(i8* %60)
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @ASSERT_PTR_NE(i8* %62, i32* null)
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @ASSERT_STRING_EQ(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %69 = bitcast %struct.sshbuf* %68 to i8*
  %70 = call i32 @sshbuf_free(i8* %69)
  %71 = call i32 (...) @TEST_DONE()
  %72 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i8* (...) @sshbuf_new()
  %74 = bitcast i8* %73 to %struct.sshbuf*
  store %struct.sshbuf* %74, %struct.sshbuf** %1, align 8
  %75 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %76 = bitcast %struct.sshbuf* %75 to i8*
  %77 = call i32 @ASSERT_PTR_NE(i8* %76, i32* null)
  %78 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %79 = bitcast %struct.sshbuf* %78 to i8*
  %80 = call i32 @sshbuf_put_u8(i8* %79, i32 17)
  %81 = call i32 @ASSERT_INT_EQ(i32 %80, i32 0)
  %82 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %83 = bitcast %struct.sshbuf* %82 to i8*
  %84 = call i8* @sshbuf_dtob64(i8* %83)
  store i8* %84, i8** %3, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @ASSERT_PTR_NE(i8* %85, i32* null)
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @ASSERT_STRING_EQ(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %92 = bitcast %struct.sshbuf* %91 to i8*
  %93 = call i32 @sshbuf_free(i8* %92)
  %94 = call i32 (...) @TEST_DONE()
  %95 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i8* (...) @sshbuf_new()
  %97 = bitcast i8* %96 to %struct.sshbuf*
  store %struct.sshbuf* %97, %struct.sshbuf** %1, align 8
  %98 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %99 = bitcast %struct.sshbuf* %98 to i8*
  %100 = call i32 @ASSERT_PTR_NE(i8* %99, i32* null)
  %101 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %102 = bitcast %struct.sshbuf* %101 to i8*
  %103 = call i32 @sshbuf_put_u8(i8* %102, i32 17)
  %104 = call i32 @ASSERT_INT_EQ(i32 %103, i32 0)
  %105 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %106 = bitcast %struct.sshbuf* %105 to i8*
  %107 = call i32 @sshbuf_put_u8(i8* %106, i32 34)
  %108 = call i32 @ASSERT_INT_EQ(i32 %107, i32 0)
  %109 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %110 = bitcast %struct.sshbuf* %109 to i8*
  %111 = call i8* @sshbuf_dtob64(i8* %110)
  store i8* %111, i8** %3, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @ASSERT_PTR_NE(i8* %112, i32* null)
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @ASSERT_STRING_EQ(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %119 = bitcast %struct.sshbuf* %118 to i8*
  %120 = call i32 @sshbuf_free(i8* %119)
  %121 = call i32 (...) @TEST_DONE()
  %122 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %123 = call i8* (...) @sshbuf_new()
  %124 = bitcast i8* %123 to %struct.sshbuf*
  store %struct.sshbuf* %124, %struct.sshbuf** %1, align 8
  %125 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %126 = bitcast %struct.sshbuf* %125 to i8*
  %127 = call i32 @ASSERT_PTR_NE(i8* %126, i32* null)
  %128 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %129 = bitcast %struct.sshbuf* %128 to i8*
  %130 = call i32 @sshbuf_put_u8(i8* %129, i32 17)
  %131 = call i32 @ASSERT_INT_EQ(i32 %130, i32 0)
  %132 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %133 = bitcast %struct.sshbuf* %132 to i8*
  %134 = call i32 @sshbuf_put_u8(i8* %133, i32 34)
  %135 = call i32 @ASSERT_INT_EQ(i32 %134, i32 0)
  %136 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %137 = bitcast %struct.sshbuf* %136 to i8*
  %138 = call i32 @sshbuf_put_u8(i8* %137, i32 51)
  %139 = call i32 @ASSERT_INT_EQ(i32 %138, i32 0)
  %140 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %141 = bitcast %struct.sshbuf* %140 to i8*
  %142 = call i8* @sshbuf_dtob64(i8* %141)
  store i8* %142, i8** %3, align 8
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @ASSERT_PTR_NE(i8* %143, i32* null)
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @ASSERT_STRING_EQ(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %150 = bitcast %struct.sshbuf* %149 to i8*
  %151 = call i32 @sshbuf_free(i8* %150)
  %152 = call i32 (...) @TEST_DONE()
  %153 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %154 = call i8* (...) @sshbuf_new()
  %155 = bitcast i8* %154 to %struct.sshbuf*
  store %struct.sshbuf* %155, %struct.sshbuf** %1, align 8
  %156 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %157 = bitcast %struct.sshbuf* %156 to i8*
  %158 = call i32 @ASSERT_PTR_NE(i8* %157, i32* null)
  %159 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %160 = bitcast %struct.sshbuf* %159 to i8*
  %161 = call i32 @sshbuf_reserve(i8* %160, i32 8192, i32* null)
  %162 = call i32 @ASSERT_INT_EQ(i32 %161, i32 0)
  %163 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %164 = bitcast %struct.sshbuf* %163 to i8*
  %165 = call i32 @sshbuf_mutable_ptr(i8* %164)
  %166 = call i32 @bzero(i32 %165, i32 8192)
  %167 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %168 = bitcast %struct.sshbuf* %167 to i8*
  %169 = call i8* @sshbuf_dtob64(i8* %168)
  store i8* %169, i8** %3, align 8
  %170 = load i8*, i8** %3, align 8
  %171 = call i32 @ASSERT_PTR_NE(i8* %170, i32* null)
  %172 = load i8*, i8** %3, align 8
  %173 = call i32 @strlen(i8* %172)
  %174 = call i32 @ASSERT_SIZE_T_EQ(i32 %173, i32 10924)
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 @free(i8* %175)
  %177 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %178 = bitcast %struct.sshbuf* %177 to i8*
  %179 = call i32 @sshbuf_free(i8* %178)
  %180 = call i32 (...) @TEST_DONE()
  %181 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %182 = call i8* (...) @sshbuf_new()
  %183 = bitcast i8* %182 to %struct.sshbuf*
  store %struct.sshbuf* %183, %struct.sshbuf** %1, align 8
  %184 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %185 = bitcast %struct.sshbuf* %184 to i8*
  %186 = call i32 @ASSERT_PTR_NE(i8* %185, i32* null)
  %187 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %188 = bitcast %struct.sshbuf* %187 to i8*
  %189 = call i32 @sshbuf_b64tod(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %190 = call i32 @ASSERT_INT_EQ(i32 %189, i32 0)
  %191 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %192 = bitcast %struct.sshbuf* %191 to i8*
  %193 = call i32 @sshbuf_len(i8* %192)
  %194 = call i32 @ASSERT_SIZE_T_EQ(i32 %193, i32 1)
  %195 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %196 = bitcast %struct.sshbuf* %195 to i8*
  %197 = call i32* @sshbuf_ptr(i8* %196)
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ASSERT_U8_EQ(i32 %198, i32 208)
  %200 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %201 = bitcast %struct.sshbuf* %200 to i8*
  %202 = call i32 @sshbuf_free(i8* %201)
  %203 = call i32 (...) @TEST_DONE()
  %204 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %205 = call i8* (...) @sshbuf_new()
  %206 = bitcast i8* %205 to %struct.sshbuf*
  store %struct.sshbuf* %206, %struct.sshbuf** %1, align 8
  %207 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %208 = bitcast %struct.sshbuf* %207 to i8*
  %209 = call i32 @ASSERT_PTR_NE(i8* %208, i32* null)
  %210 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %211 = bitcast %struct.sshbuf* %210 to i8*
  %212 = call i32 @sshbuf_b64tod(i8* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %213 = call i32 @ASSERT_INT_EQ(i32 %212, i32 0)
  %214 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %215 = bitcast %struct.sshbuf* %214 to i8*
  %216 = call i32 @sshbuf_len(i8* %215)
  %217 = call i32 @ASSERT_SIZE_T_EQ(i32 %216, i32 2)
  %218 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %219 = bitcast %struct.sshbuf* %218 to i8*
  %220 = call i32* @sshbuf_ptr(i8* %219)
  %221 = call i32 @PEEK_U16(i32* %220)
  %222 = call i32 @ASSERT_U16_EQ(i32 %221, i32 53263)
  %223 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %224 = bitcast %struct.sshbuf* %223 to i8*
  %225 = call i32 @sshbuf_free(i8* %224)
  %226 = call i32 (...) @TEST_DONE()
  %227 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %228 = call i8* (...) @sshbuf_new()
  %229 = bitcast i8* %228 to %struct.sshbuf*
  store %struct.sshbuf* %229, %struct.sshbuf** %1, align 8
  %230 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %231 = bitcast %struct.sshbuf* %230 to i8*
  %232 = call i32 @ASSERT_PTR_NE(i8* %231, i32* null)
  %233 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %234 = bitcast %struct.sshbuf* %233 to i8*
  %235 = call i32 @sshbuf_b64tod(i8* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %236 = call i32 @ASSERT_INT_EQ(i32 %235, i32 0)
  %237 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %238 = bitcast %struct.sshbuf* %237 to i8*
  %239 = call i32 @sshbuf_len(i8* %238)
  %240 = call i32 @ASSERT_SIZE_T_EQ(i32 %239, i32 4)
  %241 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %242 = bitcast %struct.sshbuf* %241 to i8*
  %243 = call i32* @sshbuf_ptr(i8* %242)
  %244 = call i32 @PEEK_U32(i32* %243)
  %245 = call i32 @ASSERT_U32_EQ(i32 %244, i32 -804270065)
  %246 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %247 = bitcast %struct.sshbuf* %246 to i8*
  %248 = call i32 @sshbuf_free(i8* %247)
  %249 = call i32 (...) @TEST_DONE()
  %250 = call i32 @TEST_START(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %251 = call i8* (...) @sshbuf_new()
  %252 = bitcast i8* %251 to %struct.sshbuf*
  store %struct.sshbuf* %252, %struct.sshbuf** %1, align 8
  %253 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %254 = bitcast %struct.sshbuf* %253 to i8*
  %255 = call i32 @ASSERT_PTR_NE(i8* %254, i32* null)
  %256 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %257 = bitcast %struct.sshbuf* %256 to i8*
  %258 = call i8* @sshbuf_dup_string(i8* %257)
  store i8* %258, i8** %3, align 8
  %259 = load i8*, i8** %3, align 8
  %260 = call i32 @ASSERT_PTR_NE(i8* %259, i32* null)
  %261 = load i8*, i8** %3, align 8
  %262 = call i32 @strlen(i8* %261)
  %263 = call i32 @ASSERT_SIZE_T_EQ(i32 %262, i32 0)
  %264 = load i8*, i8** %3, align 8
  %265 = call i32 @free(i8* %264)
  %266 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %267 = bitcast %struct.sshbuf* %266 to i8*
  %268 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %269 = call i32 @sshbuf_put(i8* %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %268)
  %270 = call i32 @ASSERT_INT_EQ(i32 %269, i32 0)
  %271 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %272 = bitcast %struct.sshbuf* %271 to i8*
  %273 = call i8* @sshbuf_dup_string(i8* %272)
  store i8* %273, i8** %3, align 8
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 @ASSERT_PTR_NE(i8* %274, i32* null)
  %276 = load i8*, i8** %3, align 8
  %277 = call i32 @strlen(i8* %276)
  %278 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %279 = call i32 @ASSERT_SIZE_T_EQ(i32 %277, i32 %278)
  %280 = load i8*, i8** %3, align 8
  %281 = call i32 @ASSERT_STRING_EQ(i8* %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %282 = load i8*, i8** %3, align 8
  %283 = call i32 @free(i8* %282)
  %284 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %285 = bitcast %struct.sshbuf* %284 to i8*
  %286 = call i32 @sshbuf_put(i8* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 1)
  %287 = call i32 @ASSERT_INT_EQ(i32 %286, i32 0)
  %288 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %289 = bitcast %struct.sshbuf* %288 to i8*
  %290 = call i8* @sshbuf_dup_string(i8* %289)
  store i8* %290, i8** %3, align 8
  %291 = load i8*, i8** %3, align 8
  %292 = call i32 @ASSERT_PTR_NE(i8* %291, i32* null)
  %293 = load i8*, i8** %3, align 8
  %294 = call i32 @strlen(i8* %293)
  %295 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %296 = call i32 @ASSERT_SIZE_T_EQ(i32 %294, i32 %295)
  %297 = load i8*, i8** %3, align 8
  %298 = call i32 @ASSERT_STRING_EQ(i8* %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %299 = load i8*, i8** %3, align 8
  %300 = call i32 @free(i8* %299)
  %301 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %302 = bitcast %struct.sshbuf* %301 to i8*
  %303 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %304 = call i32 @sshbuf_put(i8* %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %303)
  %305 = call i32 @ASSERT_INT_EQ(i32 %304, i32 0)
  %306 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %307 = bitcast %struct.sshbuf* %306 to i8*
  %308 = call i8* @sshbuf_dup_string(i8* %307)
  store i8* %308, i8** %3, align 8
  %309 = load i8*, i8** %3, align 8
  %310 = call i32 @ASSERT_PTR_EQ(i8* %309, i32* null)
  %311 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %312 = bitcast %struct.sshbuf* %311 to i8*
  %313 = call i32 @sshbuf_free(i8* %312)
  %314 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local i8* @tmpfile(...) #1

declare dso_local i32 @ASSERT_PTR_NE(i8*, i32*) #1

declare dso_local i8* @sshbuf_new(...) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshbuf_put_u32(i8*, i32) #1

declare dso_local i32 @sshbuf_dump(i8*, i8*) #1

declare dso_local i32 @fflush(i8*) #1

declare dso_local i32 @rewind(i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i8*) #1

declare dso_local i32 @ferror(i8*) #1

declare dso_local i32 @ASSERT_INT_NE(i32, i32) #1

declare dso_local i32 @feof(i8*) #1

declare dso_local i32 @ASSERT_SIZE_T_GT(i64, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @sshbuf_free(i8*) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i8* @sshbuf_dtob16(i8*) #1

declare dso_local i32 @ASSERT_STRING_EQ(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshbuf_put_u8(i8*, i32) #1

declare dso_local i8* @sshbuf_dtob64(i8*) #1

declare dso_local i32 @sshbuf_reserve(i8*, i32, i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @sshbuf_mutable_ptr(i8*) #1

declare dso_local i32 @ASSERT_SIZE_T_EQ(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sshbuf_b64tod(i8*, i8*) #1

declare dso_local i32 @sshbuf_len(i8*) #1

declare dso_local i32 @ASSERT_U8_EQ(i32, i32) #1

declare dso_local i32* @sshbuf_ptr(i8*) #1

declare dso_local i32 @ASSERT_U16_EQ(i32, i32) #1

declare dso_local i32 @PEEK_U16(i32*) #1

declare dso_local i32 @ASSERT_U32_EQ(i32, i32) #1

declare dso_local i32 @PEEK_U32(i32*) #1

declare dso_local i8* @sshbuf_dup_string(i8*) #1

declare dso_local i32 @sshbuf_put(i8*, i8*, i32) #1

declare dso_local i32 @ASSERT_PTR_EQ(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
