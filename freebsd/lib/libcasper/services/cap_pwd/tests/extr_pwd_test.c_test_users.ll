; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_test_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_test_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"toor\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_users(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [6 x i8*], align 16
  %5 = alloca [6 x i32], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @cap_clone(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @CHECK(i32 %10)
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %20 = call i32 @cap_pwd_limit_users(i32* %18, i8** %19, i32 6, i32* null, i32 0)
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @CHECK(i32 %22)
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %24, align 16
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 3, i32* %28, align 16
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 4, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %33 = call i32 @runtest_users(i32* %30, i8** %31, i32* %32, i32 6)
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @cap_close(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32* @cap_clone(i32* %37)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @CHECK(i32 %41)
  %43 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 16
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %48 = call i32 @cap_pwd_limit_users(i32* %46, i8** %47, i32 3, i32* null, i32 0)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %55 = call i32 @cap_pwd_limit_users(i32* %53, i8** %54, i32 4, i32* null, i32 0)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ENOTCAPABLE, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %57, %1
  %62 = phi i1 [ false, %1 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @CHECK(i32 %63)
  %65 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %65, align 16
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %68 = call i32 @cap_pwd_limit_users(i32* %66, i8** %67, i32 1, i32* null, i32 0)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ENOTCAPABLE, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %70, %61
  %75 = phi i1 [ false, %61 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @CHECK(i32 %76)
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %79, align 16
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 2, i32* %80, align 4
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 3, i32* %81, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %85 = call i32 @runtest_users(i32* %82, i8** %83, i32* %84, i32 3)
  %86 = call i32 @CHECK(i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @cap_close(i32* %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32* @cap_clone(i32* %89)
  store i32* %90, i32** %3, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @CHECK(i32 %93)
  %95 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %95, align 16
  %96 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %96, align 8
  %97 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %97, align 16
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %100 = call i32 @cap_pwd_limit_users(i32* %98, i8** %99, i32 3, i32* null, i32 0)
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @CHECK(i32 %102)
  %104 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %104, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %107 = call i32 @cap_pwd_limit_users(i32* %105, i8** %106, i32 4, i32* null, i32 0)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %113

109:                                              ; preds = %74
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @ENOTCAPABLE, align 8
  %112 = icmp eq i64 %110, %111
  br label %113

113:                                              ; preds = %109, %74
  %114 = phi i1 [ false, %74 ], [ %112, %109 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @CHECK(i32 %115)
  %117 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %117, align 16
  %118 = load i32*, i32** %3, align 8
  %119 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %120 = call i32 @cap_pwd_limit_users(i32* %118, i8** %119, i32 1, i32* null, i32 0)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load i64, i64* @errno, align 8
  %124 = load i64, i64* @ENOTCAPABLE, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %122, %113
  %127 = phi i1 [ false, %113 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @CHECK(i32 %128)
  %130 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %130, align 16
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %131, align 16
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 3, i32* %132, align 4
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %133, align 8
  %134 = load i32*, i32** %3, align 8
  %135 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %137 = call i32 @runtest_users(i32* %134, i8** %135, i32* %136, i32 3)
  %138 = call i32 @CHECK(i32 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @cap_close(i32* %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32* @cap_clone(i32* %141)
  store i32* %142, i32** %3, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = icmp ne i32* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @CHECK(i32 %145)
  %147 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %147, align 16
  %148 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %148, align 8
  %149 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %149, align 16
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %150, align 16
  %151 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 2, i32* %151, align 4
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 3, i32* %152, align 8
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %155 = call i32 @cap_pwd_limit_users(i32* %153, i8** null, i32 0, i32* %154, i32 3)
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @CHECK(i32 %157)
  %159 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 4, i32* %159, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %162 = call i32 @cap_pwd_limit_users(i32* %160, i8** null, i32 0, i32* %161, i32 4)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %168

164:                                              ; preds = %126
  %165 = load i64, i64* @errno, align 8
  %166 = load i64, i64* @ENOTCAPABLE, align 8
  %167 = icmp eq i64 %165, %166
  br label %168

168:                                              ; preds = %164, %126
  %169 = phi i1 [ false, %126 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @CHECK(i32 %170)
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 4, i32* %172, align 16
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %175 = call i32 @cap_pwd_limit_users(i32* %173, i8** null, i32 0, i32* %174, i32 1)
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load i64, i64* @errno, align 8
  %179 = load i64, i64* @ENOTCAPABLE, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %177, %168
  %182 = phi i1 [ false, %168 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @CHECK(i32 %183)
  %185 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %185, align 16
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %189 = call i32 @runtest_users(i32* %186, i8** %187, i32* %188, i32 3)
  %190 = call i32 @CHECK(i32 %189)
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @cap_close(i32* %191)
  %193 = load i32*, i32** %2, align 8
  %194 = call i32* @cap_clone(i32* %193)
  store i32* %194, i32** %3, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = icmp ne i32* %195, null
  %197 = zext i1 %196 to i32
  %198 = call i32 @CHECK(i32 %197)
  %199 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %199, align 16
  %200 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %200, align 8
  %201 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %201, align 16
  %202 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %202, align 16
  %203 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 3, i32* %203, align 4
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %204, align 8
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %207 = call i32 @cap_pwd_limit_users(i32* %205, i8** null, i32 0, i32* %206, i32 3)
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @CHECK(i32 %209)
  %211 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 5, i32* %211, align 4
  %212 = load i32*, i32** %3, align 8
  %213 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %214 = call i32 @cap_pwd_limit_users(i32* %212, i8** null, i32 0, i32* %213, i32 4)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %220

216:                                              ; preds = %181
  %217 = load i64, i64* @errno, align 8
  %218 = load i64, i64* @ENOTCAPABLE, align 8
  %219 = icmp eq i64 %217, %218
  br label %220

220:                                              ; preds = %216, %181
  %221 = phi i1 [ false, %181 ], [ %219, %216 ]
  %222 = zext i1 %221 to i32
  %223 = call i32 @CHECK(i32 %222)
  %224 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 5, i32* %224, align 16
  %225 = load i32*, i32** %3, align 8
  %226 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %227 = call i32 @cap_pwd_limit_users(i32* %225, i8** null, i32 0, i32* %226, i32 1)
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load i64, i64* @errno, align 8
  %231 = load i64, i64* @ENOTCAPABLE, align 8
  %232 = icmp eq i64 %230, %231
  br label %233

233:                                              ; preds = %229, %220
  %234 = phi i1 [ false, %220 ], [ %232, %229 ]
  %235 = zext i1 %234 to i32
  %236 = call i32 @CHECK(i32 %235)
  %237 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %237, align 16
  %238 = load i32*, i32** %3, align 8
  %239 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %240 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %241 = call i32 @runtest_users(i32* %238, i8** %239, i32* %240, i32 3)
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 @cap_close(i32* %243)
  %245 = load i32*, i32** %2, align 8
  %246 = call i32* @cap_clone(i32* %245)
  store i32* %246, i32** %3, align 8
  %247 = load i32*, i32** %3, align 8
  %248 = icmp ne i32* %247, null
  %249 = zext i1 %248 to i32
  %250 = call i32 @CHECK(i32 %249)
  %251 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %251, align 16
  %252 = load i32*, i32** %3, align 8
  %253 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %254 = call i32 @cap_pwd_limit_users(i32* %252, i8** %253, i32 1, i32* null, i32 0)
  %255 = icmp eq i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 @CHECK(i32 %256)
  %258 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %258, align 8
  %259 = load i32*, i32** %3, align 8
  %260 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %261 = call i32 @cap_pwd_limit_users(i32* %259, i8** %260, i32 2, i32* null, i32 0)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %267

263:                                              ; preds = %233
  %264 = load i64, i64* @errno, align 8
  %265 = load i64, i64* @ENOTCAPABLE, align 8
  %266 = icmp eq i64 %264, %265
  br label %267

267:                                              ; preds = %263, %233
  %268 = phi i1 [ false, %233 ], [ %266, %263 ]
  %269 = zext i1 %268 to i32
  %270 = call i32 @CHECK(i32 %269)
  %271 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %271, align 16
  %272 = load i32*, i32** %3, align 8
  %273 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %274 = call i32 @cap_pwd_limit_users(i32* %272, i8** %273, i32 1, i32* null, i32 0)
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %280

276:                                              ; preds = %267
  %277 = load i64, i64* @errno, align 8
  %278 = load i64, i64* @ENOTCAPABLE, align 8
  %279 = icmp eq i64 %277, %278
  br label %280

280:                                              ; preds = %276, %267
  %281 = phi i1 [ false, %267 ], [ %279, %276 ]
  %282 = zext i1 %281 to i32
  %283 = call i32 @CHECK(i32 %282)
  %284 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %284, align 16
  %285 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 3, i32* %285, align 16
  %286 = load i32*, i32** %3, align 8
  %287 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %288 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %289 = call i32 @runtest_users(i32* %286, i8** %287, i32* %288, i32 1)
  %290 = call i32 @CHECK(i32 %289)
  %291 = load i32*, i32** %3, align 8
  %292 = call i32 @cap_close(i32* %291)
  %293 = load i32*, i32** %2, align 8
  %294 = call i32* @cap_clone(i32* %293)
  store i32* %294, i32** %3, align 8
  %295 = load i32*, i32** %3, align 8
  %296 = icmp ne i32* %295, null
  %297 = zext i1 %296 to i32
  %298 = call i32 @CHECK(i32 %297)
  %299 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %299, align 16
  %300 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %300, align 8
  %301 = load i32*, i32** %3, align 8
  %302 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %303 = call i32 @cap_pwd_limit_users(i32* %301, i8** %302, i32 2, i32* null, i32 0)
  %304 = icmp eq i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @CHECK(i32 %305)
  %307 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %307, align 16
  %308 = load i32*, i32** %3, align 8
  %309 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %310 = call i32 @cap_pwd_limit_users(i32* %308, i8** %309, i32 3, i32* null, i32 0)
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %316

312:                                              ; preds = %280
  %313 = load i64, i64* @errno, align 8
  %314 = load i64, i64* @ENOTCAPABLE, align 8
  %315 = icmp eq i64 %313, %314
  br label %316

316:                                              ; preds = %312, %280
  %317 = phi i1 [ false, %280 ], [ %315, %312 ]
  %318 = zext i1 %317 to i32
  %319 = call i32 @CHECK(i32 %318)
  %320 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %320, align 16
  %321 = load i32*, i32** %3, align 8
  %322 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %323 = call i32 @cap_pwd_limit_users(i32* %321, i8** %322, i32 1, i32* null, i32 0)
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %316
  %326 = load i64, i64* @errno, align 8
  %327 = load i64, i64* @ENOTCAPABLE, align 8
  %328 = icmp eq i64 %326, %327
  br label %329

329:                                              ; preds = %325, %316
  %330 = phi i1 [ false, %316 ], [ %328, %325 ]
  %331 = zext i1 %330 to i32
  %332 = call i32 @CHECK(i32 %331)
  %333 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %333, align 16
  %334 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %334, align 16
  %335 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 4, i32* %335, align 4
  %336 = load i32*, i32** %3, align 8
  %337 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %338 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %339 = call i32 @runtest_users(i32* %336, i8** %337, i32* %338, i32 2)
  %340 = call i32 @CHECK(i32 %339)
  %341 = load i32*, i32** %3, align 8
  %342 = call i32 @cap_close(i32* %341)
  %343 = load i32*, i32** %2, align 8
  %344 = call i32* @cap_clone(i32* %343)
  store i32* %344, i32** %3, align 8
  %345 = load i32*, i32** %3, align 8
  %346 = icmp ne i32* %345, null
  %347 = zext i1 %346 to i32
  %348 = call i32 @CHECK(i32 %347)
  %349 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %349, align 16
  %350 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 3, i32* %350, align 16
  %351 = load i32*, i32** %3, align 8
  %352 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %353 = call i32 @cap_pwd_limit_users(i32* %351, i8** null, i32 0, i32* %352, i32 1)
  %354 = icmp eq i32 %353, 0
  %355 = zext i1 %354 to i32
  %356 = call i32 @CHECK(i32 %355)
  %357 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 4, i32* %357, align 4
  %358 = load i32*, i32** %3, align 8
  %359 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %360 = call i32 @cap_pwd_limit_users(i32* %358, i8** null, i32 0, i32* %359, i32 2)
  %361 = icmp eq i32 %360, -1
  br i1 %361, label %362, label %366

362:                                              ; preds = %329
  %363 = load i64, i64* @errno, align 8
  %364 = load i64, i64* @ENOTCAPABLE, align 8
  %365 = icmp eq i64 %363, %364
  br label %366

366:                                              ; preds = %362, %329
  %367 = phi i1 [ false, %329 ], [ %365, %362 ]
  %368 = zext i1 %367 to i32
  %369 = call i32 @CHECK(i32 %368)
  %370 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 4, i32* %370, align 16
  %371 = load i32*, i32** %3, align 8
  %372 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %373 = call i32 @cap_pwd_limit_users(i32* %371, i8** null, i32 0, i32* %372, i32 1)
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %375, label %379

375:                                              ; preds = %366
  %376 = load i64, i64* @errno, align 8
  %377 = load i64, i64* @ENOTCAPABLE, align 8
  %378 = icmp eq i64 %376, %377
  br label %379

379:                                              ; preds = %375, %366
  %380 = phi i1 [ false, %366 ], [ %378, %375 ]
  %381 = zext i1 %380 to i32
  %382 = call i32 @CHECK(i32 %381)
  %383 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 3, i32* %383, align 16
  %384 = load i32*, i32** %3, align 8
  %385 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %386 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %387 = call i32 @runtest_users(i32* %384, i8** %385, i32* %386, i32 1)
  %388 = call i32 @CHECK(i32 %387)
  %389 = load i32*, i32** %3, align 8
  %390 = call i32 @cap_close(i32* %389)
  %391 = load i32*, i32** %2, align 8
  %392 = call i32* @cap_clone(i32* %391)
  store i32* %392, i32** %3, align 8
  %393 = load i32*, i32** %3, align 8
  %394 = icmp ne i32* %393, null
  %395 = zext i1 %394 to i32
  %396 = call i32 @CHECK(i32 %395)
  %397 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %397, align 16
  %398 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %398, align 8
  %399 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %399, align 16
  %400 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 4, i32* %400, align 4
  %401 = load i32*, i32** %3, align 8
  %402 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %403 = call i32 @cap_pwd_limit_users(i32* %401, i8** null, i32 0, i32* %402, i32 2)
  %404 = icmp eq i32 %403, 0
  %405 = zext i1 %404 to i32
  %406 = call i32 @CHECK(i32 %405)
  %407 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 3, i32* %407, align 8
  %408 = load i32*, i32** %3, align 8
  %409 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %410 = call i32 @cap_pwd_limit_users(i32* %408, i8** null, i32 0, i32* %409, i32 3)
  %411 = icmp eq i32 %410, -1
  br i1 %411, label %412, label %416

412:                                              ; preds = %379
  %413 = load i64, i64* @errno, align 8
  %414 = load i64, i64* @ENOTCAPABLE, align 8
  %415 = icmp eq i64 %413, %414
  br label %416

416:                                              ; preds = %412, %379
  %417 = phi i1 [ false, %379 ], [ %415, %412 ]
  %418 = zext i1 %417 to i32
  %419 = call i32 @CHECK(i32 %418)
  %420 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 3, i32* %420, align 16
  %421 = load i32*, i32** %3, align 8
  %422 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %423 = call i32 @cap_pwd_limit_users(i32* %421, i8** null, i32 0, i32* %422, i32 1)
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %429

425:                                              ; preds = %416
  %426 = load i64, i64* @errno, align 8
  %427 = load i64, i64* @ENOTCAPABLE, align 8
  %428 = icmp eq i64 %426, %427
  br label %429

429:                                              ; preds = %425, %416
  %430 = phi i1 [ false, %416 ], [ %428, %425 ]
  %431 = zext i1 %430 to i32
  %432 = call i32 @CHECK(i32 %431)
  %433 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %433, align 16
  %434 = load i32*, i32** %3, align 8
  %435 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %436 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %437 = call i32 @runtest_users(i32* %434, i8** %435, i32* %436, i32 2)
  %438 = call i32 @CHECK(i32 %437)
  %439 = load i32*, i32** %3, align 8
  %440 = call i32 @cap_close(i32* %439)
  ret void
}

declare dso_local i32* @cap_clone(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @cap_pwd_limit_users(i32*, i8**, i32, i32*, i32) #1

declare dso_local i32 @runtest_users(i32*, i8**, i32*, i32) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
