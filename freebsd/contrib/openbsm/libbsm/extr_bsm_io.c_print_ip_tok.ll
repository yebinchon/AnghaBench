; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_ip_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_ip_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"service_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"time_to_live\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"src_addr\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dest_addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32)* @print_ip_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ip_tok(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %135

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 9
  %27 = call i32 @print_mem(i32* %22, i32* %26, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @close_attr(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @open_attr(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 8
  %37 = call i32 @print_mem(i32* %32, i32* %36, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @close_attr(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @open_attr(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  %49 = call i32 @print_2_bytes(i32* %42, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @close_attr(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @open_attr(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  %61 = call i32 @print_2_bytes(i32* %54, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @close_attr(i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @open_attr(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohs(i32 %71)
  %73 = call i32 @print_2_bytes(i32* %66, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @close_attr(i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @open_attr(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = call i32 @print_mem(i32* %78, i32* %82, i32 4)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @close_attr(i32* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @open_attr(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = call i32 @print_mem(i32* %88, i32* %92, i32 4)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @close_attr(i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @open_attr(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohs(i32 %103)
  %105 = call i32 @print_2_bytes(i32* %98, i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @close_attr(i32* %106)
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @open_attr(i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @print_ip_address(i32* %110, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @close_attr(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @open_attr(i32* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @print_ip_address(i32* %121, i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @close_attr(i32* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @close_tag(i32* %130, i32 %133)
  br label %236

135:                                              ; preds = %4
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @print_delim(i32* %136, i8* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 9
  %144 = call i32 @print_mem(i32* %139, i32* %143, i32 4)
  %145 = load i32*, i32** %5, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @print_delim(i32* %145, i8* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  %153 = call i32 @print_mem(i32* %148, i32* %152, i32 4)
  %154 = load i32*, i32** %5, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @print_delim(i32* %154, i8* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ntohs(i32 %162)
  %164 = call i32 @print_2_bytes(i32* %157, i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32*, i32** %5, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @print_delim(i32* %165, i8* %166)
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ntohs(i32 %173)
  %175 = call i32 @print_2_bytes(i32* %168, i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32*, i32** %5, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @print_delim(i32* %176, i8* %177)
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ntohs(i32 %184)
  %186 = call i32 @print_2_bytes(i32* %179, i32 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32*, i32** %5, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @print_delim(i32* %187, i8* %188)
  %190 = load i32*, i32** %5, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = call i32 @print_mem(i32* %190, i32* %194, i32 4)
  %196 = load i32*, i32** %5, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @print_delim(i32* %196, i8* %197)
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  %204 = call i32 @print_mem(i32* %199, i32* %203, i32 4)
  %205 = load i32*, i32** %5, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @print_delim(i32* %205, i8* %206)
  %208 = load i32*, i32** %5, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohs(i32 %213)
  %215 = call i32 @print_2_bytes(i32* %208, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32*, i32** %5, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @print_delim(i32* %216, i8* %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @print_ip_address(i32* %219, i32 %224)
  %226 = load i32*, i32** %5, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = call i32 @print_delim(i32* %226, i8* %227)
  %229 = load i32*, i32** %5, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @print_ip_address(i32* %229, i32 %234)
  br label %236

236:                                              ; preds = %135, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_mem(i32*, i32*, i32) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_2_bytes(i32*, i32, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @print_ip_address(i32*, i32) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
