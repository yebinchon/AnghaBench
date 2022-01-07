; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_sshkey_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_sshkey_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i32, i32, i32, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, i64, i64, %struct.sshkey**, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, %struct.sshkey* }
%struct.sshbuf = type { i32, i32, i32, i32, i32, %struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf*, i64, i64, %struct.sshbuf**, %struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf* }

@.str = private unnamed_addr constant [12 x i8] c"new invalid\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"new/free KEY_UNSPEC\00", align 1
@KEY_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"new/free KEY_RSA\00", align 1
@KEY_RSA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"new/free KEY_DSA\00", align 1
@KEY_DSA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"new/free KEY_ED25519\00", align 1
@KEY_ED25519 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"generate KEY_RSA too small modulus\00", align 1
@SSH_ERR_KEY_LENGTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"generate KEY_RSA too large modulus\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"generate KEY_DSA wrong bits\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"generate KEY_RSA\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"generate KEY_DSA\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"generate KEY_ED25519\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"demote KEY_RSA\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"equal KEY_RSA/demoted KEY_RSA\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"demote KEY_DSA\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"equal KEY_DSA/demoted KEY_DSA\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"demote KEY_ED25519\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"equal KEY_ED25519/demoted KEY_ED25519\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"equal mismatched key types\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"equal different keys\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"certify key\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ed25519_1.pub\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ed25519_2\00", align 1
@SSH2_CERT_TYPE_USER = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"estragon\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"vladimir\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"pozzo\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"lucky\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"force-command\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"/usr/bin/true\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"source-address\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"permit-X11-forwarding\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"permit-agent-forwarding\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"sign and verify RSA\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"rsa_1\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"rsa_2.pub\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"ssh-rsa\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"sign and verify RSA-SHA256\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"rsa-sha2-256\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"sign and verify RSA-SHA512\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"rsa-sha2-512\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"sign and verify DSA\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"dsa_1\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"dsa_2.pub\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"sign and verify ED25519\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"ed25519_1\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"ed25519_2.pub\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"nested certificate\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"rsa_1.pub\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"ssh-rsa-cert-v01@openssh.com\00", align 1
@SSH_ERR_KEY_CERT_INVALID_SIGN_KEY = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshkey_tests() #0 {
  %1 = alloca %struct.sshkey*, align 8
  %2 = alloca %struct.sshkey*, align 8
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = call i32 @TEST_START(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.sshkey* @sshkey_new(i32 -42)
  store %struct.sshkey* %10, %struct.sshkey** %1, align 8
  %11 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %12 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %11, i32* null)
  %13 = call i32 (...) @TEST_DONE()
  %14 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @KEY_UNSPEC, align 4
  %16 = call %struct.sshkey* @sshkey_new(i32 %15)
  store %struct.sshkey* %16, %struct.sshkey** %1, align 8
  %17 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %18 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %17, %struct.sshkey* null)
  %19 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %20 = call i32 @sshkey_free(%struct.sshkey* %19)
  %21 = call i32 (...) @TEST_DONE()
  %22 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @KEY_RSA, align 4
  %24 = call %struct.sshkey* @sshkey_new(i32 %23)
  store %struct.sshkey* %24, %struct.sshkey** %1, align 8
  %25 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %26 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %25, %struct.sshkey* null)
  %27 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %28 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %27, i32 0, i32 16
  %29 = load %struct.sshkey*, %struct.sshkey** %28, align 8
  %30 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %29, %struct.sshkey* null)
  %31 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %32 = call i32 @sshkey_free(%struct.sshkey* %31)
  %33 = call i32 (...) @TEST_DONE()
  %34 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @KEY_DSA, align 4
  %36 = call %struct.sshkey* @sshkey_new(i32 %35)
  store %struct.sshkey* %36, %struct.sshkey** %1, align 8
  %37 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %38 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %37, %struct.sshkey* null)
  %39 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %40 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %39, i32 0, i32 15
  %41 = load %struct.sshkey*, %struct.sshkey** %40, align 8
  %42 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %41, %struct.sshkey* null)
  %43 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %44 = call i32 @sshkey_free(%struct.sshkey* %43)
  %45 = call i32 (...) @TEST_DONE()
  %46 = call i32 @TEST_START(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @KEY_ED25519, align 4
  %48 = call %struct.sshkey* @sshkey_new(i32 %47)
  store %struct.sshkey* %48, %struct.sshkey** %1, align 8
  %49 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %50 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %49, %struct.sshkey* null)
  %51 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %52 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %51, i32 0, i32 12
  %53 = load %struct.sshkey*, %struct.sshkey** %52, align 8
  %54 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %53, i32* null)
  %55 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 13
  %57 = load %struct.sshkey*, %struct.sshkey** %56, align 8
  %58 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %57, i32* null)
  %59 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %60 = call i32 @sshkey_free(%struct.sshkey* %59)
  %61 = call i32 (...) @TEST_DONE()
  %62 = call i32 @TEST_START(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @KEY_RSA, align 4
  %64 = call i32 @sshkey_generate(i32 %63, i32 128, %struct.sshkey** %1)
  %65 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  %66 = call i32 @ASSERT_INT_EQ(i32 %64, i32 %65)
  %67 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %68 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %67, i32* null)
  %69 = call i32 (...) @TEST_DONE()
  %70 = call i32 @TEST_START(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @KEY_RSA, align 4
  %72 = call i32 @sshkey_generate(i32 %71, i32 1048576, %struct.sshkey** %1)
  %73 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  %74 = call i32 @ASSERT_INT_EQ(i32 %72, i32 %73)
  %75 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %76 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %75, i32* null)
  %77 = call i32 (...) @TEST_DONE()
  %78 = call i32 @TEST_START(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i32, i32* @KEY_DSA, align 4
  %80 = call i32 @sshkey_generate(i32 %79, i32 2048, %struct.sshkey** %1)
  %81 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  %82 = call i32 @ASSERT_INT_EQ(i32 %80, i32 %81)
  %83 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %84 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %83, i32* null)
  %85 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %86 = call i32 @sshkey_free(%struct.sshkey* %85)
  %87 = call i32 (...) @TEST_DONE()
  %88 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* @KEY_RSA, align 4
  %90 = call i32 @sshkey_generate(i32 %89, i32 767, %struct.sshkey** %5)
  %91 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  %92 = call i32 @ASSERT_INT_EQ(i32 %90, i32 %91)
  %93 = load i32, i32* @KEY_RSA, align 4
  %94 = call i32 @sshkey_generate(i32 %93, i32 1024, %struct.sshkey** %5)
  %95 = call i32 @ASSERT_INT_EQ(i32 %94, i32 0)
  %96 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %97 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %96, %struct.sshkey* null)
  %98 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %99 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %98, i32 0, i32 16
  %100 = load %struct.sshkey*, %struct.sshkey** %99, align 8
  %101 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %100, %struct.sshkey* null)
  %102 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %103 = call %struct.sshkey* @rsa_n(%struct.sshkey* %102)
  %104 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %103, %struct.sshkey* null)
  %105 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %106 = call %struct.sshkey* @rsa_e(%struct.sshkey* %105)
  %107 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %106, %struct.sshkey* null)
  %108 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %109 = call %struct.sshkey* @rsa_p(%struct.sshkey* %108)
  %110 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %109, %struct.sshkey* null)
  %111 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %112 = call %struct.sshkey* @rsa_n(%struct.sshkey* %111)
  %113 = call i32 @BN_num_bits(%struct.sshkey* %112)
  %114 = call i32 @ASSERT_INT_EQ(i32 %113, i32 1024)
  %115 = call i32 (...) @TEST_DONE()
  %116 = call i32 @TEST_START(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @KEY_DSA, align 4
  %118 = call i32 @sshkey_generate(i32 %117, i32 1024, %struct.sshkey** %6)
  %119 = call i32 @ASSERT_INT_EQ(i32 %118, i32 0)
  %120 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %121 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %120, %struct.sshkey* null)
  %122 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %123 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %122, i32 0, i32 15
  %124 = load %struct.sshkey*, %struct.sshkey** %123, align 8
  %125 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %124, %struct.sshkey* null)
  %126 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %127 = call %struct.sshkey* @dsa_g(%struct.sshkey* %126)
  %128 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %127, %struct.sshkey* null)
  %129 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %130 = call %struct.sshkey* @dsa_priv_key(%struct.sshkey* %129)
  %131 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %130, %struct.sshkey* null)
  %132 = call i32 (...) @TEST_DONE()
  %133 = call i32 @TEST_START(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %134 = load i32, i32* @KEY_ED25519, align 4
  %135 = call i32 @sshkey_generate(i32 %134, i32 256, %struct.sshkey** %7)
  %136 = call i32 @ASSERT_INT_EQ(i32 %135, i32 0)
  %137 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %138 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %137, %struct.sshkey* null)
  %139 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %140 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @KEY_ED25519, align 4
  %143 = call i32 @ASSERT_INT_EQ(i32 %141, i32 %142)
  %144 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %145 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %144, i32 0, i32 13
  %146 = load %struct.sshkey*, %struct.sshkey** %145, align 8
  %147 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %146, %struct.sshkey* null)
  %148 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %149 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %148, i32 0, i32 12
  %150 = load %struct.sshkey*, %struct.sshkey** %149, align 8
  %151 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %150, %struct.sshkey* null)
  %152 = call i32 (...) @TEST_DONE()
  %153 = call i32 @TEST_START(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %154 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %155 = call i32 @sshkey_demote(%struct.sshkey* %154, %struct.sshkey** %1)
  %156 = call i32 @ASSERT_INT_EQ(i32 %155, i32 0)
  %157 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %158 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %157, %struct.sshkey* null)
  %159 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %160 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %161 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %159, %struct.sshkey* %160)
  %162 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %163 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @KEY_RSA, align 4
  %166 = call i32 @ASSERT_INT_EQ(i32 %164, i32 %165)
  %167 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %168 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %167, i32 0, i32 16
  %169 = load %struct.sshkey*, %struct.sshkey** %168, align 8
  %170 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %169, %struct.sshkey* null)
  %171 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %172 = call %struct.sshkey* @rsa_n(%struct.sshkey* %171)
  %173 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %172, %struct.sshkey* null)
  %174 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %175 = call %struct.sshkey* @rsa_e(%struct.sshkey* %174)
  %176 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %175, %struct.sshkey* null)
  %177 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %178 = call %struct.sshkey* @rsa_p(%struct.sshkey* %177)
  %179 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %178, i32* null)
  %180 = call i32 (...) @TEST_DONE()
  %181 = call i32 @TEST_START(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %182 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %183 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %184 = call i32 @sshkey_equal(%struct.sshkey* %182, %struct.sshkey* %183)
  %185 = call i32 @ASSERT_INT_EQ(i32 %184, i32 1)
  %186 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %187 = call i32 @sshkey_free(%struct.sshkey* %186)
  %188 = call i32 (...) @TEST_DONE()
  %189 = call i32 @TEST_START(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %190 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %191 = call i32 @sshkey_demote(%struct.sshkey* %190, %struct.sshkey** %1)
  %192 = call i32 @ASSERT_INT_EQ(i32 %191, i32 0)
  %193 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %194 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %193, %struct.sshkey* null)
  %195 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %196 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %197 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %195, %struct.sshkey* %196)
  %198 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %199 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @KEY_DSA, align 4
  %202 = call i32 @ASSERT_INT_EQ(i32 %200, i32 %201)
  %203 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %204 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %203, i32 0, i32 15
  %205 = load %struct.sshkey*, %struct.sshkey** %204, align 8
  %206 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %205, %struct.sshkey* null)
  %207 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %208 = call %struct.sshkey* @dsa_g(%struct.sshkey* %207)
  %209 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %208, %struct.sshkey* null)
  %210 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %211 = call %struct.sshkey* @dsa_priv_key(%struct.sshkey* %210)
  %212 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %211, i32* null)
  %213 = call i32 (...) @TEST_DONE()
  %214 = call i32 @TEST_START(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %215 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %216 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %217 = call i32 @sshkey_equal(%struct.sshkey* %215, %struct.sshkey* %216)
  %218 = call i32 @ASSERT_INT_EQ(i32 %217, i32 1)
  %219 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %220 = call i32 @sshkey_free(%struct.sshkey* %219)
  %221 = call i32 (...) @TEST_DONE()
  %222 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %223 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %224 = call i32 @sshkey_demote(%struct.sshkey* %223, %struct.sshkey** %1)
  %225 = call i32 @ASSERT_INT_EQ(i32 %224, i32 0)
  %226 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %227 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %226, %struct.sshkey* null)
  %228 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %229 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %230 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %228, %struct.sshkey* %229)
  %231 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %232 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @KEY_ED25519, align 4
  %235 = call i32 @ASSERT_INT_EQ(i32 %233, i32 %234)
  %236 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %237 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %236, i32 0, i32 13
  %238 = load %struct.sshkey*, %struct.sshkey** %237, align 8
  %239 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %238, %struct.sshkey* null)
  %240 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %241 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %240, i32 0, i32 12
  %242 = load %struct.sshkey*, %struct.sshkey** %241, align 8
  %243 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %242, i32* null)
  %244 = call i32 (...) @TEST_DONE()
  %245 = call i32 @TEST_START(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %246 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %247 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %248 = call i32 @sshkey_equal(%struct.sshkey* %246, %struct.sshkey* %247)
  %249 = call i32 @ASSERT_INT_EQ(i32 %248, i32 1)
  %250 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %251 = call i32 @sshkey_free(%struct.sshkey* %250)
  %252 = call i32 (...) @TEST_DONE()
  %253 = call i32 @TEST_START(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %254 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %255 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %256 = call i32 @sshkey_equal(%struct.sshkey* %254, %struct.sshkey* %255)
  %257 = call i32 @ASSERT_INT_EQ(i32 %256, i32 0)
  %258 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %259 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %260 = call i32 @sshkey_equal(%struct.sshkey* %258, %struct.sshkey* %259)
  %261 = call i32 @ASSERT_INT_EQ(i32 %260, i32 0)
  %262 = call i32 (...) @TEST_DONE()
  %263 = call i32 @TEST_START(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %264 = load i32, i32* @KEY_RSA, align 4
  %265 = call i32 @sshkey_generate(i32 %264, i32 1024, %struct.sshkey** %1)
  %266 = call i32 @ASSERT_INT_EQ(i32 %265, i32 0)
  %267 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %268 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %269 = call i32 @sshkey_equal(%struct.sshkey* %267, %struct.sshkey* %268)
  %270 = call i32 @ASSERT_INT_EQ(i32 %269, i32 0)
  %271 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %272 = call i32 @sshkey_free(%struct.sshkey* %271)
  %273 = load i32, i32* @KEY_DSA, align 4
  %274 = call i32 @sshkey_generate(i32 %273, i32 1024, %struct.sshkey** %1)
  %275 = call i32 @ASSERT_INT_EQ(i32 %274, i32 0)
  %276 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %277 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %278 = call i32 @sshkey_equal(%struct.sshkey* %276, %struct.sshkey* %277)
  %279 = call i32 @ASSERT_INT_EQ(i32 %278, i32 0)
  %280 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %281 = call i32 @sshkey_free(%struct.sshkey* %280)
  %282 = load i32, i32* @KEY_ED25519, align 4
  %283 = call i32 @sshkey_generate(i32 %282, i32 256, %struct.sshkey** %1)
  %284 = call i32 @ASSERT_INT_EQ(i32 %283, i32 0)
  %285 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %286 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %287 = call i32 @sshkey_equal(%struct.sshkey* %285, %struct.sshkey* %286)
  %288 = call i32 @ASSERT_INT_EQ(i32 %287, i32 0)
  %289 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %290 = call i32 @sshkey_free(%struct.sshkey* %289)
  %291 = call i32 (...) @TEST_DONE()
  %292 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %293 = call i32 @sshkey_free(%struct.sshkey* %292)
  %294 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %295 = call i32 @sshkey_free(%struct.sshkey* %294)
  %296 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %297 = call i32 @sshkey_free(%struct.sshkey* %296)
  %298 = call i32 @TEST_START(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %299 = call i32 @test_data_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %300 = call i32 @sshkey_load_public(i32 %299, %struct.sshkey** %1, i32* null)
  %301 = call i32 @ASSERT_INT_EQ(i32 %300, i32 0)
  %302 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  store %struct.sshkey* %302, %struct.sshkey** %2, align 8
  %303 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %304 = call i32 @sshkey_to_certified(%struct.sshkey* %303)
  %305 = call i32 @ASSERT_INT_EQ(i32 %304, i32 0)
  %306 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %307 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %306, i32 0, i32 5
  %308 = load %struct.sshkey*, %struct.sshkey** %307, align 8
  %309 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %308, %struct.sshkey* null)
  %310 = load i32, i32* @SSH2_CERT_TYPE_USER, align 4
  %311 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %312 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %311, i32 0, i32 5
  %313 = load %struct.sshkey*, %struct.sshkey** %312, align 8
  %314 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %313, i32 0, i32 0
  store i32 %310, i32* %314, align 8
  %315 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %316 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %315, i32 0, i32 5
  %317 = load %struct.sshkey*, %struct.sshkey** %316, align 8
  %318 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %317, i32 0, i32 2
  store i32 1234, i32* %318, align 8
  %319 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %320 = bitcast i8* %319 to %struct.sshkey*
  %321 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %322 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %321, i32 0, i32 5
  %323 = load %struct.sshkey*, %struct.sshkey** %322, align 8
  %324 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %323, i32 0, i32 11
  store %struct.sshkey* %320, %struct.sshkey** %324, align 8
  %325 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %326 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %325, i32 0, i32 5
  %327 = load %struct.sshkey*, %struct.sshkey** %326, align 8
  %328 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %327, i32 0, i32 11
  %329 = load %struct.sshkey*, %struct.sshkey** %328, align 8
  %330 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %329, %struct.sshkey* null)
  %331 = call %struct.sshkey* @calloc(i32 4, i32 8)
  %332 = bitcast %struct.sshkey* %331 to %struct.sshkey**
  %333 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %334 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %333, i32 0, i32 5
  %335 = load %struct.sshkey*, %struct.sshkey** %334, align 8
  %336 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %335, i32 0, i32 10
  store %struct.sshkey** %332, %struct.sshkey*** %336, align 8
  %337 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %338 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %337, i32 0, i32 5
  %339 = load %struct.sshkey*, %struct.sshkey** %338, align 8
  %340 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %339, i32 0, i32 10
  %341 = load %struct.sshkey**, %struct.sshkey*** %340, align 8
  %342 = bitcast %struct.sshkey** %341 to %struct.sshkey*
  %343 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %342, %struct.sshkey* null)
  %344 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %345 = bitcast i8* %344 to %struct.sshkey*
  %346 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %347 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %346, i32 0, i32 5
  %348 = load %struct.sshkey*, %struct.sshkey** %347, align 8
  %349 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %348, i32 0, i32 10
  %350 = load %struct.sshkey**, %struct.sshkey*** %349, align 8
  %351 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %350, i64 0
  store %struct.sshkey* %345, %struct.sshkey** %351, align 8
  %352 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %353 = bitcast i8* %352 to %struct.sshkey*
  %354 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %355 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %354, i32 0, i32 5
  %356 = load %struct.sshkey*, %struct.sshkey** %355, align 8
  %357 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %356, i32 0, i32 10
  %358 = load %struct.sshkey**, %struct.sshkey*** %357, align 8
  %359 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %358, i64 1
  store %struct.sshkey* %353, %struct.sshkey** %359, align 8
  %360 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %361 = bitcast i8* %360 to %struct.sshkey*
  %362 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %363 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %362, i32 0, i32 5
  %364 = load %struct.sshkey*, %struct.sshkey** %363, align 8
  %365 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %364, i32 0, i32 10
  %366 = load %struct.sshkey**, %struct.sshkey*** %365, align 8
  %367 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %366, i64 2
  store %struct.sshkey* %361, %struct.sshkey** %367, align 8
  %368 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %369 = bitcast i8* %368 to %struct.sshkey*
  %370 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %371 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %370, i32 0, i32 5
  %372 = load %struct.sshkey*, %struct.sshkey** %371, align 8
  %373 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %372, i32 0, i32 10
  %374 = load %struct.sshkey**, %struct.sshkey*** %373, align 8
  %375 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %374, i64 3
  store %struct.sshkey* %369, %struct.sshkey** %375, align 8
  %376 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %377 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %376, i32 0, i32 5
  %378 = load %struct.sshkey*, %struct.sshkey** %377, align 8
  %379 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %378, i32 0, i32 10
  %380 = load %struct.sshkey**, %struct.sshkey*** %379, align 8
  %381 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %380, i64 0
  %382 = load %struct.sshkey*, %struct.sshkey** %381, align 8
  %383 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %382, %struct.sshkey* null)
  %384 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %385 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %384, i32 0, i32 5
  %386 = load %struct.sshkey*, %struct.sshkey** %385, align 8
  %387 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %386, i32 0, i32 10
  %388 = load %struct.sshkey**, %struct.sshkey*** %387, align 8
  %389 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %388, i64 1
  %390 = load %struct.sshkey*, %struct.sshkey** %389, align 8
  %391 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %390, %struct.sshkey* null)
  %392 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %393 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %392, i32 0, i32 5
  %394 = load %struct.sshkey*, %struct.sshkey** %393, align 8
  %395 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %394, i32 0, i32 10
  %396 = load %struct.sshkey**, %struct.sshkey*** %395, align 8
  %397 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %396, i64 2
  %398 = load %struct.sshkey*, %struct.sshkey** %397, align 8
  %399 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %398, %struct.sshkey* null)
  %400 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %401 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %400, i32 0, i32 5
  %402 = load %struct.sshkey*, %struct.sshkey** %401, align 8
  %403 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %402, i32 0, i32 10
  %404 = load %struct.sshkey**, %struct.sshkey*** %403, align 8
  %405 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %404, i64 3
  %406 = load %struct.sshkey*, %struct.sshkey** %405, align 8
  %407 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %406, %struct.sshkey* null)
  %408 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %409 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %408, i32 0, i32 5
  %410 = load %struct.sshkey*, %struct.sshkey** %409, align 8
  %411 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %410, i32 0, i32 3
  store i32 4, i32* %411, align 4
  %412 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %413 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %412, i32 0, i32 5
  %414 = load %struct.sshkey*, %struct.sshkey** %413, align 8
  %415 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %414, i32 0, i32 9
  store i64 0, i64* %415, align 8
  %416 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %417 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %416, i32 0, i32 5
  %418 = load %struct.sshkey*, %struct.sshkey** %417, align 8
  %419 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %418, i32 0, i32 8
  store i64 -1, i64* %419, align 8
  %420 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %421 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %420, i32 0, i32 5
  %422 = load %struct.sshkey*, %struct.sshkey** %421, align 8
  %423 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %422, i32 0, i32 7
  %424 = load %struct.sshkey*, %struct.sshkey** %423, align 8
  %425 = call i32 @sshbuf_free(%struct.sshkey* %424)
  %426 = call i8* (...) @sshbuf_new()
  %427 = bitcast i8* %426 to %struct.sshkey*
  %428 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %429 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %428, i32 0, i32 5
  %430 = load %struct.sshkey*, %struct.sshkey** %429, align 8
  %431 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %430, i32 0, i32 7
  store %struct.sshkey* %427, %struct.sshkey** %431, align 8
  %432 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %433 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %432, i32 0, i32 5
  %434 = load %struct.sshkey*, %struct.sshkey** %433, align 8
  %435 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %434, i32 0, i32 7
  %436 = load %struct.sshkey*, %struct.sshkey** %435, align 8
  %437 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %436, %struct.sshkey* null)
  %438 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %439 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %438, i32 0, i32 5
  %440 = load %struct.sshkey*, %struct.sshkey** %439, align 8
  %441 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %440, i32 0, i32 6
  %442 = load %struct.sshkey*, %struct.sshkey** %441, align 8
  %443 = call i32 @sshbuf_free(%struct.sshkey* %442)
  %444 = call i8* (...) @sshbuf_new()
  %445 = bitcast i8* %444 to %struct.sshkey*
  %446 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %447 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %446, i32 0, i32 5
  %448 = load %struct.sshkey*, %struct.sshkey** %447, align 8
  %449 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %448, i32 0, i32 6
  store %struct.sshkey* %445, %struct.sshkey** %449, align 8
  %450 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %451 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %450, i32 0, i32 5
  %452 = load %struct.sshkey*, %struct.sshkey** %451, align 8
  %453 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %452, i32 0, i32 6
  %454 = load %struct.sshkey*, %struct.sshkey** %453, align 8
  %455 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %454, %struct.sshkey* null)
  %456 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %457 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %456, i32 0, i32 5
  %458 = load %struct.sshkey*, %struct.sshkey** %457, align 8
  %459 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %458, i32 0, i32 7
  %460 = load %struct.sshkey*, %struct.sshkey** %459, align 8
  %461 = call i32 @put_opt(%struct.sshkey* %460, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %462 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %463 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %462, i32 0, i32 5
  %464 = load %struct.sshkey*, %struct.sshkey** %463, align 8
  %465 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %464, i32 0, i32 7
  %466 = load %struct.sshkey*, %struct.sshkey** %465, align 8
  %467 = call i32 @put_opt(%struct.sshkey* %466, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %468 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %469 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %468, i32 0, i32 5
  %470 = load %struct.sshkey*, %struct.sshkey** %469, align 8
  %471 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %470, i32 0, i32 6
  %472 = load %struct.sshkey*, %struct.sshkey** %471, align 8
  %473 = call i32 @put_opt(%struct.sshkey* %472, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* null)
  %474 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %475 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %474, i32 0, i32 5
  %476 = load %struct.sshkey*, %struct.sshkey** %475, align 8
  %477 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %476, i32 0, i32 6
  %478 = load %struct.sshkey*, %struct.sshkey** %477, align 8
  %479 = call i32 @put_opt(%struct.sshkey* %478, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* null)
  %480 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %481 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %482 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %481, i32 0, i32 5
  %483 = load %struct.sshkey*, %struct.sshkey** %482, align 8
  %484 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %483, i32 0, i32 4
  %485 = call i32 @sshkey_from_private(%struct.sshkey* %480, i32* %484)
  %486 = call i32 @ASSERT_INT_EQ(i32 %485, i32 0)
  %487 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %488 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %489 = call i32 @sshkey_certify(%struct.sshkey* %487, %struct.sshkey* %488, i32* null)
  %490 = call i32 @ASSERT_INT_EQ(i32 %489, i32 0)
  %491 = call i8* (...) @sshbuf_new()
  %492 = bitcast i8* %491 to %struct.sshbuf*
  store %struct.sshbuf* %492, %struct.sshbuf** %8, align 8
  %493 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %494 = bitcast %struct.sshbuf* %493 to %struct.sshkey*
  %495 = call i32 @ASSERT_PTR_NE(%struct.sshkey* %494, %struct.sshkey* null)
  %496 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %497 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %498 = bitcast %struct.sshbuf* %497 to %struct.sshkey*
  %499 = call i32 @sshkey_putb(%struct.sshkey* %496, %struct.sshkey* %498)
  %500 = call i32 @ASSERT_INT_EQ(i32 %499, i32 0)
  %501 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %502 = bitcast %struct.sshbuf* %501 to %struct.sshkey*
  %503 = call i32 @sshbuf_ptr(%struct.sshkey* %502)
  %504 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %505 = bitcast %struct.sshbuf* %504 to %struct.sshkey*
  %506 = call i32 @sshbuf_len(%struct.sshkey* %505)
  %507 = call i32 @sshkey_from_blob(i32 %503, i32 %506, %struct.sshkey** %3)
  %508 = call i32 @ASSERT_INT_EQ(i32 %507, i32 0)
  %509 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %510 = call i32 @sshkey_free(%struct.sshkey* %509)
  %511 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %512 = call i32 @sshkey_free(%struct.sshkey* %511)
  %513 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %514 = call i32 @sshkey_free(%struct.sshkey* %513)
  %515 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %516 = bitcast %struct.sshbuf* %515 to %struct.sshkey*
  %517 = call i32 @sshbuf_reset(%struct.sshkey* %516)
  %518 = call i32 (...) @TEST_DONE()
  %519 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %520 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  store %struct.sshkey* %520, %struct.sshkey** %1, align 8
  %521 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  %522 = call i32 @sshkey_load_public(i32 %521, %struct.sshkey** %2, i32* null)
  %523 = call i32 @ASSERT_INT_EQ(i32 %522, i32 0)
  %524 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %525 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %526 = call i32 @signature_tests(%struct.sshkey* %524, %struct.sshkey* %525, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  %527 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %528 = call i32 @sshkey_free(%struct.sshkey* %527)
  %529 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %530 = call i32 @sshkey_free(%struct.sshkey* %529)
  %531 = call i32 (...) @TEST_DONE()
  %532 = call i32 @TEST_START(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0))
  %533 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  store %struct.sshkey* %533, %struct.sshkey** %1, align 8
  %534 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  %535 = call i32 @sshkey_load_public(i32 %534, %struct.sshkey** %2, i32* null)
  %536 = call i32 @ASSERT_INT_EQ(i32 %535, i32 0)
  %537 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %538 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %539 = call i32 @signature_tests(%struct.sshkey* %537, %struct.sshkey* %538, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %540 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %541 = call i32 @sshkey_free(%struct.sshkey* %540)
  %542 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %543 = call i32 @sshkey_free(%struct.sshkey* %542)
  %544 = call i32 (...) @TEST_DONE()
  %545 = call i32 @TEST_START(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0))
  %546 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  store %struct.sshkey* %546, %struct.sshkey** %1, align 8
  %547 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  %548 = call i32 @sshkey_load_public(i32 %547, %struct.sshkey** %2, i32* null)
  %549 = call i32 @ASSERT_INT_EQ(i32 %548, i32 0)
  %550 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %551 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %552 = call i32 @signature_tests(%struct.sshkey* %550, %struct.sshkey* %551, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %553 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %554 = call i32 @sshkey_free(%struct.sshkey* %553)
  %555 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %556 = call i32 @sshkey_free(%struct.sshkey* %555)
  %557 = call i32 (...) @TEST_DONE()
  %558 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %559 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  store %struct.sshkey* %559, %struct.sshkey** %1, align 8
  %560 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  %561 = call i32 @sshkey_load_public(i32 %560, %struct.sshkey** %2, i32* null)
  %562 = call i32 @ASSERT_INT_EQ(i32 %561, i32 0)
  %563 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %564 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %565 = call i32 @signature_tests(%struct.sshkey* %563, %struct.sshkey* %564, i8* null)
  %566 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %567 = call i32 @sshkey_free(%struct.sshkey* %566)
  %568 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %569 = call i32 @sshkey_free(%struct.sshkey* %568)
  %570 = call i32 (...) @TEST_DONE()
  %571 = call i32 @TEST_START(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  %572 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0))
  store %struct.sshkey* %572, %struct.sshkey** %1, align 8
  %573 = call i32 @test_data_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  %574 = call i32 @sshkey_load_public(i32 %573, %struct.sshkey** %2, i32* null)
  %575 = call i32 @ASSERT_INT_EQ(i32 %574, i32 0)
  %576 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %577 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %578 = call i32 @signature_tests(%struct.sshkey* %576, %struct.sshkey* %577, i8* null)
  %579 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %580 = call i32 @sshkey_free(%struct.sshkey* %579)
  %581 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %582 = call i32 @sshkey_free(%struct.sshkey* %581)
  %583 = call i32 (...) @TEST_DONE()
  %584 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0))
  %585 = call i32 @test_data_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %586 = call i32 @sshkey_load_cert(i32 %585, %struct.sshkey** %1)
  %587 = call i32 @ASSERT_INT_EQ(i32 %586, i32 0)
  %588 = call i32 @test_data_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  %589 = call i32 @sshkey_load_public(i32 %588, %struct.sshkey** %2, i32* null)
  %590 = call i32 @ASSERT_INT_EQ(i32 %589, i32 0)
  %591 = call %struct.sshkey* @get_private(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  store %struct.sshkey* %591, %struct.sshkey** %3, align 8
  %592 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %593 = bitcast %struct.sshbuf* %592 to %struct.sshkey*
  %594 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %595 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %596 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %597 = call i32 @build_cert(%struct.sshkey* %593, %struct.sshkey* %594, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), %struct.sshkey* %595, %struct.sshkey* %596, i32* null)
  %598 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %599 = bitcast %struct.sshbuf* %598 to %struct.sshkey*
  %600 = call i32 @sshbuf_ptr(%struct.sshkey* %599)
  %601 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %602 = bitcast %struct.sshbuf* %601 to %struct.sshkey*
  %603 = call i32 @sshbuf_len(%struct.sshkey* %602)
  %604 = call i32 @sshkey_from_blob(i32 %600, i32 %603, %struct.sshkey** %4)
  %605 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID_SIGN_KEY, align 4
  %606 = call i32 @ASSERT_INT_EQ(i32 %604, i32 %605)
  %607 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %608 = call i32 @ASSERT_PTR_EQ(%struct.sshkey* %607, i32* null)
  %609 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %610 = call i32 @sshkey_free(%struct.sshkey* %609)
  %611 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %612 = call i32 @sshkey_free(%struct.sshkey* %611)
  %613 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %614 = call i32 @sshkey_free(%struct.sshkey* %613)
  %615 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %616 = bitcast %struct.sshbuf* %615 to %struct.sshkey*
  %617 = call i32 @sshbuf_free(%struct.sshkey* %616)
  %618 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i32 @ASSERT_PTR_EQ(%struct.sshkey*, i32*) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshkey_generate(i32, i32, %struct.sshkey**) #1

