; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_free_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_free_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1..114\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"nvlist/null\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nvlist/bool\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"nvlist/number\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"nvlist/string\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"nvlist/nvlist\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"nvlist/descriptor\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"nvlist/binary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = call i32* @nvlist_create(i32 0)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @nvlist_add_null(i32* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @nvlist_add_bool(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @nvlist_add_number(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @nvlist_add_string(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @nvlist_add_nvlist(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @STDERR_FILENO, align 4
  %18 = call i32 @nvlist_add_descriptor(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @nvlist_add_binary(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @nvlist_exists_null(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @CHECK(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @nvlist_exists_bool(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @nvlist_exists_number(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @CHECK(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @nvlist_exists_string(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @CHECK(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @nvlist_exists_nvlist(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @CHECK(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @nvlist_exists_descriptor(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i32 @CHECK(i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @nvlist_exists_binary(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %41 = call i32 @CHECK(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @nvlist_free_null(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @nvlist_exists_null(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @nvlist_exists_bool(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @CHECK(i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @nvlist_exists_number(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @nvlist_exists_string(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32 @CHECK(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @nvlist_exists_nvlist(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %61 = call i32 @CHECK(i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @nvlist_exists_descriptor(i32* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32 @CHECK(i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @nvlist_exists_binary(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %67 = call i32 @CHECK(i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @nvlist_free_bool(i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @nvlist_exists_null(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @nvlist_exists_bool(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @CHECK(i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @nvlist_exists_number(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @CHECK(i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @nvlist_exists_string(i32* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @CHECK(i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @nvlist_exists_nvlist(i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %90 = call i32 @CHECK(i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @nvlist_exists_descriptor(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %93 = call i32 @CHECK(i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @nvlist_exists_binary(i32* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %96 = call i32 @CHECK(i32 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @nvlist_free_number(i32* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @nvlist_exists_null(i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @CHECK(i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @nvlist_exists_bool(i32* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @CHECK(i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @nvlist_exists_number(i32* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @CHECK(i32 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @nvlist_exists_string(i32* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @CHECK(i32 %118)
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @nvlist_exists_nvlist(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 @CHECK(i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @nvlist_exists_descriptor(i32* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %125 = call i32 @CHECK(i32 %124)
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @nvlist_exists_binary(i32* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %128 = call i32 @CHECK(i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @nvlist_free_string(i32* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @nvlist_exists_null(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @CHECK(i32 %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @nvlist_exists_bool(i32* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @CHECK(i32 %141)
  %143 = load i32*, i32** %2, align 8
  %144 = call i32 @nvlist_exists_number(i32* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @CHECK(i32 %147)
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @nvlist_exists_string(i32* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @CHECK(i32 %153)
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @nvlist_exists_nvlist(i32* %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %157 = call i32 @CHECK(i32 %156)
  %158 = load i32*, i32** %2, align 8
  %159 = call i32 @nvlist_exists_descriptor(i32* %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %160 = call i32 @CHECK(i32 %159)
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @nvlist_exists_binary(i32* %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %163 = call i32 @CHECK(i32 %162)
  %164 = load i32*, i32** %2, align 8
  %165 = call i32 @nvlist_free_nvlist(i32* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32*, i32** %2, align 8
  %167 = call i32 @nvlist_exists_null(i32* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @CHECK(i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 @nvlist_exists_bool(i32* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @CHECK(i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = call i32 @nvlist_exists_number(i32* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @CHECK(i32 %182)
  %184 = load i32*, i32** %2, align 8
  %185 = call i32 @nvlist_exists_string(i32* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i32 @CHECK(i32 %188)
  %190 = load i32*, i32** %2, align 8
  %191 = call i32 @nvlist_exists_nvlist(i32* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 @CHECK(i32 %194)
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @nvlist_exists_descriptor(i32* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %198 = call i32 @CHECK(i32 %197)
  %199 = load i32*, i32** %2, align 8
  %200 = call i32 @nvlist_exists_binary(i32* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %201 = call i32 @CHECK(i32 %200)
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @nvlist_free_descriptor(i32* %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i32*, i32** %2, align 8
  %205 = call i32 @nvlist_exists_null(i32* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @CHECK(i32 %208)
  %210 = load i32*, i32** %2, align 8
  %211 = call i32 @nvlist_exists_bool(i32* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i32 @CHECK(i32 %214)
  %216 = load i32*, i32** %2, align 8
  %217 = call i32 @nvlist_exists_number(i32* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i32 @CHECK(i32 %220)
  %222 = load i32*, i32** %2, align 8
  %223 = call i32 @nvlist_exists_string(i32* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @CHECK(i32 %226)
  %228 = load i32*, i32** %2, align 8
  %229 = call i32 @nvlist_exists_nvlist(i32* %228, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 @CHECK(i32 %232)
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @nvlist_exists_descriptor(i32* %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 @CHECK(i32 %238)
  %240 = load i32*, i32** %2, align 8
  %241 = call i32 @nvlist_exists_binary(i32* %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i32*, i32** %2, align 8
  %244 = call i32 @nvlist_free_binary(i32* %243, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %245 = load i32*, i32** %2, align 8
  %246 = call i32 @nvlist_exists_null(i32* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @CHECK(i32 %249)
  %251 = load i32*, i32** %2, align 8
  %252 = call i32 @nvlist_exists_bool(i32* %251, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i32 @CHECK(i32 %255)
  %257 = load i32*, i32** %2, align 8
  %258 = call i32 @nvlist_exists_number(i32* %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i32 @CHECK(i32 %261)
  %263 = load i32*, i32** %2, align 8
  %264 = call i32 @nvlist_exists_string(i32* %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i32 @CHECK(i32 %267)
  %269 = load i32*, i32** %2, align 8
  %270 = call i32 @nvlist_exists_nvlist(i32* %269, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = call i32 @CHECK(i32 %273)
  %275 = load i32*, i32** %2, align 8
  %276 = call i32 @nvlist_exists_descriptor(i32* %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  %279 = zext i1 %278 to i32
  %280 = call i32 @CHECK(i32 %279)
  %281 = load i32*, i32** %2, align 8
  %282 = call i32 @nvlist_exists_binary(i32* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = call i32 @CHECK(i32 %285)
  %287 = load i32*, i32** %2, align 8
  %288 = call i32 @nvlist_empty(i32* %287)
  %289 = call i32 @CHECK(i32 %288)
  %290 = load i32*, i32** %2, align 8
  %291 = call i32 @nvlist_add_null(i32* %290, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %292 = load i32*, i32** %2, align 8
  %293 = call i32 @nvlist_add_bool(i32* %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %294 = load i32*, i32** %2, align 8
  %295 = call i32 @nvlist_add_number(i32* %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %296 = load i32*, i32** %2, align 8
  %297 = call i32 @nvlist_add_string(i32* %296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %298 = load i32*, i32** %2, align 8
  %299 = load i32*, i32** %2, align 8
  %300 = call i32 @nvlist_add_nvlist(i32* %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %299)
  %301 = load i32*, i32** %2, align 8
  %302 = load i32, i32* @STDERR_FILENO, align 4
  %303 = call i32 @nvlist_add_descriptor(i32* %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  %304 = load i32*, i32** %2, align 8
  %305 = call i32 @nvlist_add_binary(i32* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %306 = load i32*, i32** %2, align 8
  %307 = call i32 @nvlist_exists_null(i32* %306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %308 = call i32 @CHECK(i32 %307)
  %309 = load i32*, i32** %2, align 8
  %310 = call i32 @nvlist_exists_bool(i32* %309, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %311 = call i32 @CHECK(i32 %310)
  %312 = load i32*, i32** %2, align 8
  %313 = call i32 @nvlist_exists_number(i32* %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %314 = call i32 @CHECK(i32 %313)
  %315 = load i32*, i32** %2, align 8
  %316 = call i32 @nvlist_exists_string(i32* %315, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %317 = call i32 @CHECK(i32 %316)
  %318 = load i32*, i32** %2, align 8
  %319 = call i32 @nvlist_exists_nvlist(i32* %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %320 = call i32 @CHECK(i32 %319)
  %321 = load i32*, i32** %2, align 8
  %322 = call i32 @nvlist_exists_descriptor(i32* %321, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %323 = call i32 @CHECK(i32 %322)
  %324 = load i32*, i32** %2, align 8
  %325 = call i32 @nvlist_exists_binary(i32* %324, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %326 = call i32 @CHECK(i32 %325)
  %327 = load i32*, i32** %2, align 8
  %328 = call i32 @nvlist_free(i32* %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %329 = load i32*, i32** %2, align 8
  %330 = call i32 @nvlist_exists_null(i32* %329, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %331 = icmp ne i32 %330, 0
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = call i32 @CHECK(i32 %333)
  %335 = load i32*, i32** %2, align 8
  %336 = call i32 @nvlist_exists_bool(i32* %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %337 = call i32 @CHECK(i32 %336)
  %338 = load i32*, i32** %2, align 8
  %339 = call i32 @nvlist_exists_number(i32* %338, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %340 = call i32 @CHECK(i32 %339)
  %341 = load i32*, i32** %2, align 8
  %342 = call i32 @nvlist_exists_string(i32* %341, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %343 = call i32 @CHECK(i32 %342)
  %344 = load i32*, i32** %2, align 8
  %345 = call i32 @nvlist_exists_nvlist(i32* %344, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %346 = call i32 @CHECK(i32 %345)
  %347 = load i32*, i32** %2, align 8
  %348 = call i32 @nvlist_exists_descriptor(i32* %347, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %349 = call i32 @CHECK(i32 %348)
  %350 = load i32*, i32** %2, align 8
  %351 = call i32 @nvlist_exists_binary(i32* %350, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %352 = call i32 @CHECK(i32 %351)
  %353 = load i32*, i32** %2, align 8
  %354 = call i32 @nvlist_free(i32* %353, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %355 = load i32*, i32** %2, align 8
  %356 = call i32 @nvlist_exists_null(i32* %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  %360 = call i32 @CHECK(i32 %359)
  %361 = load i32*, i32** %2, align 8
  %362 = call i32 @nvlist_exists_bool(i32* %361, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %363 = icmp ne i32 %362, 0
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = call i32 @CHECK(i32 %365)
  %367 = load i32*, i32** %2, align 8
  %368 = call i32 @nvlist_exists_number(i32* %367, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %369 = call i32 @CHECK(i32 %368)
  %370 = load i32*, i32** %2, align 8
  %371 = call i32 @nvlist_exists_string(i32* %370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %372 = call i32 @CHECK(i32 %371)
  %373 = load i32*, i32** %2, align 8
  %374 = call i32 @nvlist_exists_nvlist(i32* %373, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %375 = call i32 @CHECK(i32 %374)
  %376 = load i32*, i32** %2, align 8
  %377 = call i32 @nvlist_exists_descriptor(i32* %376, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %378 = call i32 @CHECK(i32 %377)
  %379 = load i32*, i32** %2, align 8
  %380 = call i32 @nvlist_exists_binary(i32* %379, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %381 = call i32 @CHECK(i32 %380)
  %382 = load i32*, i32** %2, align 8
  %383 = call i32 @nvlist_free(i32* %382, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %384 = load i32*, i32** %2, align 8
  %385 = call i32 @nvlist_exists_null(i32* %384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %386 = icmp ne i32 %385, 0
  %387 = xor i1 %386, true
  %388 = zext i1 %387 to i32
  %389 = call i32 @CHECK(i32 %388)
  %390 = load i32*, i32** %2, align 8
  %391 = call i32 @nvlist_exists_bool(i32* %390, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = call i32 @CHECK(i32 %394)
  %396 = load i32*, i32** %2, align 8
  %397 = call i32 @nvlist_exists_number(i32* %396, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i32
  %401 = call i32 @CHECK(i32 %400)
  %402 = load i32*, i32** %2, align 8
  %403 = call i32 @nvlist_exists_string(i32* %402, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %404 = call i32 @CHECK(i32 %403)
  %405 = load i32*, i32** %2, align 8
  %406 = call i32 @nvlist_exists_nvlist(i32* %405, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %407 = call i32 @CHECK(i32 %406)
  %408 = load i32*, i32** %2, align 8
  %409 = call i32 @nvlist_exists_descriptor(i32* %408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %410 = call i32 @CHECK(i32 %409)
  %411 = load i32*, i32** %2, align 8
  %412 = call i32 @nvlist_exists_binary(i32* %411, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %413 = call i32 @CHECK(i32 %412)
  %414 = load i32*, i32** %2, align 8
  %415 = call i32 @nvlist_free(i32* %414, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %416 = load i32*, i32** %2, align 8
  %417 = call i32 @nvlist_exists_null(i32* %416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %418 = icmp ne i32 %417, 0
  %419 = xor i1 %418, true
  %420 = zext i1 %419 to i32
  %421 = call i32 @CHECK(i32 %420)
  %422 = load i32*, i32** %2, align 8
  %423 = call i32 @nvlist_exists_bool(i32* %422, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %424 = icmp ne i32 %423, 0
  %425 = xor i1 %424, true
  %426 = zext i1 %425 to i32
  %427 = call i32 @CHECK(i32 %426)
  %428 = load i32*, i32** %2, align 8
  %429 = call i32 @nvlist_exists_number(i32* %428, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %430 = icmp ne i32 %429, 0
  %431 = xor i1 %430, true
  %432 = zext i1 %431 to i32
  %433 = call i32 @CHECK(i32 %432)
  %434 = load i32*, i32** %2, align 8
  %435 = call i32 @nvlist_exists_string(i32* %434, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %436 = icmp ne i32 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = call i32 @CHECK(i32 %438)
  %440 = load i32*, i32** %2, align 8
  %441 = call i32 @nvlist_exists_nvlist(i32* %440, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %442 = call i32 @CHECK(i32 %441)
  %443 = load i32*, i32** %2, align 8
  %444 = call i32 @nvlist_exists_descriptor(i32* %443, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %445 = call i32 @CHECK(i32 %444)
  %446 = load i32*, i32** %2, align 8
  %447 = call i32 @nvlist_exists_binary(i32* %446, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %448 = call i32 @CHECK(i32 %447)
  %449 = load i32*, i32** %2, align 8
  %450 = call i32 @nvlist_free(i32* %449, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %451 = load i32*, i32** %2, align 8
  %452 = call i32 @nvlist_exists_null(i32* %451, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %453 = icmp ne i32 %452, 0
  %454 = xor i1 %453, true
  %455 = zext i1 %454 to i32
  %456 = call i32 @CHECK(i32 %455)
  %457 = load i32*, i32** %2, align 8
  %458 = call i32 @nvlist_exists_bool(i32* %457, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %459 = icmp ne i32 %458, 0
  %460 = xor i1 %459, true
  %461 = zext i1 %460 to i32
  %462 = call i32 @CHECK(i32 %461)
  %463 = load i32*, i32** %2, align 8
  %464 = call i32 @nvlist_exists_number(i32* %463, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %465 = icmp ne i32 %464, 0
  %466 = xor i1 %465, true
  %467 = zext i1 %466 to i32
  %468 = call i32 @CHECK(i32 %467)
  %469 = load i32*, i32** %2, align 8
  %470 = call i32 @nvlist_exists_string(i32* %469, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %471 = icmp ne i32 %470, 0
  %472 = xor i1 %471, true
  %473 = zext i1 %472 to i32
  %474 = call i32 @CHECK(i32 %473)
  %475 = load i32*, i32** %2, align 8
  %476 = call i32 @nvlist_exists_nvlist(i32* %475, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %477 = icmp ne i32 %476, 0
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i32
  %480 = call i32 @CHECK(i32 %479)
  %481 = load i32*, i32** %2, align 8
  %482 = call i32 @nvlist_exists_descriptor(i32* %481, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %483 = call i32 @CHECK(i32 %482)
  %484 = load i32*, i32** %2, align 8
  %485 = call i32 @nvlist_exists_binary(i32* %484, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %486 = call i32 @CHECK(i32 %485)
  %487 = load i32*, i32** %2, align 8
  %488 = call i32 @nvlist_free(i32* %487, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %489 = load i32*, i32** %2, align 8
  %490 = call i32 @nvlist_exists_null(i32* %489, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %491 = icmp ne i32 %490, 0
  %492 = xor i1 %491, true
  %493 = zext i1 %492 to i32
  %494 = call i32 @CHECK(i32 %493)
  %495 = load i32*, i32** %2, align 8
  %496 = call i32 @nvlist_exists_bool(i32* %495, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %497 = icmp ne i32 %496, 0
  %498 = xor i1 %497, true
  %499 = zext i1 %498 to i32
  %500 = call i32 @CHECK(i32 %499)
  %501 = load i32*, i32** %2, align 8
  %502 = call i32 @nvlist_exists_number(i32* %501, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %503 = icmp ne i32 %502, 0
  %504 = xor i1 %503, true
  %505 = zext i1 %504 to i32
  %506 = call i32 @CHECK(i32 %505)
  %507 = load i32*, i32** %2, align 8
  %508 = call i32 @nvlist_exists_string(i32* %507, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %509 = icmp ne i32 %508, 0
  %510 = xor i1 %509, true
  %511 = zext i1 %510 to i32
  %512 = call i32 @CHECK(i32 %511)
  %513 = load i32*, i32** %2, align 8
  %514 = call i32 @nvlist_exists_nvlist(i32* %513, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %515 = icmp ne i32 %514, 0
  %516 = xor i1 %515, true
  %517 = zext i1 %516 to i32
  %518 = call i32 @CHECK(i32 %517)
  %519 = load i32*, i32** %2, align 8
  %520 = call i32 @nvlist_exists_descriptor(i32* %519, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %521 = icmp ne i32 %520, 0
  %522 = xor i1 %521, true
  %523 = zext i1 %522 to i32
  %524 = call i32 @CHECK(i32 %523)
  %525 = load i32*, i32** %2, align 8
  %526 = call i32 @nvlist_exists_binary(i32* %525, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %527 = call i32 @CHECK(i32 %526)
  %528 = load i32*, i32** %2, align 8
  %529 = call i32 @nvlist_free(i32* %528, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %530 = load i32*, i32** %2, align 8
  %531 = call i32 @nvlist_exists_null(i32* %530, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %532 = icmp ne i32 %531, 0
  %533 = xor i1 %532, true
  %534 = zext i1 %533 to i32
  %535 = call i32 @CHECK(i32 %534)
  %536 = load i32*, i32** %2, align 8
  %537 = call i32 @nvlist_exists_bool(i32* %536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %538 = icmp ne i32 %537, 0
  %539 = xor i1 %538, true
  %540 = zext i1 %539 to i32
  %541 = call i32 @CHECK(i32 %540)
  %542 = load i32*, i32** %2, align 8
  %543 = call i32 @nvlist_exists_number(i32* %542, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %544 = icmp ne i32 %543, 0
  %545 = xor i1 %544, true
  %546 = zext i1 %545 to i32
  %547 = call i32 @CHECK(i32 %546)
  %548 = load i32*, i32** %2, align 8
  %549 = call i32 @nvlist_exists_string(i32* %548, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %550 = icmp ne i32 %549, 0
  %551 = xor i1 %550, true
  %552 = zext i1 %551 to i32
  %553 = call i32 @CHECK(i32 %552)
  %554 = load i32*, i32** %2, align 8
  %555 = call i32 @nvlist_exists_nvlist(i32* %554, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %556 = icmp ne i32 %555, 0
  %557 = xor i1 %556, true
  %558 = zext i1 %557 to i32
  %559 = call i32 @CHECK(i32 %558)
  %560 = load i32*, i32** %2, align 8
  %561 = call i32 @nvlist_exists_descriptor(i32* %560, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %562 = icmp ne i32 %561, 0
  %563 = xor i1 %562, true
  %564 = zext i1 %563 to i32
  %565 = call i32 @CHECK(i32 %564)
  %566 = load i32*, i32** %2, align 8
  %567 = call i32 @nvlist_exists_binary(i32* %566, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %568 = icmp ne i32 %567, 0
  %569 = xor i1 %568, true
  %570 = zext i1 %569 to i32
  %571 = call i32 @CHECK(i32 %570)
  %572 = load i32*, i32** %2, align 8
  %573 = call i32 @nvlist_empty(i32* %572)
  %574 = call i32 @CHECK(i32 %573)
  %575 = load i32*, i32** %2, align 8
  %576 = call i32 @nvlist_destroy(i32* %575)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_null(i32*, i8*) #1

declare dso_local i32 @nvlist_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_add_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @nvlist_exists_null(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i32 @nvlist_free_null(i32*, i8*) #1

declare dso_local i32 @nvlist_free_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_free_number(i32*, i8*) #1

declare dso_local i32 @nvlist_free_string(i32*, i8*) #1

declare dso_local i32 @nvlist_free_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_free_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_free_binary(i32*, i8*) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i32 @nvlist_free(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
