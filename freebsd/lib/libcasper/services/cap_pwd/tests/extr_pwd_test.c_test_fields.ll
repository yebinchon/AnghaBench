; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_test_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_test_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PW_NAME = common dso_local global i32 0, align 4
@PW_PASSWD = common dso_local global i32 0, align 4
@PW_UID = common dso_local global i32 0, align 4
@PW_GID = common dso_local global i32 0, align 4
@PW_CHANGE = common dso_local global i32 0, align 4
@PW_CLASS = common dso_local global i32 0, align 4
@PW_GECOS = common dso_local global i32 0, align 4
@PW_DIR = common dso_local global i32 0, align 4
@PW_SHELL = common dso_local global i32 0, align 4
@PW_EXPIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pw_name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pw_passwd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pw_uid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pw_gid\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_change\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pw_class\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pw_gecos\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pw_dir\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pw_shell\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"pw_expire\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fields(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [10 x i8*], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @PW_NAME, align 4
  %7 = load i32, i32* @PW_PASSWD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PW_UID, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PW_GID, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PW_CHANGE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PW_CLASS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PW_GECOS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PW_DIR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PW_SHELL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PW_EXPIRE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @runtest_fields(i32* %5, i32 %24)
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @cap_clone(i32* %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @CHECK(i32 %31)
  %33 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 6
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %45 = call i32 @cap_pwd_limit_fields(i32* %43, i8** %44, i32 10)
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @PW_NAME, align 4
  %51 = load i32, i32* @PW_PASSWD, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PW_UID, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PW_GID, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PW_CHANGE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PW_CLASS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PW_GECOS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PW_DIR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PW_SHELL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PW_EXPIRE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @runtest_fields(i32* %49, i32 %68)
  %70 = call i32 @CHECK(i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @cap_close(i32* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32* @cap_clone(i32* %73)
  store i32* %74, i32** %3, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = icmp ne i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @CHECK(i32 %77)
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %79, align 16
  %80 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %81, align 16
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %83, align 16
  %84 = load i32*, i32** %3, align 8
  %85 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %86 = call i32 @cap_pwd_limit_fields(i32* %84, i8** %85, i32 5)
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @CHECK(i32 %88)
  %90 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %90, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %93 = call i32 @cap_pwd_limit_fields(i32* %91, i8** %92, i32 6)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %99

95:                                               ; preds = %1
  %96 = load i64, i64* @errno, align 8
  %97 = load i64, i64* @ENOTCAPABLE, align 8
  %98 = icmp eq i64 %96, %97
  br label %99

99:                                               ; preds = %95, %1
  %100 = phi i1 [ false, %1 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  %103 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %103, align 16
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %106 = call i32 @cap_pwd_limit_fields(i32* %104, i8** %105, i32 1)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i64, i64* @errno, align 8
  %110 = load i64, i64* @ENOTCAPABLE, align 8
  %111 = icmp eq i64 %109, %110
  br label %112

112:                                              ; preds = %108, %99
  %113 = phi i1 [ false, %99 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @CHECK(i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* @PW_NAME, align 4
  %118 = load i32, i32* @PW_PASSWD, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @PW_UID, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @PW_GID, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PW_CHANGE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @runtest_fields(i32* %116, i32 %125)
  %127 = call i32 @CHECK(i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @cap_close(i32* %128)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32* @cap_clone(i32* %130)
  store i32* %131, i32** %3, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @CHECK(i32 %134)
  %136 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %136, align 16
  %137 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %137, align 8
  %138 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %138, align 16
  %139 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %139, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %140, align 16
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %143 = call i32 @cap_pwd_limit_fields(i32* %141, i8** %142, i32 5)
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @CHECK(i32 %145)
  %147 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %147, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %150 = call i32 @cap_pwd_limit_fields(i32* %148, i8** %149, i32 6)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %156

152:                                              ; preds = %112
  %153 = load i64, i64* @errno, align 8
  %154 = load i64, i64* @ENOTCAPABLE, align 8
  %155 = icmp eq i64 %153, %154
  br label %156

156:                                              ; preds = %152, %112
  %157 = phi i1 [ false, %112 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @CHECK(i32 %158)
  %160 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %160, align 16
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %163 = call i32 @cap_pwd_limit_fields(i32* %161, i8** %162, i32 1)
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i64, i64* @errno, align 8
  %167 = load i64, i64* @ENOTCAPABLE, align 8
  %168 = icmp eq i64 %166, %167
  br label %169

169:                                              ; preds = %165, %156
  %170 = phi i1 [ false, %156 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @CHECK(i32 %171)
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* @PW_CLASS, align 4
  %175 = load i32, i32* @PW_GECOS, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @PW_DIR, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @PW_SHELL, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @PW_EXPIRE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @runtest_fields(i32* %173, i32 %182)
  %184 = call i32 @CHECK(i32 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @cap_close(i32* %185)
  %187 = load i32*, i32** %2, align 8
  %188 = call i32* @cap_clone(i32* %187)
  store i32* %188, i32** %3, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = icmp ne i32* %189, null
  %191 = zext i1 %190 to i32
  %192 = call i32 @CHECK(i32 %191)
  %193 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %193, align 16
  %194 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %194, align 8
  %195 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %195, align 16
  %196 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %196, align 8
  %197 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %197, align 16
  %198 = load i32*, i32** %3, align 8
  %199 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %200 = call i32 @cap_pwd_limit_fields(i32* %198, i8** %199, i32 5)
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @CHECK(i32 %202)
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %204, align 8
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %207 = call i32 @cap_pwd_limit_fields(i32* %205, i8** %206, i32 6)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %213

209:                                              ; preds = %169
  %210 = load i64, i64* @errno, align 8
  %211 = load i64, i64* @ENOTCAPABLE, align 8
  %212 = icmp eq i64 %210, %211
  br label %213

213:                                              ; preds = %209, %169
  %214 = phi i1 [ false, %169 ], [ %212, %209 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 @CHECK(i32 %215)
  %217 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %217, align 16
  %218 = load i32*, i32** %3, align 8
  %219 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %220 = call i32 @cap_pwd_limit_fields(i32* %218, i8** %219, i32 1)
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %226

222:                                              ; preds = %213
  %223 = load i64, i64* @errno, align 8
  %224 = load i64, i64* @ENOTCAPABLE, align 8
  %225 = icmp eq i64 %223, %224
  br label %226

226:                                              ; preds = %222, %213
  %227 = phi i1 [ false, %213 ], [ %225, %222 ]
  %228 = zext i1 %227 to i32
  %229 = call i32 @CHECK(i32 %228)
  %230 = load i32*, i32** %3, align 8
  %231 = load i32, i32* @PW_NAME, align 4
  %232 = load i32, i32* @PW_UID, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @PW_CHANGE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @PW_GECOS, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @PW_SHELL, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @runtest_fields(i32* %230, i32 %239)
  %241 = call i32 @CHECK(i32 %240)
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @cap_close(i32* %242)
  %244 = load i32*, i32** %2, align 8
  %245 = call i32* @cap_clone(i32* %244)
  store i32* %245, i32** %3, align 8
  %246 = load i32*, i32** %3, align 8
  %247 = icmp ne i32* %246, null
  %248 = zext i1 %247 to i32
  %249 = call i32 @CHECK(i32 %248)
  %250 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %250, align 16
  %251 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %251, align 8
  %252 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %252, align 16
  %253 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %253, align 8
  %254 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %254, align 16
  %255 = load i32*, i32** %3, align 8
  %256 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %257 = call i32 @cap_pwd_limit_fields(i32* %255, i8** %256, i32 5)
  %258 = icmp eq i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @CHECK(i32 %259)
  %261 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %261, align 8
  %262 = load i32*, i32** %3, align 8
  %263 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %264 = call i32 @cap_pwd_limit_fields(i32* %262, i8** %263, i32 6)
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %270

266:                                              ; preds = %226
  %267 = load i64, i64* @errno, align 8
  %268 = load i64, i64* @ENOTCAPABLE, align 8
  %269 = icmp eq i64 %267, %268
  br label %270

270:                                              ; preds = %266, %226
  %271 = phi i1 [ false, %226 ], [ %269, %266 ]
  %272 = zext i1 %271 to i32
  %273 = call i32 @CHECK(i32 %272)
  %274 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %274, align 16
  %275 = load i32*, i32** %3, align 8
  %276 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %277 = call i32 @cap_pwd_limit_fields(i32* %275, i8** %276, i32 1)
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %283

279:                                              ; preds = %270
  %280 = load i64, i64* @errno, align 8
  %281 = load i64, i64* @ENOTCAPABLE, align 8
  %282 = icmp eq i64 %280, %281
  br label %283

283:                                              ; preds = %279, %270
  %284 = phi i1 [ false, %270 ], [ %282, %279 ]
  %285 = zext i1 %284 to i32
  %286 = call i32 @CHECK(i32 %285)
  %287 = load i32*, i32** %3, align 8
  %288 = load i32, i32* @PW_PASSWD, align 4
  %289 = load i32, i32* @PW_GID, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @PW_CLASS, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @PW_DIR, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @PW_EXPIRE, align 4
  %296 = or i32 %294, %295
  %297 = call i32 @runtest_fields(i32* %287, i32 %296)
  %298 = call i32 @CHECK(i32 %297)
  %299 = load i32*, i32** %3, align 8
  %300 = call i32 @cap_close(i32* %299)
  %301 = load i32*, i32** %2, align 8
  %302 = call i32* @cap_clone(i32* %301)
  store i32* %302, i32** %3, align 8
  %303 = load i32*, i32** %3, align 8
  %304 = icmp ne i32* %303, null
  %305 = zext i1 %304 to i32
  %306 = call i32 @CHECK(i32 %305)
  %307 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %307, align 16
  %308 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %308, align 8
  %309 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %309, align 16
  %310 = load i32*, i32** %3, align 8
  %311 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %312 = call i32 @cap_pwd_limit_fields(i32* %310, i8** %311, i32 3)
  %313 = icmp eq i32 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @CHECK(i32 %314)
  %316 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %316, align 8
  %317 = load i32*, i32** %3, align 8
  %318 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %319 = call i32 @cap_pwd_limit_fields(i32* %317, i8** %318, i32 4)
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %321, label %325

321:                                              ; preds = %283
  %322 = load i64, i64* @errno, align 8
  %323 = load i64, i64* @ENOTCAPABLE, align 8
  %324 = icmp eq i64 %322, %323
  br label %325

325:                                              ; preds = %321, %283
  %326 = phi i1 [ false, %283 ], [ %324, %321 ]
  %327 = zext i1 %326 to i32
  %328 = call i32 @CHECK(i32 %327)
  %329 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %329, align 16
  %330 = load i32*, i32** %3, align 8
  %331 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %332 = call i32 @cap_pwd_limit_fields(i32* %330, i8** %331, i32 1)
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %334, label %338

334:                                              ; preds = %325
  %335 = load i64, i64* @errno, align 8
  %336 = load i64, i64* @ENOTCAPABLE, align 8
  %337 = icmp eq i64 %335, %336
  br label %338

338:                                              ; preds = %334, %325
  %339 = phi i1 [ false, %325 ], [ %337, %334 ]
  %340 = zext i1 %339 to i32
  %341 = call i32 @CHECK(i32 %340)
  %342 = load i32*, i32** %3, align 8
  %343 = load i32, i32* @PW_UID, align 4
  %344 = load i32, i32* @PW_CLASS, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @PW_SHELL, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @runtest_fields(i32* %342, i32 %347)
  %349 = call i32 @CHECK(i32 %348)
  %350 = load i32*, i32** %3, align 8
  %351 = call i32 @cap_close(i32* %350)
  %352 = load i32*, i32** %2, align 8
  %353 = call i32* @cap_clone(i32* %352)
  store i32* %353, i32** %3, align 8
  %354 = load i32*, i32** %3, align 8
  %355 = icmp ne i32* %354, null
  %356 = zext i1 %355 to i32
  %357 = call i32 @CHECK(i32 %356)
  %358 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %358, align 16
  %359 = load i32*, i32** %3, align 8
  %360 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %361 = call i32 @cap_pwd_limit_fields(i32* %359, i8** %360, i32 1)
  %362 = icmp eq i32 %361, 0
  %363 = zext i1 %362 to i32
  %364 = call i32 @CHECK(i32 %363)
  %365 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %365, align 8
  %366 = load i32*, i32** %3, align 8
  %367 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %368 = call i32 @cap_pwd_limit_fields(i32* %366, i8** %367, i32 2)
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %374

370:                                              ; preds = %338
  %371 = load i64, i64* @errno, align 8
  %372 = load i64, i64* @ENOTCAPABLE, align 8
  %373 = icmp eq i64 %371, %372
  br label %374

374:                                              ; preds = %370, %338
  %375 = phi i1 [ false, %338 ], [ %373, %370 ]
  %376 = zext i1 %375 to i32
  %377 = call i32 @CHECK(i32 %376)
  %378 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %378, align 16
  %379 = load i32*, i32** %3, align 8
  %380 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %381 = call i32 @cap_pwd_limit_fields(i32* %379, i8** %380, i32 1)
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %387

383:                                              ; preds = %374
  %384 = load i64, i64* @errno, align 8
  %385 = load i64, i64* @ENOTCAPABLE, align 8
  %386 = icmp eq i64 %384, %385
  br label %387

387:                                              ; preds = %383, %374
  %388 = phi i1 [ false, %374 ], [ %386, %383 ]
  %389 = zext i1 %388 to i32
  %390 = call i32 @CHECK(i32 %389)
  %391 = load i32*, i32** %3, align 8
  %392 = load i32, i32* @PW_CHANGE, align 4
  %393 = call i32 @runtest_fields(i32* %391, i32 %392)
  %394 = call i32 @CHECK(i32 %393)
  %395 = load i32*, i32** %3, align 8
  %396 = call i32 @cap_close(i32* %395)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @runtest_fields(i32*, i32) #1

declare dso_local i32* @cap_clone(i32*) #1

declare dso_local i32 @cap_pwd_limit_fields(i32*, i8**, i32) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