declare dso_local %struct.sshkey* @rsa_n(%struct.sshkey*) #1

declare dso_local %struct.sshkey* @rsa_e(%struct.sshkey*) #1

declare dso_local %struct.sshkey* @rsa_p(%struct.sshkey*) #1

declare dso_local i32 @BN_num_bits(%struct.sshkey*) #1

declare dso_local %struct.sshkey* @dsa_g(%struct.sshkey*) #1

declare dso_local %struct.sshkey* @dsa_priv_key(%struct.sshkey*) #1

declare dso_local i32 @sshkey_demote(%struct.sshkey*, %struct.sshkey**) #1

declare dso_local i32 @sshkey_equal(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_load_public(i32, %struct.sshkey**, i32*) #1

declare dso_local i32 @test_data_file(i8*) #1

declare dso_local %struct.sshkey* @get_private(i8*) #1

declare dso_local i32 @sshkey_to_certified(%struct.sshkey*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.sshkey* @calloc(i32, i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshkey*) #1

declare dso_local i8* @sshbuf_new(...) #1

declare dso_local i32 @put_opt(%struct.sshkey*, i8*, i8*) #1

declare dso_local i32 @sshkey_from_private(%struct.sshkey*, i32*) #1

declare dso_local i32 @sshkey_certify(%struct.sshkey*, %struct.sshkey*, i32*) #1

declare dso_local i32 @sshkey_putb(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_from_blob(i32, i32, %struct.sshkey**) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_len(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_reset(%struct.sshkey*) #1

declare dso_local i32 @signature_tests(%struct.sshkey*, %struct.sshkey*, i8*) #1

declare dso_local i32 @sshkey_load_cert(i32, %struct.sshkey**) #1

declare dso_local i32 @build_cert(%struct.sshkey*, %struct.sshkey*, i8*, %struct.sshkey*, %struct.sshkey*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
