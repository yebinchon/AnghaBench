; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_move_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_move_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..52\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"nvlist/string/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nvlist/string/x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"nvlist/string/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"nvlist/descriptor/STDERR_FILENO\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"nvlist/binary/x\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"nvlist/binary/abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"nvlist/nvlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = call i32* @nvlist_create(i32 0)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @nvlist_exists_string(i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @CHECK(i32 %13)
  %15 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @nvlist_move_string(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @nvlist_error(i32* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @nvlist_exists_string(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @nvlist_get_string(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i8* %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @CHECK(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @nvlist_exists_string(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @CHECK(i32 %41)
  %43 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @CHECK(i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @nvlist_move_string(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @nvlist_error(i32* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @nvlist_exists_string(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @CHECK(i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i8* @nvlist_get_string(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i8* %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @CHECK(i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @nvlist_exists_string(i32* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @CHECK(i32 %69)
  %71 = call i8* @strdup(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i8* %71, i8** %4, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @nvlist_move_string(i32* %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @nvlist_error(i32* %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @CHECK(i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @nvlist_exists_string(i32* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 @CHECK(i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i8* @nvlist_get_string(i32* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp eq i8* %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @nvlist_exists_descriptor(i32* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @CHECK(i32 %97)
  %99 = load i32, i32* @STDERR_FILENO, align 4
  %100 = call i32 @dup(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp sge i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @CHECK(i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @nvlist_move_descriptor(i32* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @nvlist_error(i32* %108)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @CHECK(i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @nvlist_exists_descriptor(i32* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 @CHECK(i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @nvlist_get_descriptor(i32* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp eq i32 %116, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @CHECK(i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @nvlist_exists_binary(i32* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @CHECK(i32 %126)
  %128 = call i8* @malloc(i32 1)
  store i8* %128, i8** %4, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = icmp ne i8* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @memcpy(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %135 = load i32*, i32** %3, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @nvlist_move_binary(i32* %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %136, i32 1)
  %138 = load i32*, i32** %3, align 8
  %139 = call i64 @nvlist_error(i32* %138)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @CHECK(i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @nvlist_exists_binary(i32* %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %145 = call i32 @CHECK(i32 %144)
  %146 = load i8*, i8** %4, align 8
  %147 = load i32*, i32** %3, align 8
  %148 = call i8* @nvlist_get_binary(i32* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64* null)
  %149 = icmp eq i8* %146, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @CHECK(i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = load i32*, i32** %3, align 8
  %154 = call i8* @nvlist_get_binary(i32* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64* %5)
  %155 = icmp eq i8* %152, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @CHECK(i32 %156)
  %158 = load i64, i64* %5, align 8
  %159 = icmp eq i64 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i32 @CHECK(i32 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @nvlist_exists_binary(i32* %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @CHECK(i32 %166)
  %168 = call i8* @malloc(i32 27)
  store i8* %168, i8** %4, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = icmp ne i8* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 @CHECK(i32 %171)
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 @memcpy(i8* %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 27)
  %175 = load i32*, i32** %3, align 8
  %176 = load i8*, i8** %4, align 8
  %177 = call i32 @nvlist_move_binary(i32* %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %176, i32 27)
  %178 = load i32*, i32** %3, align 8
  %179 = call i64 @nvlist_error(i32* %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @CHECK(i32 %181)
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @nvlist_exists_binary(i32* %183, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %185 = call i32 @CHECK(i32 %184)
  %186 = load i8*, i8** %4, align 8
  %187 = load i32*, i32** %3, align 8
  %188 = call i8* @nvlist_get_binary(i32* %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64* null)
  %189 = icmp eq i8* %186, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @CHECK(i32 %190)
  %192 = load i8*, i8** %4, align 8
  %193 = load i32*, i32** %3, align 8
  %194 = call i8* @nvlist_get_binary(i32* %193, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64* %5)
  %195 = icmp eq i8* %192, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @CHECK(i32 %196)
  %198 = load i64, i64* %5, align 8
  %199 = icmp eq i64 %198, 27
  %200 = zext i1 %199 to i32
  %201 = call i32 @CHECK(i32 %200)
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @nvlist_exists_nvlist(i32* %202, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @CHECK(i32 %206)
  %208 = load i32*, i32** %3, align 8
  %209 = call i8* @nvlist_clone(i32* %208)
  store i8* %209, i8** %4, align 8
  %210 = load i8*, i8** %4, align 8
  %211 = icmp ne i8* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @CHECK(i32 %212)
  %214 = load i32*, i32** %3, align 8
  %215 = load i8*, i8** %4, align 8
  %216 = call i32 @nvlist_move_nvlist(i32* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %215)
  %217 = load i32*, i32** %3, align 8
  %218 = call i64 @nvlist_error(i32* %217)
  %219 = icmp eq i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @CHECK(i32 %220)
  %222 = load i32*, i32** %3, align 8
  %223 = call i32 @nvlist_exists_nvlist(i32* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %224 = call i32 @CHECK(i32 %223)
  %225 = load i8*, i8** %4, align 8
  %226 = load i32*, i32** %3, align 8
  %227 = call i8* @nvlist_get_nvlist(i32* %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %228 = icmp eq i8* %225, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @CHECK(i32 %229)
  %231 = load i32*, i32** %3, align 8
  %232 = call i32 @nvlist_exists_string(i32* %231, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %233 = call i32 @CHECK(i32 %232)
  %234 = load i32*, i32** %3, align 8
  %235 = call i32 @nvlist_exists_string(i32* %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %236 = call i32 @CHECK(i32 %235)
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @nvlist_exists_string(i32* %237, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %239 = call i32 @CHECK(i32 %238)
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @nvlist_exists_descriptor(i32* %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 @nvlist_exists_binary(i32* %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %245 = call i32 @CHECK(i32 %244)
  %246 = load i32*, i32** %3, align 8
  %247 = call i32 @nvlist_exists_binary(i32* %246, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %248 = call i32 @CHECK(i32 %247)
  %249 = load i32*, i32** %3, align 8
  %250 = call i32 @nvlist_exists_nvlist(i32* %249, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %251 = call i32 @CHECK(i32 %250)
  %252 = load i32*, i32** %3, align 8
  %253 = call i8* @nvlist_get_nvlist(i32* %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %254 = bitcast i8* %253 to i32*
  store i32* %254, i32** %2, align 8
  %255 = load i32*, i32** %2, align 8
  %256 = call i32 @nvlist_exists_string(i32* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %257 = call i32 @CHECK(i32 %256)
  %258 = load i32*, i32** %2, align 8
  %259 = call i32 @nvlist_exists_string(i32* %258, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %260 = call i32 @CHECK(i32 %259)
  %261 = load i32*, i32** %2, align 8
  %262 = call i32 @nvlist_exists_string(i32* %261, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %263 = call i32 @CHECK(i32 %262)
  %264 = load i32*, i32** %2, align 8
  %265 = call i32 @nvlist_exists_descriptor(i32* %264, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %266 = call i32 @CHECK(i32 %265)
  %267 = load i32*, i32** %2, align 8
  %268 = call i32 @nvlist_exists_binary(i32* %267, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %269 = call i32 @CHECK(i32 %268)
  %270 = load i32*, i32** %2, align 8
  %271 = call i32 @nvlist_exists_binary(i32* %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %272 = call i32 @CHECK(i32 %271)
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @nvlist_destroy(i32* %273)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @nvlist_move_string(i32*, i8*, i8*) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_descriptor(i32*, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @nvlist_move_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nvlist_move_binary(i32*, i8*, i8*, i32) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_clone(i32*) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i8*) #1

declare dso_local i8* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
