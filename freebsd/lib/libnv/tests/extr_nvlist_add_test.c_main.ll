; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_add_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_add_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..94\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"nvlist/null\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"nvlist/bool/true\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"nvlist/bool/false\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nvlist/number/0\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nvlist/number/1\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"nvlist/number/-1\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"nvlist/number/UINT64_MAX\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"nvlist/number/INT64_MIN\00", align 1
@INT64_MIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"nvlist/number/INT64_MAX\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"nvlist/string/\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"nvlist/string/x\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"nvlist/string/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"nvlist/stringf/\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"nvlist/stringf/x\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"nvlist/stringf/666Xabc\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%d%c%s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"nvlist/descriptor/STDERR_FILENO\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"nvlist/binary/x\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"nvlist/binary/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"nvlist/nvlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = call i32* @nvlist_create(i32 0)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @nvlist_exists_null(i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @CHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @nvlist_add_null(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @nvlist_error(i32* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @CHECK(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @nvlist_exists_null(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @CHECK(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @nvlist_exists_bool(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @nvlist_add_bool(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @nvlist_error(i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @nvlist_exists_bool(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @CHECK(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @nvlist_exists_bool(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @CHECK(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @nvlist_add_bool(i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @nvlist_error(i32* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @nvlist_exists_bool(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @CHECK(i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @nvlist_exists_number(i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @CHECK(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @nvlist_add_number(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @nvlist_error(i32* %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @nvlist_exists_number(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @CHECK(i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @nvlist_exists_number(i32* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @nvlist_add_number(i32* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @nvlist_error(i32* %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @CHECK(i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @nvlist_exists_number(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %85 = call i32 @CHECK(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @nvlist_exists_number(i32* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @CHECK(i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @nvlist_add_number(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %94 = load i32*, i32** %3, align 8
  %95 = call i64 @nvlist_error(i32* %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @CHECK(i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @nvlist_exists_number(i32* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @CHECK(i32 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @nvlist_exists_number(i32* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @CHECK(i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* @UINT64_MAX, align 4
  %110 = call i32 @nvlist_add_number(i32* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i64 @nvlist_error(i32* %111)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @CHECK(i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @nvlist_exists_number(i32* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @nvlist_exists_number(i32* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @CHECK(i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* @INT64_MIN, align 4
  %127 = call i32 @nvlist_add_number(i32* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @nvlist_error(i32* %128)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @nvlist_exists_number(i32* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %135 = call i32 @CHECK(i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @nvlist_exists_number(i32* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @CHECK(i32 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @INT64_MAX, align 4
  %144 = call i32 @nvlist_add_number(i32* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i64 @nvlist_error(i32* %145)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @CHECK(i32 %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @nvlist_exists_number(i32* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %152 = call i32 @CHECK(i32 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @nvlist_exists_string(i32* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @CHECK(i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @nvlist_add_string(i32* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %161 = load i32*, i32** %3, align 8
  %162 = call i64 @nvlist_error(i32* %161)
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @CHECK(i32 %164)
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @nvlist_exists_string(i32* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %168 = call i32 @CHECK(i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @nvlist_exists_string(i32* %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @CHECK(i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @nvlist_add_string(i32* %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %177 = load i32*, i32** %3, align 8
  %178 = call i64 @nvlist_error(i32* %177)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @CHECK(i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @nvlist_exists_string(i32* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %184 = call i32 @CHECK(i32 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @nvlist_exists_string(i32* %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @CHECK(i32 %189)
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @nvlist_add_string(i32* %191, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %193 = load i32*, i32** %3, align 8
  %194 = call i64 @nvlist_error(i32* %193)
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @CHECK(i32 %196)
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @nvlist_exists_string(i32* %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %200 = call i32 @CHECK(i32 %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @nvlist_exists_string(i32* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i32 @CHECK(i32 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 (i32*, i8*, i8*, ...) @nvlist_add_stringf(i32* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %209 = load i32*, i32** %3, align 8
  %210 = call i64 @nvlist_error(i32* %209)
  %211 = icmp eq i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @CHECK(i32 %212)
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @nvlist_exists_string(i32* %214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %216 = call i32 @CHECK(i32 %215)
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @nvlist_exists_string(i32* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i32 @CHECK(i32 %221)
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 (i32*, i8*, i8*, ...) @nvlist_add_stringf(i32* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %225 = load i32*, i32** %3, align 8
  %226 = call i64 @nvlist_error(i32* %225)
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @CHECK(i32 %228)
  %230 = load i32*, i32** %3, align 8
  %231 = call i32 @nvlist_exists_string(i32* %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %232 = call i32 @CHECK(i32 %231)
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @nvlist_exists_string(i32* %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i32 @CHECK(i32 %237)
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 (i32*, i8*, i8*, ...) @nvlist_add_stringf(i32* %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 666, i32 88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %241 = load i32*, i32** %3, align 8
  %242 = call i64 @nvlist_error(i32* %241)
  %243 = icmp eq i64 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @CHECK(i32 %244)
  %246 = load i32*, i32** %3, align 8
  %247 = call i32 @nvlist_exists_string(i32* %246, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %248 = call i32 @CHECK(i32 %247)
  %249 = load i32*, i32** %3, align 8
  %250 = call i32 @nvlist_exists_descriptor(i32* %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @CHECK(i32 %253)
  %255 = load i32*, i32** %3, align 8
  %256 = load i32, i32* @STDERR_FILENO, align 4
  %257 = call i32 @nvlist_add_descriptor(i32* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %256)
  %258 = load i32*, i32** %3, align 8
  %259 = call i64 @nvlist_error(i32* %258)
  %260 = icmp eq i64 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @CHECK(i32 %261)
  %263 = load i32*, i32** %3, align 8
  %264 = call i32 @nvlist_exists_descriptor(i32* %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %265 = call i32 @CHECK(i32 %264)
  %266 = load i32*, i32** %3, align 8
  %267 = call i32 @nvlist_exists_binary(i32* %266, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %268 = icmp ne i32 %267, 0
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = call i32 @CHECK(i32 %270)
  %272 = load i32*, i32** %3, align 8
  %273 = call i32 @nvlist_add_binary(i32* %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %274 = load i32*, i32** %3, align 8
  %275 = call i64 @nvlist_error(i32* %274)
  %276 = icmp eq i64 %275, 0
  %277 = zext i1 %276 to i32
  %278 = call i32 @CHECK(i32 %277)
  %279 = load i32*, i32** %3, align 8
  %280 = call i32 @nvlist_exists_binary(i32* %279, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %281 = call i32 @CHECK(i32 %280)
  %282 = load i32*, i32** %3, align 8
  %283 = call i32 @nvlist_exists_binary(i32* %282, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = call i32 @CHECK(i32 %286)
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @nvlist_add_binary(i32* %288, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 27)
  %290 = load i32*, i32** %3, align 8
  %291 = call i64 @nvlist_error(i32* %290)
  %292 = icmp eq i64 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i32 @CHECK(i32 %293)
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @nvlist_exists_binary(i32* %295, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %297 = call i32 @CHECK(i32 %296)
  %298 = load i32*, i32** %3, align 8
  %299 = call i32 @nvlist_exists_nvlist(i32* %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = call i32 @CHECK(i32 %302)
  %304 = load i32*, i32** %3, align 8
  %305 = load i32*, i32** %3, align 8
  %306 = call i32 @nvlist_add_nvlist(i32* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32* %305)
  %307 = load i32*, i32** %3, align 8
  %308 = call i64 @nvlist_error(i32* %307)
  %309 = icmp eq i64 %308, 0
  %310 = zext i1 %309 to i32
  %311 = call i32 @CHECK(i32 %310)
  %312 = load i32*, i32** %3, align 8
  %313 = call i32 @nvlist_exists_nvlist(i32* %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %314 = call i32 @CHECK(i32 %313)
  %315 = load i32*, i32** %3, align 8
  %316 = call i32 @nvlist_exists_null(i32* %315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %317 = call i32 @CHECK(i32 %316)
  %318 = load i32*, i32** %3, align 8
  %319 = call i32 @nvlist_exists_bool(i32* %318, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %320 = call i32 @CHECK(i32 %319)
  %321 = load i32*, i32** %3, align 8
  %322 = call i32 @nvlist_exists_bool(i32* %321, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %323 = call i32 @CHECK(i32 %322)
  %324 = load i32*, i32** %3, align 8
  %325 = call i32 @nvlist_exists_number(i32* %324, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %326 = call i32 @CHECK(i32 %325)
  %327 = load i32*, i32** %3, align 8
  %328 = call i32 @nvlist_exists_number(i32* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %329 = call i32 @CHECK(i32 %328)
  %330 = load i32*, i32** %3, align 8
  %331 = call i32 @nvlist_exists_number(i32* %330, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %332 = call i32 @CHECK(i32 %331)
  %333 = load i32*, i32** %3, align 8
  %334 = call i32 @nvlist_exists_number(i32* %333, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %335 = call i32 @CHECK(i32 %334)
  %336 = load i32*, i32** %3, align 8
  %337 = call i32 @nvlist_exists_number(i32* %336, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %338 = call i32 @CHECK(i32 %337)
  %339 = load i32*, i32** %3, align 8
  %340 = call i32 @nvlist_exists_number(i32* %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %341 = call i32 @CHECK(i32 %340)
  %342 = load i32*, i32** %3, align 8
  %343 = call i32 @nvlist_exists_string(i32* %342, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %344 = call i32 @CHECK(i32 %343)
  %345 = load i32*, i32** %3, align 8
  %346 = call i32 @nvlist_exists_string(i32* %345, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %347 = call i32 @CHECK(i32 %346)
  %348 = load i32*, i32** %3, align 8
  %349 = call i32 @nvlist_exists_string(i32* %348, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %350 = call i32 @CHECK(i32 %349)
  %351 = load i32*, i32** %3, align 8
  %352 = call i32 @nvlist_exists_string(i32* %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %353 = call i32 @CHECK(i32 %352)
  %354 = load i32*, i32** %3, align 8
  %355 = call i32 @nvlist_exists_string(i32* %354, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %356 = call i32 @CHECK(i32 %355)
  %357 = load i32*, i32** %3, align 8
  %358 = call i32 @nvlist_exists_string(i32* %357, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %359 = call i32 @CHECK(i32 %358)
  %360 = load i32*, i32** %3, align 8
  %361 = call i32 @nvlist_exists_descriptor(i32* %360, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %362 = call i32 @CHECK(i32 %361)
  %363 = load i32*, i32** %3, align 8
  %364 = call i32 @nvlist_exists_binary(i32* %363, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %365 = call i32 @CHECK(i32 %364)
  %366 = load i32*, i32** %3, align 8
  %367 = call i32 @nvlist_exists_binary(i32* %366, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %368 = call i32 @CHECK(i32 %367)
  %369 = load i32*, i32** %3, align 8
  %370 = call i32 @nvlist_exists_nvlist(i32* %369, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %371 = call i32 @CHECK(i32 %370)
  %372 = load i32*, i32** %3, align 8
  %373 = call i32* @nvlist_get_nvlist(i32* %372, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  store i32* %373, i32** %2, align 8
  %374 = load i32*, i32** %2, align 8
  %375 = call i32 @nvlist_exists_null(i32* %374, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %376 = call i32 @CHECK(i32 %375)
  %377 = load i32*, i32** %2, align 8
  %378 = call i32 @nvlist_exists_bool(i32* %377, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %379 = call i32 @CHECK(i32 %378)
  %380 = load i32*, i32** %2, align 8
  %381 = call i32 @nvlist_exists_bool(i32* %380, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %382 = call i32 @CHECK(i32 %381)
  %383 = load i32*, i32** %2, align 8
  %384 = call i32 @nvlist_exists_number(i32* %383, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %385 = call i32 @CHECK(i32 %384)
  %386 = load i32*, i32** %2, align 8
  %387 = call i32 @nvlist_exists_number(i32* %386, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %388 = call i32 @CHECK(i32 %387)
  %389 = load i32*, i32** %2, align 8
  %390 = call i32 @nvlist_exists_number(i32* %389, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %391 = call i32 @CHECK(i32 %390)
  %392 = load i32*, i32** %2, align 8
  %393 = call i32 @nvlist_exists_number(i32* %392, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %394 = call i32 @CHECK(i32 %393)
  %395 = load i32*, i32** %2, align 8
  %396 = call i32 @nvlist_exists_number(i32* %395, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %397 = call i32 @CHECK(i32 %396)
  %398 = load i32*, i32** %2, align 8
  %399 = call i32 @nvlist_exists_number(i32* %398, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %400 = call i32 @CHECK(i32 %399)
  %401 = load i32*, i32** %2, align 8
  %402 = call i32 @nvlist_exists_string(i32* %401, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %403 = call i32 @CHECK(i32 %402)
  %404 = load i32*, i32** %2, align 8
  %405 = call i32 @nvlist_exists_string(i32* %404, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %406 = call i32 @CHECK(i32 %405)
  %407 = load i32*, i32** %2, align 8
  %408 = call i32 @nvlist_exists_string(i32* %407, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %409 = call i32 @CHECK(i32 %408)
  %410 = load i32*, i32** %2, align 8
  %411 = call i32 @nvlist_exists_string(i32* %410, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %412 = call i32 @CHECK(i32 %411)
  %413 = load i32*, i32** %2, align 8
  %414 = call i32 @nvlist_exists_string(i32* %413, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %415 = call i32 @CHECK(i32 %414)
  %416 = load i32*, i32** %2, align 8
  %417 = call i32 @nvlist_exists_string(i32* %416, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %418 = call i32 @CHECK(i32 %417)
  %419 = load i32*, i32** %2, align 8
  %420 = call i32 @nvlist_exists_descriptor(i32* %419, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %421 = call i32 @CHECK(i32 %420)
  %422 = load i32*, i32** %2, align 8
  %423 = call i32 @nvlist_exists_binary(i32* %422, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %424 = call i32 @CHECK(i32 %423)
  %425 = load i32*, i32** %2, align 8
  %426 = call i32 @nvlist_exists_binary(i32* %425, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %427 = call i32 @CHECK(i32 %426)
  %428 = load i32*, i32** %3, align 8
  %429 = call i32 @nvlist_destroy(i32* %428)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @nvlist_exists_null(i32*, i8*) #1

declare dso_local i32 @nvlist_add_null(i32*, i8*) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_exists_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_stringf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @nvlist_exists_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_add_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i32) #1

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
