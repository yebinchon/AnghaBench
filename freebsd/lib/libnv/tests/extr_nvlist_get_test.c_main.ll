; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_get_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_get_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..83\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nvlist/bool/true\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"nvlist/bool/false\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nvlist/number/0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nvlist/number/1\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"nvlist/number/-1\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"nvlist/number/UINT64_MAX\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"nvlist/number/INT64_MIN\00", align 1
@INT64_MIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"nvlist/number/INT64_MAX\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"nvlist/string/\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"nvlist/string/x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"nvlist/string/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"nvlist/descriptor/STDERR_FILENO\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"nvlist/binary/x\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"nvlist/binary/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"nvlist/nvlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = call i32* @nvlist_create(i32 0)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @nvlist_exists_bool(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @nvlist_add_bool(i32* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @nvlist_error(i32* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @nvlist_get_bool(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @CHECK(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @nvlist_exists_bool(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @nvlist_add_bool(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @nvlist_error(i32* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @nvlist_get_bool(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @CHECK(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @nvlist_exists_number(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @nvlist_add_number(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @nvlist_error(i32* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @nvlist_get_number(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @CHECK(i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @nvlist_exists_number(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @nvlist_add_number(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @nvlist_error(i32* %69)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @CHECK(i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @nvlist_get_number(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @CHECK(i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @nvlist_exists_number(i32* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @CHECK(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @nvlist_add_number(i32* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @nvlist_error(i32* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @CHECK(i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @nvlist_get_number(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %94 = icmp eq i32 %93, -1
  %95 = zext i1 %94 to i32
  %96 = call i32 @CHECK(i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @nvlist_exists_number(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @UINT64_MAX, align 4
  %105 = call i32 @nvlist_add_number(i32* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @nvlist_error(i32* %106)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @CHECK(i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @nvlist_get_number(i32* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i32, i32* @UINT64_MAX, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @CHECK(i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @nvlist_exists_number(i32* %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @CHECK(i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @INT64_MIN, align 4
  %125 = call i32 @nvlist_add_number(i32* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %3, align 8
  %127 = call i64 @nvlist_error(i32* %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @CHECK(i32 %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @nvlist_get_number(i32* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* @INT64_MIN, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @CHECK(i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @nvlist_exists_number(i32* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @CHECK(i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @INT64_MAX, align 4
  %145 = call i32 @nvlist_add_number(i32* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = call i64 @nvlist_error(i32* %146)
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @CHECK(i32 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @nvlist_get_number(i32* %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i32, i32* @INT64_MAX, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @CHECK(i32 %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @nvlist_exists_string(i32* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @CHECK(i32 %161)
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @nvlist_add_string(i32* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %165 = load i32*, i32** %3, align 8
  %166 = call i64 @nvlist_error(i32* %165)
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @CHECK(i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @nvlist_get_string(i32* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %172 = call i64 @strcmp(i32 %171, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @CHECK(i32 %174)
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @nvlist_exists_string(i32* %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @CHECK(i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @nvlist_add_string(i32* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %184 = load i32*, i32** %3, align 8
  %185 = call i64 @nvlist_error(i32* %184)
  %186 = icmp eq i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @CHECK(i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @nvlist_get_string(i32* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %191 = call i64 @strcmp(i32 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @CHECK(i32 %193)
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @nvlist_exists_string(i32* %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 @CHECK(i32 %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @nvlist_add_string(i32* %201, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %203 = load i32*, i32** %3, align 8
  %204 = call i64 @nvlist_error(i32* %203)
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @CHECK(i32 %206)
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @nvlist_get_string(i32* %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %210 = call i64 @strcmp(i32 %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @CHECK(i32 %212)
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @nvlist_exists_descriptor(i32* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i32 @CHECK(i32 %218)
  %220 = load i32*, i32** %3, align 8
  %221 = load i32, i32* @STDERR_FILENO, align 4
  %222 = call i32 @nvlist_add_descriptor(i32* %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %221)
  %223 = load i32*, i32** %3, align 8
  %224 = call i64 @nvlist_error(i32* %223)
  %225 = icmp eq i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @CHECK(i32 %226)
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @nvlist_get_descriptor(i32* %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %230 = call i32 @fd_is_valid(i32 %229)
  %231 = call i32 @CHECK(i32 %230)
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @nvlist_exists_binary(i32* %232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = call i32 @CHECK(i32 %236)
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @nvlist_add_binary(i32* %238, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %240 = load i32*, i32** %3, align 8
  %241 = call i64 @nvlist_error(i32* %240)
  %242 = icmp eq i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @CHECK(i32 %243)
  %245 = load i32*, i32** %3, align 8
  %246 = call i32 @nvlist_get_binary(i32* %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* null)
  %247 = call i64 @memcmp(i32 %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %248 = icmp eq i64 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @CHECK(i32 %249)
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @nvlist_get_binary(i32* %251, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* %4)
  %253 = call i64 @memcmp(i32 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %254 = icmp eq i64 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @CHECK(i32 %255)
  %257 = load i64, i64* %4, align 8
  %258 = icmp eq i64 %257, 1
  %259 = zext i1 %258 to i32
  %260 = call i32 @CHECK(i32 %259)
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @nvlist_exists_binary(i32* %261, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = call i32 @CHECK(i32 %265)
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 @nvlist_add_binary(i32* %267, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %269 = load i32*, i32** %3, align 8
  %270 = call i64 @nvlist_error(i32* %269)
  %271 = icmp eq i64 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @CHECK(i32 %272)
  %274 = load i32*, i32** %3, align 8
  %275 = call i32 @nvlist_get_binary(i32* %274, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* null)
  %276 = call i64 @memcmp(i32 %275, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @CHECK(i32 %278)
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @nvlist_get_binary(i32* %280, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* %4)
  %282 = call i64 @memcmp(i32 %281, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %283 = icmp eq i64 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 @CHECK(i32 %284)
  %286 = load i64, i64* %4, align 8
  %287 = icmp eq i64 %286, 27
  %288 = zext i1 %287 to i32
  %289 = call i32 @CHECK(i32 %288)
  %290 = load i32*, i32** %3, align 8
  %291 = call i32 @nvlist_exists_nvlist(i32* %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = call i32 @CHECK(i32 %294)
  %296 = load i32*, i32** %3, align 8
  %297 = load i32*, i32** %3, align 8
  %298 = call i32 @nvlist_add_nvlist(i32* %296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32* %297)
  %299 = load i32*, i32** %3, align 8
  %300 = call i64 @nvlist_error(i32* %299)
  %301 = icmp eq i64 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @CHECK(i32 %302)
  %304 = load i32*, i32** %3, align 8
  %305 = call i32* @nvlist_get_nvlist(i32* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32* %305, i32** %2, align 8
  %306 = load i32*, i32** %2, align 8
  %307 = call i32 @nvlist_get_bool(i32* %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %308 = icmp eq i32 %307, 1
  %309 = zext i1 %308 to i32
  %310 = call i32 @CHECK(i32 %309)
  %311 = load i32*, i32** %2, align 8
  %312 = call i32 @nvlist_get_bool(i32* %311, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %313 = icmp eq i32 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @CHECK(i32 %314)
  %316 = load i32*, i32** %2, align 8
  %317 = call i32 @nvlist_get_number(i32* %316, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %318 = icmp eq i32 %317, 0
  %319 = zext i1 %318 to i32
  %320 = call i32 @CHECK(i32 %319)
  %321 = load i32*, i32** %2, align 8
  %322 = call i32 @nvlist_get_number(i32* %321, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %323 = icmp eq i32 %322, 1
  %324 = zext i1 %323 to i32
  %325 = call i32 @CHECK(i32 %324)
  %326 = load i32*, i32** %2, align 8
  %327 = call i32 @nvlist_get_number(i32* %326, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %328 = icmp eq i32 %327, -1
  %329 = zext i1 %328 to i32
  %330 = call i32 @CHECK(i32 %329)
  %331 = load i32*, i32** %2, align 8
  %332 = call i32 @nvlist_get_number(i32* %331, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %333 = load i32, i32* @UINT64_MAX, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = call i32 @CHECK(i32 %335)
  %337 = load i32*, i32** %2, align 8
  %338 = call i32 @nvlist_get_number(i32* %337, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %339 = load i32, i32* @INT64_MIN, align 4
  %340 = icmp eq i32 %338, %339
  %341 = zext i1 %340 to i32
  %342 = call i32 @CHECK(i32 %341)
  %343 = load i32*, i32** %2, align 8
  %344 = call i32 @nvlist_get_number(i32* %343, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %345 = load i32, i32* @INT64_MAX, align 4
  %346 = icmp eq i32 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @CHECK(i32 %347)
  %349 = load i32*, i32** %2, align 8
  %350 = call i32 @nvlist_get_string(i32* %349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %351 = call i64 @strcmp(i32 %350, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %352 = icmp eq i64 %351, 0
  %353 = zext i1 %352 to i32
  %354 = call i32 @CHECK(i32 %353)
  %355 = load i32*, i32** %2, align 8
  %356 = call i32 @nvlist_get_string(i32* %355, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %357 = call i64 @strcmp(i32 %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %358 = icmp eq i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @CHECK(i32 %359)
  %361 = load i32*, i32** %2, align 8
  %362 = call i32 @nvlist_get_string(i32* %361, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %363 = call i64 @strcmp(i32 %362, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %364 = icmp eq i64 %363, 0
  %365 = zext i1 %364 to i32
  %366 = call i32 @CHECK(i32 %365)
  %367 = load i32*, i32** %2, align 8
  %368 = call i32 @nvlist_get_binary(i32* %367, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* null)
  %369 = call i64 @memcmp(i32 %368, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %370 = icmp eq i64 %369, 0
  %371 = zext i1 %370 to i32
  %372 = call i32 @CHECK(i32 %371)
  %373 = load i32*, i32** %2, align 8
  %374 = call i32 @nvlist_get_binary(i32* %373, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* %4)
  %375 = call i64 @memcmp(i32 %374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %376 = icmp eq i64 %375, 0
  %377 = zext i1 %376 to i32
  %378 = call i32 @CHECK(i32 %377)
  %379 = load i64, i64* %4, align 8
  %380 = icmp eq i64 %379, 1
  %381 = zext i1 %380 to i32
  %382 = call i32 @CHECK(i32 %381)
  %383 = load i32*, i32** %2, align 8
  %384 = call i32 @nvlist_get_binary(i32* %383, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* null)
  %385 = call i64 @memcmp(i32 %384, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %386 = icmp eq i64 %385, 0
  %387 = zext i1 %386 to i32
  %388 = call i32 @CHECK(i32 %387)
  %389 = load i32*, i32** %2, align 8
  %390 = call i32 @nvlist_get_binary(i32* %389, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* %4)
  %391 = call i64 @memcmp(i32 %390, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %392 = icmp eq i64 %391, 0
  %393 = zext i1 %392 to i32
  %394 = call i32 @CHECK(i32 %393)
  %395 = load i64, i64* %4, align 8
  %396 = icmp eq i64 %395, 27
  %397 = zext i1 %396 to i32
  %398 = call i32 @CHECK(i32 %397)
  %399 = load i32*, i32** %3, align 8
  %400 = call i32 @nvlist_get_bool(i32* %399, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %401 = icmp eq i32 %400, 1
  %402 = zext i1 %401 to i32
  %403 = call i32 @CHECK(i32 %402)
  %404 = load i32*, i32** %3, align 8
  %405 = call i32 @nvlist_get_bool(i32* %404, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %406 = icmp eq i32 %405, 0
  %407 = zext i1 %406 to i32
  %408 = call i32 @CHECK(i32 %407)
  %409 = load i32*, i32** %3, align 8
  %410 = call i32 @nvlist_get_number(i32* %409, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %411 = icmp eq i32 %410, 0
  %412 = zext i1 %411 to i32
  %413 = call i32 @CHECK(i32 %412)
  %414 = load i32*, i32** %3, align 8
  %415 = call i32 @nvlist_get_number(i32* %414, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %416 = icmp eq i32 %415, 1
  %417 = zext i1 %416 to i32
  %418 = call i32 @CHECK(i32 %417)
  %419 = load i32*, i32** %3, align 8
  %420 = call i32 @nvlist_get_number(i32* %419, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %421 = icmp eq i32 %420, -1
  %422 = zext i1 %421 to i32
  %423 = call i32 @CHECK(i32 %422)
  %424 = load i32*, i32** %3, align 8
  %425 = call i32 @nvlist_get_number(i32* %424, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %426 = load i32, i32* @UINT64_MAX, align 4
  %427 = icmp eq i32 %425, %426
  %428 = zext i1 %427 to i32
  %429 = call i32 @CHECK(i32 %428)
  %430 = load i32*, i32** %3, align 8
  %431 = call i32 @nvlist_get_number(i32* %430, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %432 = load i32, i32* @INT64_MIN, align 4
  %433 = icmp eq i32 %431, %432
  %434 = zext i1 %433 to i32
  %435 = call i32 @CHECK(i32 %434)
  %436 = load i32*, i32** %3, align 8
  %437 = call i32 @nvlist_get_number(i32* %436, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %438 = load i32, i32* @INT64_MAX, align 4
  %439 = icmp eq i32 %437, %438
  %440 = zext i1 %439 to i32
  %441 = call i32 @CHECK(i32 %440)
  %442 = load i32*, i32** %3, align 8
  %443 = call i32 @nvlist_get_string(i32* %442, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %444 = call i64 @strcmp(i32 %443, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %445 = icmp eq i64 %444, 0
  %446 = zext i1 %445 to i32
  %447 = call i32 @CHECK(i32 %446)
  %448 = load i32*, i32** %3, align 8
  %449 = call i32 @nvlist_get_string(i32* %448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %450 = call i64 @strcmp(i32 %449, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %451 = icmp eq i64 %450, 0
  %452 = zext i1 %451 to i32
  %453 = call i32 @CHECK(i32 %452)
  %454 = load i32*, i32** %3, align 8
  %455 = call i32 @nvlist_get_string(i32* %454, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %456 = call i64 @strcmp(i32 %455, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %457 = icmp eq i64 %456, 0
  %458 = zext i1 %457 to i32
  %459 = call i32 @CHECK(i32 %458)
  %460 = load i32*, i32** %3, align 8
  %461 = call i32 @nvlist_get_descriptor(i32* %460, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %462 = call i32 @fd_is_valid(i32 %461)
  %463 = call i32 @CHECK(i32 %462)
  %464 = load i32*, i32** %3, align 8
  %465 = call i32 @nvlist_get_binary(i32* %464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* null)
  %466 = call i64 @memcmp(i32 %465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %467 = icmp eq i64 %466, 0
  %468 = zext i1 %467 to i32
  %469 = call i32 @CHECK(i32 %468)
  %470 = load i32*, i32** %3, align 8
  %471 = call i32 @nvlist_get_binary(i32* %470, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64* %4)
  %472 = call i64 @memcmp(i32 %471, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %473 = icmp eq i64 %472, 0
  %474 = zext i1 %473 to i32
  %475 = call i32 @CHECK(i32 %474)
  %476 = load i64, i64* %4, align 8
  %477 = icmp eq i64 %476, 1
  %478 = zext i1 %477 to i32
  %479 = call i32 @CHECK(i32 %478)
  %480 = load i32*, i32** %3, align 8
  %481 = call i32 @nvlist_get_binary(i32* %480, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* null)
  %482 = call i64 @memcmp(i32 %481, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %483 = icmp eq i64 %482, 0
  %484 = zext i1 %483 to i32
  %485 = call i32 @CHECK(i32 %484)
  %486 = load i32*, i32** %3, align 8
  %487 = call i32 @nvlist_get_binary(i32* %486, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64* %4)
  %488 = call i64 @memcmp(i32 %487, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 27)
  %489 = icmp eq i64 %488, 0
  %490 = zext i1 %489 to i32
  %491 = call i32 @CHECK(i32 %490)
  %492 = load i64, i64* %4, align 8
  %493 = icmp eq i64 %492, 27
  %494 = zext i1 %493 to i32
  %495 = call i32 @CHECK(i32 %494)
  %496 = load i32*, i32** %3, align 8
  %497 = call i32 @nvlist_destroy(i32* %496)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @nvlist_exists_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_add_bool(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_get_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_add_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @fd_is_valid(i32) #1

declare dso_local i32 @nvlist_get_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
